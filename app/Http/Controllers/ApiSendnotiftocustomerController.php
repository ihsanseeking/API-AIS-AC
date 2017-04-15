<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;
define('FIREBASE_API_KEY', 'AAAAY6M1xWk:APA91bGPyB7pEdVkqk6UCT4dEqqbT7rAGgmWyGxHxlv1ZZcq3NkraLMlZNZLo0sxwirEipUOrfwNrb5iLCfEpM-WD1yhuA6-WzsG8saqpVr125dHndOcJm6EPuwV7QmsEB5wiyvu2Ohf');
		class ApiSendnotiftocustomerController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "bengkel";
				$this->permalink   = "sendnotiftocustomer";
				$this->method_type = "post";
		    }


		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
				$res = array();
				$payload = array();
				$payload['team'] = 'India';
				$payload['score'] = '5.6';
				$res['data']['title'] = "Pesanan telah dikonfirmasi";
				$res['data']['is_background'] = false;
				$res['data']['message'] = 'klik untuk ditel';
				$res['data']['image'] = 'https://zestblog.files.wordpress.com/2008/03/118.jpg';
				$res['data']['payload'] = $payload;
				$res['data']['timestamp'] = date('Y-m-d G:i:s');
				$res['data']['type'] = 'notifBengkel';

				$bengkels = $result;
				//echo $bengkels['id'];
				$res['data']['bengkel'] = $bengkels;
				$services = DB::table('service')->where('ref_service_id', '=', $postdata['service_id'])->where('bengkel_id', '=', $bengkels['id'])->get();
				$res['data']['service'] = $services;
				//echo "service".$services;
				//echo "bengkel id ".$bengkels['id'];
				
				$servicetypes = DB::table('ref_service_type')->where('id', '=', $services{0}->ref_service_id)->get();
				$res['data']['service_type'] = $servicetypes;

				$customer = DB::table('customer')->where('id', '=', $postdata[ 'customer_id'])->get();
				
				

				$cusBengkel = DB::table('customer')->where('id', '=', $bengkels['customer_id'])->get();
				$res['data']['uid_bengkel'] = $cusBengkel{0}->uid;

				$review = DB::table('review')
					->select(
						DB::raw('(sum(penilaian)/COUNT(penilaian)) as "rating"'), 
						DB::raw('COUNT(penilaian) as "post"')
					)
					->where('review.bengkel_id', '=', $bengkels['id'])->first();
					if ($review->rating == null ){
						$review->rating = 0;
					}
				$res['data']['review']=$review;
				
				//order
				$order = DB::table('order')->where('id', '=', $postdata['order_id'])->first();
		
				$res['data']['order']=$order;

				$fields = array(
					'to' => $customer{0}->deviceid,
					'data' => $res,
				);
				$headers = array(
					'Authorization: key=' . FIREBASE_API_KEY,
					'Content-Type: application/json'
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
