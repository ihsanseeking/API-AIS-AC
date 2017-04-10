<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiSendnotifnotgetmechanicController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {
				$this->table       = "order";
				$this->permalink   = "sendnotifnotgetmechanic";
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
				$id = $postdata['id'];
				$orders = DB::table('order')->where('id', '=', $postdata['id'])->get();
				$customers = DB::table('customer')->where('id', '=', $postdata['id_customer'])->get();

				$config=[];
				$config['content'] = "Tidak mendapatkan bengkel";
				$config['to'] = CRUDBooster::adminPath('order/detail/'.$postdata['id']);
				//$config['to'] = CRUDBooster::adminPath('order_Manual/detail/'.$postdata['id']);
				$config['id_cms_users'] = [1];
				CRUDBooster::sendNotification($config);
		    }

		}
