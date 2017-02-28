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
				$res['data']['lama_perjalanan'] = "2";
				$res['data']['lat'] = $postdata['latitude'];
				$res['data']['lon'] = $postdata['longitude'];
				// echo "customer id ".$postdata['customer_id'];
				if ($postdata['customer_id'] == 2){
					//echo "dikirim ke e91yJPQy31A:APA91bETqSZrcWT2c1NB__xY8_cLWS0tAyIfPxH8IUg-jKT7u8L6HhdQyUJ1k1Iy8eRrPFnutsEmyvUDS2MaTv6LK0uN4yLXeIWDxye7bD8vhdL7I2jEj3Q_clbbMGd9swiflCq6kNy8";
					$res['data']['nama'] = "Sukiyem";
					// $fields = array(
					// 	'to' => 'e91yJPQy31A:APA91bETqSZrcWT2c1NB__xY8_cLWS0tAyIfPxH8IUg-jKT7u8L6HhdQyUJ1k1Iy8eRrPFnutsEmyvUDS2MaTv6LK0uN4yLXeIWDxye7bD8vhdL7I2jEj3Q_clbbMGd9swiflCq6kNy8' ,
					// 	'data' => $res,
					// );
				} else {
					$res['data']['nama'] = "sukijo";
					// $fields = array(
					// 	'to' => 'cBaiH5c_vR4:APA91bHqF_Dtiznd-PUYZPgwfwbMY4jxSHD3LrSuHw2Z0shbhFrY4wPq2xiWhEyWxIy-H3tITKs6NPLaLSU0Jyn6UONOywW-PvEXfUbrlSbhWW-Rg70CJpNFCqd9SyEopbKE43MGws90' ,
					// 	'data' => $res,
					// );
				}


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

				$bengkels =
				DB::table('bengkel')->whereRaw("cast(bengkel.longitude as decimal(32,8)) < (cast('".$postdata['longitude']."' as Decimal(32,8)) + 0.04521198) and cast(bengkel.longitude as decimal(32,8)) > (cast('".$postdata['longitude']."' as Decimal(32,8)) - 0.04521198) and cast(bengkel.latitude as decimal(32,8)) < (cast('".$postdata['latitude']."' as Decimal(32,8)) + 0.04521198) and cast(bengkel.latitude as decimal(32,8)) > (cast('".$postdata['latitude']."' as Decimal(32,8)) - 0.04521198)")->get();
				$res['data']['lat'] = $postdata['latitude'];
				$res['data']['lon'] = $postdata['longitude'];
				$distanceShort = 0;
				$idCustomerBengkel=0;
				$bengkelShort = 0;
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

					  if ($key == 0) {
						  $distanceShort = $distance;
						  $res['data']['latBengkel'] = $bengkel->latitude;
		  				  $res['data']['lonBengkel'] = $bengkel->longitude;
						  $idCustomerBengkel = $bengkel->owner_id;
						  $bengkelShort = $bengkel;
					  } else {
						  if ($distance < $distanceShort){
							  $distanceShort = $distance;
							  $res['data']['latBengkel'] = $bengkel->latitude;
			  				  $res['data']['lonBengkel'] = $bengkel->longitude;
							  $idCustomerBengkel = $bengkel->owner_id;
						  }
					  }
				}
				//echo 'jarak terdekat '. $distanceShort;

				$uidBengkel = DB::table('customer')->where('id', '=', $idCustomerBengkel)->get();
				//echo 'uid '.$uidBengkel{0};

				$fields = array(
					'to' => $uidBengkel{0}->deviceid,
					'data' => $res,
				);
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
				$result = curl_exec($ch);
				if ($result === FALSE) {
					die('Curl failed: ' . curl_error($ch));
				}

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
				if ($postdata->customer_id == 1 ){

				} else {

				}

		    }

		}
