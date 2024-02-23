import 'package:flutter/material.dart';
import '../../../../core/extensions/context_extension.dart';

import '../../../../core/base/base_view.dart';
import '../../../useful/padding.dart';
import 'detail_view_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModel: DetailViewModel(),
        initial: (viewModel) {
          viewModel.setBuildContext(context);
          viewModel.init();
        },
        disposse: () {},
        build: builder);
  }

  Widget builder(BuildContext context, DetailViewModel state) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    const Expanded(flex: 6, child: Placeholder()),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Text(
                              "Istanbul",
                              style: context.textTheme.headlineMedium,
                            ),
                            Text(
                              "19 ° | Cloudy",
                              style: context.textTheme.titleMedium,
                            )
                          ],
                        )),
                  ],
                )),
            Expanded(
                flex: 5,
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
                          flex: 4,
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
                          )),
                      const Spacer(
                        flex: 3,
                      )
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
