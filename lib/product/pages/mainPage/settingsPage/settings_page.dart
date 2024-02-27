        

        import 'package:flutter/material.dart';
import 'package:weather_app_2/core/base/base_view.dart';
import 'package:weather_app_2/product/pages/mainPage/settingsPage/settings_view_model.dart';

class SettingPage extends StatelessWidget {
          const SettingPage({super.key});
        
          @override
          Widget build(BuildContext context) {
            return BaseView(viewModel: SettingsViewModel(),initial: (viewModel) {
                  viewModel.setBuildContext(context);
                  viewModel.init();
            },build: (context, viewmodel) => builder(context,viewmodel),);
          }
               
              Widget builder(BuildContext context , SettingsViewModel state) =>const SafeArea(child: Scaffold(
                             body: Center(child: Text("SETTINGS PAGE"),),
                         
              ));
        }