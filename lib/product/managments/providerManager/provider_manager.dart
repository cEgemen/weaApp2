
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:weather_app_2/product/managments/cacheManager/cache_manager.dart';
import 'package:weather_app_2/product/managments/themeManager/theme_manager.dart';

abstract class ProviderManager  extends StatelessWidget{
     List<SingleChildWidget> providers =[
                  ChangeNotifierProvider(create: (context) => ThemeManager.init(),),
                  Provider(create: (context) => CacheManager.init,)
            ];

        ProviderManager({super.key});
  }