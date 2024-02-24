import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../core/extensions/context_extension.dart';

import '../../../../core/base/base_view.dart';
import 'search_view_model.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: SearchViewModel(),
        initial: (viewModel) {
          viewModel.setBuildContext(context);
          viewModel.init();
        },
        disposse: () {},
        build: builder);
  }

  Widget builder(BuildContext context, SearchViewModel state) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                state.toPreviouisPage(DefaultTabController.maybeOf(context));
              },
              icon: const Icon(Icons.arrow_back_outlined, size: 30)),
          centerTitle: true,
          title: Text(
            "Search City",
            style: context.textTheme.headlineMedium,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: context.height * .15,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.zero),
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search_outlined)),
                      ),
                    ),
                  ],
                )),
            SizedBox(
                height: context.height * .1,
                child: Wrap(direction: Axis.vertical, alignment: WrapAlignment.center, children: [
                  Text(
                    "Current City",
                    style: context.textTheme.titleMedium,
                  ),
                ])),
            Observer(builder: (_) {
              return AnimatedContainer(
                  duration:const  Duration(milliseconds: 200),
                  height: state.changeValue(context.height * .18, context.height * .5),
                  child: Stack(children: [
                    AnimatedContainer(
                      duration:const  Duration(milliseconds: 200),
                      height: state.changeValue(context.height * .15, context.height * .47),
                      child: Container(
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(
                      height: context.height * .15,
                      child: Card(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "19 °",
                                      style: context.textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "H:18 °  L:10 °",
                                      style: context.textTheme.titleMedium,
                                    ),
                                    Text(
                                      "Istanbul",
                                      style: context.textTheme.titleMedium,
                                    )
                                  ],
                                )),
                            const Expanded(flex: 4, child: Placeholder())
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 3,
                        left: context.width * .45,
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Card(
                            shape: const CircleBorder(),
                            child: IconButton(
                              onPressed: () {
                                state.changeTouchState();
                              },
                              icon: Icon(state.changeIconButtonIcon),
                            ),
                          ),
                        ))
                  ]));
            }),
            const Spacer(
              flex: 5,
            )
          ],
        ));
  }
}
