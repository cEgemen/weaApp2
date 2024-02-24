import 'package:flutter/material.dart';
import '../../useful/padding.dart';
import '../../../core/base/base_view.dart';
import 'main_view_model.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: MainViewModel(),
        initial: (viewModel) {
          viewModel.setBuildContext(context);
          viewModel.init();
        },
        disposse: () {},
        build: builder);
  }

  Widget builder(BuildContext context, MainViewModel state) => SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              bottomNavigationBar: const BottomAppBar(
                child: TabBar(dividerColor: Colors.transparent, tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home_outlined,
                      size: 30,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.search_outlined,
                      size: 30,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.density_medium_outlined,
                      size: 30,
                    ),
                  )
                ]),
              ),
              body: Padding(
                  padding: const AppPadding.normalHorizontalPadding(),
                  child: TabBarView(physics: const NeverScrollableScrollPhysics(), children: state.pages))),
        ),
      );
}
