<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiHistoryBengkelController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "bengkel";        
				$this->permalink   = "history_bengkel";    
				$this->method_type = "get";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process

		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query
				//$query->join('service','service.bengkel_id','bengkel.id');
				//$query->join('bengkel','service.bengkel_id','bengkel.id');
				//$query->join('ref_service_type','service.ref_service_id','ref_service_type.id');
				
		    }

		    public function hook_after($postdata,&$result) {
		        $bengkel = $postdata['bengkel_id'];
				$customer = $postdata['customer_id'];
				
				
				$historys = DB::table('order')
				->join('customer', 'customer.id', '=', 'order.customer_id')
				->leftjoin('vehicle', 'vehicle.user_id', '=', 'order.customer_id')
				->join('service', 'service.id', '=', 'order.ref_service_id')
				->join('bengkel', 'bengkel.id', '=', 'service.bengkel_id')
				->join('ref_service_type', 'ref_service_type.id', '=', 'service.ref_service_id')
				->select(
					'order.id', 
					'order.order_date', 
					'order.order_time', 
					'order.service_date', 
					'order.service_time',
					'order.service_location', 
					'order.latitude',
					'order.longitude',
					'order.area_id',
					'order.is_emergency',
					'order.status',
					'order.method',
					'order.payment_status',
					
					'order.customer_id',
					'customer.name',
					'customer.email',
					'customer.cellphone',
					'customer.address',
					'customer.deviceid',
					'customer.ref_occupation_id',
					
					'order.ref_service_id',
					'service.hb',
					'service.hj',
					'service.jp',
					'service.bd',
					
					'service.ref_service_id',
					'ref_service_type.sub',
					'ref_service_type.name',
					'ref_service_type.wheel',
					'ref_service_type.description',
					
					'service.bengkel_id',
					'bengkel.name',
					'bengkel.address',
					'bengkel.latitude',
					'bengkel.longitude',
					'bengkel.ref_area_id',
					'bengkel.phone',
					'bengkel.fax',
					'bengkel.email',
					'bengkel.account_name',
					'bengkel.account_number'
				);
				
				if (!is_null($postdata['bengkel_id'])){
					$historys = $historys->where('service.bengkel_id', '=', $bengkel)->get();
				} elseif (!is_null($postdata['customer_id'])){
					$historys = $historys->where('order.customer_id', '=', $customer)->get();
				} else {
					$historys = $historys->get();
				}
				
				$result['data']=$historys;
				
				
				
		    }

		}