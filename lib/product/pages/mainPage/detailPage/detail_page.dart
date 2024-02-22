

import 'package:flutter/material.dart';
import 'package:weather_app_2/core/base/base_view.dart';
import 'detail_view_model.dart';

class DetailPage extends StatelessWidget {
   const DetailPage({super.key});
 
   @override
   Widget build(BuildContext context) {
     return BaseView(viewModel: DetailViewModel(), 
     initial:(viewModel) {
          viewModel.setBuildContext(context);
          viewModel.init();
     },
     disposse: () {
       
     },
     build: builder);
   }
    
    Widget builder(BuildContext context, DetailViewModel state)
     {
          return  const Scaffold(
                    body: Center(child: Text("DETAIL PAGE"),),
          );
     }

 }