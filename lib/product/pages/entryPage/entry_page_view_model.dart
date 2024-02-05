import 'package:flutter/material.dart';

abstract class EntryPageViewModel extends State<StatefulWidget> {
  final String entryPageTopTest = "WELCOME TO WEATHER APP";
  final String startButtonText = "Let's Start";
  
  final List<Widget> entryPageShowPageList = [
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.grey,
    )
  ];
  late final PageController pageViewController;
  late final EntryPageConstantSized entryConstantSized;
  late final EntryPageConstantColor entryConstantColor;
  int currentPageIndex = 0;
  final pageCount = 3;
  final double _viewFraction = 0.8;
  @override
  void initState() {
    super.initState();
    pageViewController = PageController(initialPage: currentPageIndex, viewportFraction: _viewFraction);
    entryConstantSized = EntryPageConstantSized.constantSized;
    entryConstantColor = EntryPageConstantColor.constantColor;
  }

  Color isActiveColor(int index) {
    return currentPageIndex == index ? entryConstantColor.activeColor : entryConstantColor.passiveColor;
  }

  double isActiveSize(int index) {
    return currentPageIndex == index ? entryConstantSized.circleContainerActiveSizes : entryConstantSized.circleContainerDismisSizes;
  }

  List<Widget> createWidgetList<T>(int count, Widget Function({int index}) widget) {
    List<Widget> widgetList = [];
    for (int i = 0; i < count; i++) {
      widgetList.add(widget(index: i));
    }
    return widgetList;
  }

  void updateCircleContainer(int value) {
    setState(() {
      currentPageIndex = value;
    });
  }
}

class EntryPageConstantSized {
  EntryPageConstantSized._();
  static EntryPageConstantSized constantSized = EntryPageConstantSized._();
  final double circleContainerActiveSizes = 30;
  final double circleContainerDismisSizes = 20;
  final double buttonIconSize = 50;
}

class EntryPageConstantColor {
  EntryPageConstantColor._();
  static EntryPageConstantColor constantColor = EntryPageConstantColor._();
  static const double _passiveColorOpacity = .5;
  // Colorlar theme ya baglanabilir ....
  final Color activeColor = Colors.orange;
  final Color passiveColor = Colors.grey.withOpacity(_passiveColorOpacity);
  final Color buttonIconColor = Colors.white;
  final Color buttonBackColor = Colors.green.shade300;

}
