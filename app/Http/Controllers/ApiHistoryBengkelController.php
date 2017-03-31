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

				if (!is_null($detail_bengkel)){
					$history_detail_bengkel = $historys->select(
						'order.id as order_id', 
						'order.order_date as order_date', 
						'order.order_time as order_time', 
						'order.service_date as order_service_date', 
						'order.service_time as order_service_time',
						'order.service_location as order_service_location', 
						'order.latitude as order_latitude',
						'order.longitude as order_logitude',
						//'order.area_id as order_area',
						//'order.is_emergency as order_emergency',
						'order.status as order_status',
						'order.method as order_method',
						'order.payment_status as order_payment_status',
						
						'order.customer_id as order_customer_id',
						'customer.name as customer_name',
						//'customer.email as customer_email',
						//'customer.cellphone as customer_cellphone',
						//'customer.address as customer_address',
						//'customer.deviceid as customer_device',
						//'customer.ref_occupation_id as customer_occupation',
						
						//'vehicle.user_id as vehicle_customer_id',
						'vehicle.year as vehicle_year',
						
						//'vehicle.ref_vehicle_type_id as vehicle_type_id',
						'ref_vehicle_type.wheel as vehicle_wheel',
						'ref_vehicle_type.type as vehicle_type',
						'ref_vehicle_type.transmission as vehicle_transmision',
						
						//'ref_vehicle_type.ref_brand_id as vehicle_brand_id',
						'ref_brand.name as brand_name',
						
						'review.id as review_id',
						'review.penilaian as review_penilaian',
						'review.feedback as review_feedback',
						
						//'order.ref_service_id as order_service_id',
						'service.hb as servic_hb',
						'service.hj as service_hj',
						'service.jp as service_jp',
						'service.bd as service_bd',
						//'total.?',
						
						//'service.ref_service_id as service_type_id',
						'ref_service_type.sub as service_sub',
						'ref_service_type.name as service_name',
						'ref_service_type.wheel as service_wheel',
						//'ref_service_type.description as service_desc',
						
						//'service.bengkel_id as service_bengkel_id',
						//'bengkel.name as bengkel_name',
						//'bengkel.address as bengkel_address',
						'bengkel.latitude as bengkel_latitude',
						'bengkel.longitude as bengkel_longitude'
						//'bengkel.ref_area_id as bengkel_area',
						//'bengkel.phone as bengkel_phone',
						//'bengkel.fax as bengkel_fax',
						//'bengkel.email as bengkel_email',
						//'bengkel.account_name as bengkel_account_name',
						//'bengkel.account_number as bengkel_account_num '
					); 
					$history = $history_detail_bengkel->where('order.id', '=', $detail_bengkel)->first();
				} elseif (!is_null($detail_customer)){
					$history_detail_customer = $historys->select(
						'order.id as order_id', 
						'order.order_date as order_date', 
						'order.order_time as order_time', 
						'order.service_date as order_service_date', 
						'order.service_time as order_service_time',
						'order.service_location as order_service_location', 
						'order.latitude as order_latitude',
						'order.longitude as order_logitude',
						'order.area_id as order_area',
						//'order.is_emergency as order_emergency',
						'order.status as order_status',
						'order.method as order_method',
						'order.payment_status as order_payment_status',
						
						//'order.customer_id as order_customer_id',
						//'customer.name as customer_name',
						//'customer.email as customer_email',
						//'customer.cellphone as customer_cellphone',
						//'customer.address as customer_address',
						//'customer.deviceid as customer_device',
						//'customer.ref_occupation_id as customer_occupation',
						
						//'vehicle.user_id as vehicle_customer_id',
						'vehicle.year as vehicle_year',
						
						//'vehicle.ref_vehicle_type_id as vehicle_type_id',
						'ref_vehicle_type.wheel as vehicle_wheel',
						'ref_vehicle_type.type as vehicle_type',
						'ref_vehicle_type.transmission as vehicle_transmision',
						
						//'ref_vehicle_type.ref_brand_id as vehicle_brand_id',
						'ref_brand.name as brand_name',
						
						//'review.id as review_id',
						//'review.penilaian as review_penilaian',
						//'review.feedback as review_feedback',
						
						//'order.ref_service_id as order_service_id',
						'service.hb as servic_hb',
						'service.hj as service_hj',
						'service.jp as service_jp',
						'service.bd as service_bd',
						//'total.?',
						
						//'service.ref_service_id as service_type_id',
						'ref_service_type.sub as service_sub',
						'ref_service_type.name as service_name',
						'ref_service_type.wheel as service_wheel',
						//'ref_service_type.description as service_desc',
						
						//'service.bengkel_id as service_bengkel_id',
						'bengkel.name as bengkel_name',
						'bengkel.address as bengkel_address',
						'bengkel.latitude as bengkel_latitude',
						'bengkel.longitude as bengkel_longitude',
						'bengkel.ref_area_id as bengkel_area',
						'bengkel.phone as bengkel_phone',
						'bengkel.fax as bengkel_fax',
						'bengkel.email as bengkel_email',
						'bengkel.account_name as bengkel_account_name',
						'bengkel.account_number as bengkel_account_num '
					);
					$history = $history_detail_customer->where('order.id', '=', $detail_customer)->first();
				} elseif (!is_null($list_bengkel)){
					$history_list_bengkel = $historys->select(
						'order.id as order_id', 
						'order.order_date as order_date', 
						'order.order_time as order_time', 
						'order.service_date as order_service_date', 
						'order.service_time as order_service_time',
						'order.service_location as order_service_location', 
						'order.latitude as order_latitude',
						'order.longitude as order_logitude',
						//'order.area_id as order_area',
						//'order.is_emergency as order_emergency',
						//'order.status as order_status',
						//'order.method as order_method',
						//'order.payment_status as order_payment_status',
						
						//'order.customer_id as order_customer_id',
						//'customer.name as customer_name',
						//'customer.email as customer_email',
						//'customer.cellphone as customer_cellphone',
						//'customer.address as customer_address',
						//'customer.deviceid as customer_device',
						//'customer.ref_occupation_id as customer_occupation',
						
						//'vehicle.user_id as vehicle_customer_id',
						'vehicle.year as vehicle_year',
						
						//'vehicle.ref_vehicle_type_id as vehicle_type_id',
						'ref_vehicle_type.wheel as vehicle_wheel',
						'ref_vehicle_type.type as vehicle_type',
						'ref_vehicle_type.transmission as vehicle_transmision',
						
						//'ref_vehicle_type.ref_brand_id as vehicle_brand_id',
						'ref_brand.name as brand_name',
						
						//'review.id as review_id',
						'review.penilaian as review_penilaian',
						//'review.feedback as review_feedback',
						
						//'order.ref_service_id as order_service_id',
						//'service.hb as servic_hb',
						//'service.hj as service_hj',
						//'service.jp as service_jp',
						//'service.bd as service_bd',
						//'total.?',
						
						//'service.ref_service_id as service_type_id',
						'ref_service_type.sub as service_sub',
						'ref_service_type.name as service_name',
						//'ref_service_type.wheel as service_wheel',
						//'ref_service_type.description as service_desc',
						
						//'service.bengkel_id as service_bengkel_id',
						//'bengkel.name as bengkel_name',
						//'bengkel.address as bengkel_address',
						'bengkel.latitude as bengkel_latitude',
						'bengkel.longitude as bengkel_longitude'
						//'bengkel.ref_area_id as bengkel_area',
						//'bengkel.phone as bengkel_phone',
						//'bengkel.fax as bengkel_fax',
						//'bengkel.email as bengkel_email',
						//'bengkel.account_name as bengkel_account_name',
						//'bengkel.account_number as bengkel_account_num '
					); 
					$history = $history_list_bengkel->where('service.bengkel_id', '=', $list_bengkel)->get();
				} elseif (!is_null($list_customer)){
					$history_list_customer = $historys->select(
						'order.id as order_id', 
						'order.order_date as order_date', 
						'order.order_time as order_time', 
						'order.service_date as order_service_date', 
						'order.service_time as order_service_time',
						'order.service_location as order_service_location', 
						//'order.latitude as order_latitude',
						//'order.longitude as order_logitude',
						//'order.area_id as order_area',
						//'order.is_emergency as order_emergency',
						//'order.status as order_status',
						//'order.method as order_method',
						//'order.payment_status as order_payment_status',
						
						'order.customer_id as order_customer_id',
						//'customer.name as customer_name',
						//'customer.email as customer_email',
						//'customer.cellphone as customer_cellphone',
						//'customer.address as customer_address',
						//'customer.deviceid as customer_device',
						//'customer.ref_occupation_id as customer_occupation',
						
						//'vehicle.user_id as vehicle_customer_id',
						'vehicle.year as vehicle_year',
						
						//'vehicle.ref_vehicle_type_id as vehicle_type_id',
						'ref_vehicle_type.wheel as vehicle_wheel',
						'ref_vehicle_type.type as vehicle_type',
						'ref_vehicle_type.transmission as vehicle_transmision',
						
						//'ref_vehicle_type.ref_brand_id as vehicle_brand_id',
						'ref_brand.name as brand_name',
						
						//'review.id as review_id',
						//'review.penilaian as review_penilaian',
						//'review.feedback as review_feedback',
						
						//'order.ref_service_id as order_service_id',
						//'service.hb as servic_hb',
						//'service.hj as service_hj',
						//'service.jp as service_jp',
						//'service.bd as service_bd',
						//'total.?',
						
						//'service.ref_service_id as service_type_id',
						'ref_service_type.sub as service_sub',
						'ref_service_type.name as service_name'
						//'ref_service_type.wheel as service_wheel',
						//'ref_service_type.description as service_desc',
						
						//'service.bengkel_id as service_bengkel_id',
						//'bengkel.name as bengkel_name',
						//'bengkel.address as bengkel_address',
						//'bengkel.latitude as bengkel_latitude',
						//'bengkel.longitude as bengkel_longitude',
						//'bengkel.ref_area_id as bengkel_area',
						//'bengkel.phone as bengkel_phone',
						//'bengkel.fax as bengkel_fax',
						//'bengkel.email as bengkel_email',
						//'bengkel.account_name as bengkel_account_name',
						//'bengkel.account_number as bengkel_account_num '
					);
					$history = $history_list_customer->where('order.customer_id', '=', $list_customer)->get();
				} else {
					$history = $historys_all->get();
				}
				
				$result['data']=$history;
				
				
				
		    }

		}