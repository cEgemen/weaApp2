  

   
    import 'package:flutter/material.dart';
import 'package:weather_app_2/core/base/base_view.dart';
import 'package:weather_app_2/product/pages/mainPage/main2Page/main2_view_model.dart';

class Main2Page extends StatelessWidget {
      const Main2Page({super.key});
    
      @override
      Widget build(BuildContext context) {
        return BaseView(viewModel: Main2ViewModel(),
         initial: (viewModel) {
                 
         },
         disposse: () {
           
         },
         build: builder);
      }
        
        Widget builder(BuildContext context, Main2ViewModel state)
        {
            return Scaffold(
              body: Center(child: Text("MAIN PAGE"),),
            );
        }

    }