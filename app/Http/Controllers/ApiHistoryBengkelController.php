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
		        $detail_bengkel = $postdata['detail_bengkel_order_id'];
				$detail_customer = $postdata['detail_customer_order_id'];
				$list_bengkel = $postdata['list_bengkel_id'];
				$list_customer = $postdata['list_customer_id'];
				
				
				$historys = DB::table('order')
				->join('customer', 'customer.id', '=', 'order.customer_id')
				->leftjoin('vehicle', 'vehicle.user_id', '=', 'order.customer_id')
				->leftjoin('ref_vehicle_type', 'ref_vehicle_type.id', '=', 'vehicle.ref_vehicle_type_id')
				->leftjoin('ref_brand', 'ref_brand.id', '=', 'ref_vehicle_type.ref_brand_id')
				->leftjoin('review', 'review.order_id', '=' ,'order.id')
				->join('service', 'service.id', '=', 'order.ref_service_id')
				->join('bengkel', 'bengkel.id', '=', 'service.bengkel_id')
				->join('ref_service_type', 'ref_service_type.id', '=', 'service.ref_service_id');
				
				$historys_all = $historys->select(
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
					
					'vehicle.user_id',
					'vehicle.year',
					
					'vehicle.ref_vehicle_type_id',
					'ref_vehicle_type.wheel',
					'ref_vehicle_type.type',
					'ref_vehicle_type.transmission',
					
					'ref_vehicle_type.ref_brand_id',
					'ref_brand.name',
					
					'review.id',
					'review.penilaian',
					'review.feedback',
					
					'order.ref_service_id',
					'service.hb',
					'service.hj',
					'service.jp',
					'service.bd',
					
					'service.ref_service_id',
					'ref_service_type.sub as service_sub',
					'ref_service_type.name as service_name',
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
					'bengkel.account_number',
					
					'ref_vehicle_type.type as vehicle_name'
				);
				
				$history_detail_bengkel = $historys->select(
					'order.id', 
					'order.order_date', 
					'order.order_time', 
					'order.service_date', 
					'order.service_time',
					'order.service_location', 
					'order.latitude',
					'order.longitude',
					//'order.area_id',
					//'order.is_emergency',
					'order.status',
					'order.method',
					'order.payment_status',
					
					'order.customer_id',
					'customer.name',
					//'customer.email',
					//'customer.cellphone',
					//'customer.address',
					//'customer.deviceid',
					//'customer.ref_occupation_id',
					
					//'vehicle.user_id',
					'vehicle.year',
					
					//'vehicle.ref_vehicle_type_id',
					'ref_vehicle_type.wheel',
					'ref_vehicle_type.type',
					//'ref_vehicle_type.transmission',
					
					//'ref_vehicle_type.ref_brand_id',
					'ref_brand.name',
					
					//'review.id',
					'review.penilaian',
					'review.feedback',
					
					//'order.ref_service_id',
					//'service.hb',
					'service.hj',
					'service.jp',
					'service.bd',
					//'total.?',
					
					//'service.ref_service_id',
					'ref_service_type.sub as service_sub',
					'ref_service_type.name as service_name',
					//'ref_service_type.wheel',
					//'ref_service_type.description',
					
					//'service.bengkel_id',
					'bengkel.name',
					'bengkel.address',
					'bengkel.latitude',
					'bengkel.longitude',
					'bengkel.ref_area_id'
					//'bengkel.phone',
					//'bengkel.fax',
					//'bengkel.email',
					//'bengkel.account_name',
					//'bengkel.account_number'
				);
				
				$history_list_bengkel = $historys->select(
					'order.id', 
					'order.order_date', 
					'order.order_time', 
					'order.service_date', 
					'order.service_time',
					'order.service_location', 
					'order.latitude',
					'order.longitude',
					//'order.area_id',
					//'order.is_emergency',
					//'order.status',
					//'order.method',
					//'order.payment_status',
					
					'order.customer_id',
					//'customer.name',
					//'customer.email',
					//'customer.cellphone',
					//'customer.address',
					//'customer.deviceid',
					//'customer.ref_occupation_id',
					
					//'vehicle.user_id',
					'vehicle.year',
					
					//'vehicle.ref_vehicle_type_id',
					'ref_vehicle_type.wheel',
					'ref_vehicle_type.type',
					//'ref_vehicle_type.transmission',
					
					//'ref_vehicle_type.ref_brand_id',
					'ref_brand.name',
					
					//'review.id',
					'review.penilaian',
					'review.feedback',
					
					//'order.ref_service_id',
					//'service.hb',
					//'service.hj',
					//'service.jp',
					//'service.bd',
					//'total.?',
					
					//'service.ref_service_id',
					'ref_service_type.sub as service_sub',
					'ref_service_type.name as service_name',
					//'ref_service_type.wheel',
					//'ref_service_type.description',
					
					'service.bengkel_id',
					//'bengkel.name',
					//'bengkel.address',
					'bengkel.latitude',
					'bengkel.longitude'
					//'bengkel.ref_area_id',
					//'bengkel.phone',
					//'bengkel.fax',
					//'bengkel.email',
					//'bengkel.account_name',
					//'bengkel.account_number
				);
				
				$history_detail_customer = $historys->select(
					'order.id', 
					'order.order_date', 
					'order.order_time', 
					'order.service_date', 
					'order.service_time',
					'order.service_location', 
					'order.latitude',
					'order.longitude',
					//'order.area_id',
					//'order.is_emergency',
					'order.status',
					'order.method',
					'order.payment_status',
					
					'order.customer_id',
					//'customer.name',
					//'customer.email',
					//'customer.cellphone',
					//'customer.address',
					//'customer.deviceid',
					//'customer.ref_occupation_id',
					
					//'vehicle.user_id',
					'vehicle.year',
					
					//'vehicle.ref_vehicle_type_id',
					'ref_vehicle_type.wheel',
					'ref_vehicle_type.type',
					//'ref_vehicle_type.transmission',
					
					//'ref_vehicle_type.ref_brand_id',
					'ref_brand.name',
					
					//'review.id',
					//'review.penilaian',
					//'review.feedback',
					
					//'order.ref_service_id',
					//'service.hb',
					'service.hj',
					'service.jp',
					'service.bd',
					//'total.?',
					
					//'service.ref_service_id',
					'ref_service_type.sub as service_sub',
					'ref_service_type.name as service_name',
					//'ref_service_type.wheel',
					//'ref_service_type.description',
					
					'service.bengkel_id',
					'bengkel.name',
					'bengkel.address',
					'bengkel.latitude',
					'bengkel.longitude'
					//'bengkel.ref_area_id',
					//'bengkel.phone',
					//'bengkel.fax',
					//'bengkel.email',
					//'bengkel.account_name',
					//'bengkel.account_number'
				);
				
				$history_list_customer = $historys->select(
					'order.id', 
					'order.order_date', 
					'order.order_time', 
					'order.service_date', 
					'order.service_time',
					'order.service_location', 
					'order.latitude',
					'order.longitude',
					//'order.area_id',
					//'order.is_emergency',
					//'order.status',
					//'order.method',
					//'order.payment_status',
					
					'order.customer_id',
					//'customer.name',
					//'customer.email',
					//'customer.cellphone',
					//'customer.address',
					//'customer.deviceid',
					//'customer.ref_occupation_id',
					
					//'vehicle.user_id',
					'vehicle.year',
					
					//'vehicle.ref_vehicle_type_id',
					'ref_vehicle_type.wheel',
					'ref_vehicle_type.type',
					//'ref_vehicle_type.transmission',
					
					//'ref_vehicle_type.ref_brand_id',
					'ref_brand.name',
					
					//'review.id',
					//'review.penilaian',
					//'review.feedback',
					
					//'order.ref_service_id',
					//'service.hb',
					//'service.hj',
					//'service.jp',
					//'service.bd',
					//'total.?',
					
					//'service.ref_service_id',
					'ref_service_type.sub as service_sub',
					'ref_service_type.name as service_name',
					//'ref_service_type.wheel',
					//'ref_service_type.description',
					
					'service.bengkel_id',
					//'bengkel.name',
					//'bengkel.address',
					'bengkel.latitude',
					'bengkel.longitude'
					//'bengkel.ref_area_id',
					//'bengkel.phone',
					//'bengkel.fax',
					//'bengkel.email',
					//'bengkel.account_name',
					//'bengkel.account_number'
				);
				
				if (!is_null($detail_bengkel)){
					 
					$history = $history_detail_bengkel->where('order.id', '=', $detail_bengkel)->first();
				} elseif (!is_null($detail_customer)){
					
					$history = $history_detail_customer->where('order.id', '=', $detail_customer)->first();
				} elseif (!is_null($list_bengkel)){
					
					$history = $history_list_bengkel->where('service.bengkel_id', '=', $list_bengkel)->get();
				} elseif (!is_null($list_customer)){
					
					$history = $history_list_customer->where('order.customer_id', '=', $list_customer)->get();
				} else {
					$history = $historys_all->get();
				}
				

				$result['data']=$history;
				
				
				
		    }

		}