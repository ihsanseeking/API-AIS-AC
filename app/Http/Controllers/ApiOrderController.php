<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;
		use Curl;
		//use Illuminate\Support\Facades\DB;
define('FIREBASE_API_KEY', 'AAAAY6M1xWk:APA91bGPyB7pEdVkqk6UCT4dEqqbT7rAGgmWyGxHxlv1ZZcq3NkraLMlZNZLo0sxwirEipUOrfwNrb5iLCfEpM-WD1yhuA6-WzsG8saqpVr125dHndOcJm6EPuwV7QmsEB5wiyvu2Ohf');
		class ApiOrderController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "order";
				$this->permalink   = "order";
				$this->method_type = "post";
		    }


		    public function hook_before(&$postdata) {



		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
				$config=[];
				$config['content'] = "adaw";
				$config['to'] = "adaw.com";
				$config['id_cms_users'] = [1];
				$test = CRUDBooster::sendNotification($config);
				//echo $test;

		        //This method will be execute after run the main process
				//This method will be execute before run the main process
				$res = array();
				$payload = array();
				$payload['team'] = 'India';
				$payload['score'] = '5.6';
				$res['data']['title'] = "Pesanan diterima";
				$res['data']['is_background'] = false;
				$res['data']['message'] = 'klik untuk ditel';
				$res['data']['image'] = 'https://zestblog.files.wordpress.com/2008/03/118.jpg';
				$res['data']['payload'] = $payload;
				$res['data']['timestamp'] = date('Y-m-d G:i:s');
				$res['data']['nama'] = "Sukiyem";
				$res['data']['total'] = "540000";
				$res['data']['address'] = $postdata['service_location'];
				$res['data']['lat'] = $postdata['latitude'];
				$res['data']['lon'] = $postdata['longitude'];

				$res['data']['car'] = $postdata['car_manufacture'];
				$res['data']['carType'] = $postdata['car_manufacture_type'];
				$res['data']['carYear'] = $postdata['car_year'];
				// echo "customer id ".$postdata['customer_id'];



				//
				// $url = $curl->buildUrl('https://fcm.googleapis.com/fcm/send', ['s' => 'curl']);
				// $request = $curl->newRequest('post', $url, json_encode($fields))
				// 	->setHeader('Authorization: key=', FIREBASE_API_KEY)
				// 	->setHeader('Content-Type: application/json')
				// 	->setOption(CURLOPT_RETURNTRANSFER, true)
				// 	->setOption(CURLOPT_SSL_VERIFYPEER, false);
				//
				// $response = $request->send();
				// echo FIREBASE_API_KEY;
				$headers = array(
					'Authorization: key=' . FIREBASE_API_KEY,
					'Content-Type: application/json'
				);


				$batasUtara = floatval($postdata['latitude']) +  0.04521198;
				$batasTimur = floatval($postdata['longitude']) +  0.04521198;
				$batasjarak = 0.04521198;
				//echo $batasjarak;
				$query = "cast(bengkel.longitude as decimal(32,8)) < (cast('".$postdata['longitude']."' as Decimal(32,8)) + ".$batasjarak.") and cast(bengkel.longitude as decimal(32,8)) > (cast('".$postdata['longitude']."' as Decimal(32,8)) - ".$batasjarak.") and cast(bengkel.latitude as decimal(32,8)) < (cast('".$postdata['latitude']."' as Decimal(32,8)) + ".$batasjarak.") and cast(bengkel.latitude as decimal(32,8)) > (cast('".$postdata['latitude']."' as Decimal(32,8)) - ".$batasjarak.")";
				//echo $query;
				$bengkels =
				DB::table('bengkel')->whereRaw("cast(bengkel.longitude as decimal(32,8)) < (cast('".$postdata['longitude']."' as Decimal(32,8)) + ".$batasjarak.") and cast(bengkel.longitude as decimal(32,8)) > (cast('".$postdata['longitude']."' as Decimal(32,8)) - ".$batasjarak.") and cast(bengkel.latitude as decimal(32,8)) < (cast('".$postdata['latitude']."' as Decimal(32,8)) + ".$batasjarak.") and cast(bengkel.latitude as decimal(32,8)) > (cast('".$postdata['latitude']."' as Decimal(32,8)) - ".$batasjarak.")")->get();
				$res['data']['lat'] = $postdata['latitude'];
				$res['data']['lon'] = $postdata['longitude'];

				$distanceShort = 0;
				$idCustomerBengkel=0;
				$bengkelShort = 0;
				$earthRadius = 6371000;
				foreach ($bengkels as $key => $bengkel) {
					# code...
					//echo $bengkel->latitude;
					$latFrom = deg2rad($postdata['latitude']);
					  $lonFrom = deg2rad($postdata['longitude']);
					  $latTo = deg2rad($bengkel->latitude);
					  $lonTo = deg2rad($bengkel->longitude);

					  $latDelta = $latTo - $latFrom;
					  $lonDelta = $lonTo - $lonFrom;

					  $angle = 2 * asin(sqrt(pow(sin($latDelta / 2), 2) +
					    cos($latFrom) * cos($latTo) * pow(sin($lonDelta / 2), 2)));
					  $distance =  $angle * $earthRadius;
						//echo "jarak : " . $distance;
						//echo "bengkel : ". $bengkel->id;
					  if ($key == 0) {
						  $distanceShort = $distance;
						  $res['data']['latBengkel'] = $bengkel->latitude;
		  				  $res['data']['lonBengkel'] = $bengkel->longitude;
						  $idCustomerBengkel = $bengkel->customer_id;
						  $bengkelShort = $bengkel;
					  } else {
						  if ($distance < $distanceShort){
							  $distanceShort = $distance;
							  $res['data']['latBengkel'] = $bengkel->latitude;
			  				  $res['data']['lonBengkel'] = $bengkel->longitude;
							  $idCustomerBengkel = $bengkel->customer_id;
							  $bengkelShort = $bengkel;
						  }
					  }
				}
				//print_r ($bengkelShort);
				//echo 'bengkel terdekat '. $bengkelShort['name'];
//
				$uidBengkel = DB::table('customer')->where('id', '=', $idCustomerBengkel)->get();
				//echo 'uid '.$uidBengkel{0};
				$customer = DB::table('customer')->where('id', '=', $postdata['customer_id'])->get();
				$res['data']['customer'] = $customer;
$res['data']['bengkel'] = $bengkelShort;
				$service = DB::table('ref_service_type')->where('id', '=', $postdata['idservice'])->get();
				$res['data']['service'] = $service{0};
				$order = $service = DB::table('order')->where('id', '=', $result['id'])->get();
				$res['data']['order'] = $order{0};
				$result['bengkel_id'] = $bengkelShort->id;
				$result['bengkel_name'] = $bengkelShort->name;
				$res['data']['uid_bengkel'] = $uidBengkel{0}->uid;
				$fields = array(
					'to' => $uidBengkel{0}->deviceid,
					'data' => $res,

				);

				//prosess ngirim notifikasi pake firebase
				$ch = curl_init();
				$url = 'https://fcm.googleapis.com/fcm/send';
				curl_setopt($ch, CURLOPT_URL, $url);

				curl_setopt($ch, CURLOPT_POST, true);
				curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

				// Disabling SSL Certificate support temporarly
				curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

				curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
				//echo json_encode($fields);
				// Execute post
				$hasil = curl_exec($ch);
				if ($hasil === FALSE) {
					die('Curl failed: ' . curl_error($ch));
				}

		    }

		}
