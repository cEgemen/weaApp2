import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

  Widget builder(BuildContext context, MainViewModel state) => DefaultTabController(
        length: 2,
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              child: const Icon(Icons.search_outlined),
              onPressed: () {},
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: const BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 20,
              child: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home_outlined),
                ),
                Tab(
                  icon: Icon(Icons.density_medium_outlined),
                )
              ]),
            ),
            body: SafeArea(child: TabBarView(physics: const NeverScrollableScrollPhysics(), children: state.pages))),
      );
}
