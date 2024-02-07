
    import 'package:flutter/widgets.dart';

class BaseView<T extends Store> extends StatefulWidget {
      const BaseView({super.key,required T viewMode,void Function(T viewMode) ? initial,void Function() ? disposse,required Widget Function(BuildContext context,T viewMode) build}):
      _viewModel=viewMode , _initial = initial , _disposse = disposse,_build =build;
      final T _viewModel;
      final void Function(T viewMode) ? _initial;
      final  void Function() ? _disposse; 
      final Widget Function(BuildContext context , T viewmodel) _build;

      @override
      State<BaseView> createState() => _BaseViewState();
    }
    
    class _BaseViewState extends State<BaseView> {
      
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