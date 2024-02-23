        


import 'package:flutter/material.dart';

import '../../../../core/base/base_view.dart';
import 'search_view_model.dart';

class SearchPage extends StatelessWidget {
   const SearchPage({super.key});
 
   @override
   Widget build(BuildContext context) {
     return BaseView(viewModel: SearchViewModel(), 
     initial:(viewModel) {
          viewModel.setBuildContext(context);
          viewModel.init();
     },
     disposse: () {
       
     },
     build: builder);
   }
    
    Widget builder(BuildContext context, SearchViewModel state)
     {
          return  const Scaffold(
                    body: Center(child: Text("SEARCH PAGE"),),
          );
     }

 }