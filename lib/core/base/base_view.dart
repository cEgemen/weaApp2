
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
      const BaseView({super.key,required this.viewModel,required this.initial,required this.disposse,required this.build});
      final T viewModel;
      final void Function(T viewModel) initial;
      final  void Function() disposse; 
      final Widget Function(BuildContext context , T viewmodel) build;

      @override
      State<BaseView> createState() => _BaseViewState();
    }
    
    class _BaseViewState extends State<BaseView> {
      
      @override
  void initState() {
    super.initState();

  }
   
   @override
  void dispose() {
    super.dispose();

  }

      @override
      Widget build(BuildContext context) => widget.build(context ,widget.viewModel);
    }