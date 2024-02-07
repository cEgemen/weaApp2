

import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app_2/product/enums/cache_enum.dart';
import 'package:weather_app_2/product/errors/cache_error.dart';
import 'package:weather_app_2/product/managments/cacheManager/i_cache_manager.dart';

class CacheManager implements ICacheManager{
   CacheManager._();

   static CacheManager ? _init;

   static CacheManager get init {
       return _init == null ? (_init = CacheManager._()) : _init!;
   } 
   
   Future<SharedPreferences> preferencesInit() async 
   {
      if(prefs == null)
      {
         return prefs =await SharedPreferences.getInstance();
      }
      return prefs!;
   }

   @override
  SharedPreferences? prefs;
 
  @override
  void getInt(CacheEnum key) {
      prefs == null ? throw CacheError() : prefs!.getInt(key.name); 
  }

  @override
  void getString(CacheEnum key) {
          prefs == null ? throw CacheError() : prefs!.getString(key.name); 
  }


  @override
  Future<void> setInt(CacheEnum key, int value) async{
          prefs == null ? throw CacheError() : await prefs!.setInt(key.name, value);
  }

  @override
  Future<void> setString(CacheEnum key, String value) async{
      prefs == null ? throw CacheError() : await prefs!.setString(key.name, value);
  }
  
}

