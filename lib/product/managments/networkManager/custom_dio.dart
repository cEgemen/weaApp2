


import 'dart:io';

import 'package:dio/dio.dart';

import '../../../core/base/base_error.dart';
import '../../../core/base/base_model.dart';
import '../../enums/http_request_type_enum.dart';
import 'responseModel/i_response_model.dart';
import 'responseModel/response_model.dart';

class MyDio with DioMixin implements Dio {
     

      late final BaseOptions options;
     MyDio({required this.options});

 Future<IResponseModel<R>> fetchData<R,T extends BaseModel>({required String path,required HttpRequestType requestType,required T parseModel,T ? data,Map<String, dynamic>? queryParameters,Options? options, void Function(int, int)? onSendProgress, void Function(int, int)? onReceiveProgress})
 async{
         
         final response  = await request(path,options: Options(method:requestType.getType),data: data?.toJson(data));
         switch(response.statusCode)
         {
              case HttpStatus.ok: 
              case HttpStatus.accepted:
              final data = response.data;
              return _parseModel<R,T>(parseModel,data);   
         }
         return ResponseModel(error: BaseError("FAULT RESPONSE"));
           

      }

     IResponseModel<R> _parseModel<R,T extends BaseModel>(T parseModel,dynamic data)
     {
                R finalData;
                 if(data is List)
                 {
                      finalData = data.map((element) => parseModel.fromJson(element)).toList() as R;
                     return ResponseModel<R>(data:finalData);
                 }
                 else if(data is Map<String,dynamic>)
                 {
                      finalData = parseModel.fromJson(data) as R; 
                     return ResponseModel<R>(data: finalData);
                 }
                  finalData = data as R;
                  return ResponseModel(data: finalData);              
     } 
   
}