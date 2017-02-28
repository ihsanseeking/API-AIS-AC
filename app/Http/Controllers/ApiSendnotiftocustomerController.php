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
				$res['data']['bengkel'] = $result;
				
				$service = DB::table('ref_service_type')->where('id', '=', $postdata['service_id'])->get();
				$res['data']['service'] = $service;
				
				$customer = DB::table('customer')->where('id', '=', $postdata[ 'customer_id'])->get();
				
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
				$result = curl_exec($ch);
				if ($result === FALSE) {
					die('Curl failed: ' . curl_error($ch));
				}

			}
			

		}