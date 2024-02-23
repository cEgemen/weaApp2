import 'package:flutter/material.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../useful/padding.dart';

import '../../../../core/base/base_view.dart';
import 'main2_view_model.dart';

class Main2Page extends StatelessWidget {
  const Main2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(viewModel: Main2ViewModel(), initial: (viewModel) {}, disposse: () {}, build: builder);
  }

  Widget builder(BuildContext context, Main2ViewModel state) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 24,
                    ),
                    Text(
                      "Istanbul",
                      style: context.textTheme.headlineMedium,
                    )
                  ],
                )),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "19 °",
                          style: context.textTheme.displayLarge!.copyWith(fontWeight: FontWeight.bold, fontSize: 80),
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cloudy",
                              style: context.textTheme.titleMedium,
                            ),
                            Text(
                              "H:18 °  L:10 °",
                              style: context.textTheme.titleMedium,
                            )
                          ],
                        ))
                      ],
                    )),
                    const Expanded(child: Placeholder())
                  ],
                )),
            const Spacer(
              flex: 2,
            ),
            Expanded(
                flex: 3,
                child: Card.filled(
                  child: Column(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Card(
                            child: Row(
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "HOURLY",
                                        style: context.textTheme.titleLarge,
                                      )),
                                )),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "DAILY",
                                        style: context.textTheme.titleLarge,
                                      )),
                                ))
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 7,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const AppPadding.normalHorizontalPadding() + const EdgeInsets.symmetric(vertical: 4),
                                child: SizedBox(
                                  width: (context.width - 32) * .21,
                                  child: Card.filled(
                                    shape: Border.all(color: Colors.black),
                                    child: Column(
                                      children: [
                                        const Expanded(flex: 4, child: Placeholder()),
                                        Expanded(
                                            flex: 3,
                                            child: Text(
                                              "12 AM",
                                              style: context.textTheme.titleMedium,
                                            )),
                                        Expanded(
                                            flex: 3,
                                            child: Text(
                                              "18 ° ",
                                              style: context.textTheme.titleMedium,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: 7,
                          ))
                    ],
                  ),
                )),
            const Spacer(
              flex: 1,
            )
          ],
        ));
  }
}
