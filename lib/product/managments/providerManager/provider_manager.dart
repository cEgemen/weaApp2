
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../cacheManager/cache_manager.dart';
import '../themeManager/theme_manager.dart';

abstract class ProviderManager  extends StatelessWidget{
     List<SingleChildWidget> providers =[
                  ChangeNotifierProvider(create: (context) => ThemeManager.init(),),
                  Provider(create: (context) => CacheManager.init,)
            ];

        ProviderManager({super.key});
  }