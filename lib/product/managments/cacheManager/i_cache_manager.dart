


    import 'package:shared_preferences/shared_preferences.dart';

import '../../enums/cache_enum.dart';

abstract class ICacheManager  {
    late final  SharedPreferences ? prefs;
   
   Future<void> setInt(CacheEnum key,int value);
   Future<void> setString(CacheEnum key,String value);
   
   void getInt(CacheEnum key);
   void getString(CacheEnum key);

  
    }
