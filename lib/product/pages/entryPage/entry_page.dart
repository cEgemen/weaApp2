import 'package:flutter/material.dart';

import '../../useful/padding.dart';
import 'entry_page_view_model.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends EntryPageViewModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const AppPadding.normalHorizontalPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 1,
              ),
              Expanded(flex: 4, child: _pageViewImage()),
              Expanded(flex: 1, child: _pageViewBelow()),
              Expanded(
                flex: 2,
                child: _pageViewText(),
              ),
              Expanded(flex: 2, child: _customStartIconButton()),
            ],
          ),
        ),
      ),
    );
  }

  PageView _pageViewImage() {
    return PageView.builder(
      itemCount: pageCount,
      controller: pageViewController,
      onPageChanged: (value) {
        updateCircleContainer(value);
      },
      itemBuilder: (context, index) {
        return buildContainerImage(index);
      },
    );
  }

  PageView _pageViewText() {
    return PageView.builder(
      itemCount: pageCount,
      controller: pageViewController2,
      itemBuilder: (context, index) {
        return buildText(index);
      },
    );
  }

  Widget _customStartIconButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            nextPage();
          },
          child: Card(
            color: entryConstantColor.buttonBackColor,
            shape: const CircleBorder(),
            child: Icon(
              Icons.keyboard_arrow_right_outlined,
              size: entryConstantSized.buttonIconSize,
              color: entryConstantColor.buttonIconColor,
            ),
          ),
        )
      ],
    );
  }

  Widget _pageViewBelow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: pageCount,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return _circleDynamicContainer(index: index);
          },
        ),
      ],
    );
  }

  Widget _circleDynamicContainer({int index = 0}) {
    return Padding(
      padding: const AppPadding.smallHorizontalPadding(),
      child: Container(
        height: isActiveSize(index),
        width: isActiveSize(index),
        decoration: BoxDecoration(color: isActiveColor(index), shape: BoxShape.circle),
      ),
    );
  }
}
