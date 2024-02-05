import 'package:flutter/material.dart';
import 'package:weather_app_2/product/pages/entryPage/entry_page_view_model.dart';
import 'package:weather_app_2/product/useful/padding.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<StatefulWidget> createState() => _EntryPageState();
}

class _EntryPageState extends EntryPageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Padding(
        padding: const AppPadding.normalHorizontalPadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 1,
            ),
            Expanded(flex: 2, child: _entryPageTopText(context)),
            Expanded(flex: 5, child: _pageView()),
            Expanded(flex: 1, child: _pageViewBelow()),
            Expanded(flex: 1, child: _customStartIconButton()),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }

  PageView _pageView() {
    return PageView.builder(
      itemCount: pageCount,
      controller: pageViewController,
      padEnds: true,
      pageSnapping: true,
      onPageChanged: (value) {
        updateCircleContainer(value);
      },
      itemBuilder: (context, index) {
        return entryPageShowPageList[index];
      },
    );
  }

  Row _customStartIconButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {},
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: createWidgetList(pageCount, _circleDynamicContainer));
  }

  Widget _entryPageTopText(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          entryPageTopText1,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text("${"\t" * entryPageTopText1.length}${entryPageTopText2}", style: Theme.of(context).textTheme.headlineSmall)
      ],
    );
  }

  Container _circleDynamicContainer({int index = 0}) {
    return Container(
      height: isActiveSize(index),
      width: isActiveSize(index),
      decoration: BoxDecoration(color: isActiveColor(index), shape: BoxShape.circle),
    );
  }
}
