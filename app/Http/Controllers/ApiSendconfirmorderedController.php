<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;
define('FIREBASE_API_KEY', 'AAAAY6M1xWk:APA91bGPyB7pEdVkqk6UCT4dEqqbT7rAGgmWyGxHxlv1ZZcq3NkraLMlZNZLo0sxwirEipUOrfwNrb5iLCfEpM-WD1yhuA6-WzsG8saqpVr125dHndOcJm6EPuwV7QmsEB5wiyvu2Ohf');
		class ApiSendconfirmorderedController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "order";
				$this->permalink   = "sendconfirmordered";
				$this->method_type = "get";
		    }


		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process
				//update data harga biaya jarak, jarak
				DB::table('order')
					->where('id', $postdata['id'])
					->update(['jarak' => $postdata['jarak'], 'biaya_jarak' => $postdata['biaya_jarak']]);
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
				$res['data']['type'] = 'notifOrdered';

				$bengkelCustomer = DB::table('customer')->where('uid', '=', $postdata['uidBengkel'])->get();
				
				$order = DB::table('order')->where('id', '=', $postdata['id'])->first();
				$res['data']['lat'] = $order->latitude;
				$res['data']['lon'] = $order->longitude;
				
				$customer = DB::table('customer')->where('id', '=', $order->customer_id)->get();
				$res['data']['customer'] = $customer;

				$bengkel = DB::table('bengkel')->whereRaw('customer_id IN (select id from customer where uid = \''.$postdata['uidBengkel'].'\')')->first();
				$res['data']['bengkel'] = $bengkel;
				$service_type = DB::table('ref_service_type')->where('id', '=', $order->ref_service_id)->get();
				
				$service= DB::table('service')->where('ref_service_id', '=', $order->ref_service_id)->where('bengkel_id', '=', $bengkel->id)->get();
				
				$res['data']['service_type'] = $service_type{0};
				$res['data']['service'] = $service{0};
				
				$res['data']['order'] = $order;
				$result['bengkel_id'] = $bengkel->id;
				$result['bengkel_name'] = $bengkel->name;
				$res['data']['uid_bengkel'] = $bengkelCustomer{0}->uid;
				
				$vehicle  = DB::table('vehicle')->join('ref_vehicle_type', 'vehicle.ref_vehicle_type_id', '=', 'ref_vehicle_type.id')->join('ref_brand', 'ref_brand.id', '=', 'ref_vehicle_type.ref_brand_id')->where('vehicle.user_id', '=', $order->customer_id)->get();
				$res['data']['vehicle'] = $vehicle;
				$fields = array(
					'to' => $bengkelCustomer{0}->deviceid,
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
