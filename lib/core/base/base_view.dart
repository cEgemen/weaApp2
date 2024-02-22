
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
      const BaseView({super.key,required T viewModel,void Function(T viewModel) ? initial,void Function() ?  disposse,  required Widget Function(BuildContext context , T viewmodel) build}):_viewModel=viewModel,_initial=initial,_disposse=disposse,_build=build;
      final T _viewModel;
      final void Function(T viewModel) ? _initial;
      final  void Function() ? _disposse; 
      final Widget Function(BuildContext context , T viewmodel)  _build;

      @override
      State<BaseView> createState() => _BaseViewState<T>();
    }
    
    class _BaseViewState<T extends Store> extends State<BaseView<T>> {
      @override
  void initState() {
    super.initState();
     if(widget._initial != null)
     {
     widget._initial!(widget._viewModel);
     }
  }
   
   @override
  void dispose() {
    super.dispose();
      if(widget._disposse != null)
     {
     widget._disposse!();
     }
  }

      @override
      Widget build(BuildContext context) => widget._build(context ,widget._viewModel);
    }