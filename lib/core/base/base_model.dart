  
  abstract class BaseModel<T>{
       T fromJson(Map<String,dynamic> modelJson);
       Map<String,dynamic> toJson(T model);
  }