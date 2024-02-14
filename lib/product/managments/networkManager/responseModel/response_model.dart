


import '../../../../core/base/base_error.dart';


import 'i_response_model.dart';

class ResponseModel<T> implements IResponseModel<T>{
  
  @override
  T? data;

  @override
  BaseError? error;
      
 ResponseModel({T ? data , BaseError ? error});

      
 }