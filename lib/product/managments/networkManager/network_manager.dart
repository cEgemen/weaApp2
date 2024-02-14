 

  


import 'package:dio/dio.dart';

import 'custom_dio.dart';
import 'i_network_manager.dart';

class NetworkManager implements INetworkManager{
      
      NetworkManager._(); 
       @override
       MyDio? dio = MyDio(options: BaseOptions()); 
      static NetworkManager ? _manager;

      static NetworkManager get init  
      {
            return _manager==null ? (_manager = NetworkManager._()) : _manager!;
      }
    
 
     
   



}