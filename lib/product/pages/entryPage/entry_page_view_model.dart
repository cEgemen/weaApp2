import 'package:flutter/material.dart';
import '../../../core/extensions/context_extension.dart';
import '../../useful/padding.dart';
import '../../constants/app_constants.dart';

import '../../../core/base/base_state.dart';
import '../../enums/image_enum.dart';
import '../../enums/router_enum.dart';
import 'entry_page.dart';
import 'entry_page_model.dart';

abstract class EntryPageViewModel extends BaseState<EntryPage> {
  List<EntryPageModel> modelList = [
    EntryPageModel(title: "CHECK WEATHER", desc: "You can check daily weather with one click.", imgPath: ImageEnum.entry_img1.imagePath()),
    EntryPageModel(
        title: "DETAILED DATA",
        desc: "You can see the weather conditions in 6 different time periods of the day and the weather conditions of the next 5 days in detail.",
        imgPath: ImageEnum.entry_img2.imagePath()),
    EntryPageModel(
        title: "LOOK AT OTHER CITIES",
        desc: "You can learn the weather conditions of cities in different parts of the world in detail.",
        imgPath: ImageEnum.entry_img3.imagePath()),
  ];

  late final PageController pageViewController;
  late final PageController pageViewController2;
  late final EntryPageConstantSized entryConstantSized;
  late final EntryPageConstantColor entryConstantColor;
  int currentPageIndex = 1;
  final pageCount = 3;
  @override
  void initState() {
    super.initState();
    pageViewController = PageController(initialPage: currentPageIndex);
    pageViewController2 = PageController(initialPage: currentPageIndex);
    entryConstantSized = EntryPageConstantSized.constantSized;
    entryConstantColor = EntryPageConstantColor.constantColor;
  }

  Color isActiveColor(int index) {
    return currentPageIndex == index ? entryConstantColor.activeColor : entryConstantColor.passiveColor;
  }

  double isActiveSize(int index) {
    return currentPageIndex == index ? entryConstantSized.circleContainerActiveSizes : entryConstantSized.circleContainerDismisSizes;
  }

  void updateCircleContainer(int value) {
    setState(() {
      pageViewController2.jumpToPage(value);
      currentPageIndex = value;
    });
  }

  Widget buildContainerImage(int index) {
    return SizedBox(
      child: Image.asset(
        modelList[index].imgPath,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildText(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          modelList[index].title,
          style: context.textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const AppPadding.normalHorizontalPadding(),
          child: Text(
            modelList[index].desc,
            style: context.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  void nextPage() {
    Navigator.of(context).pushNamed(RouterEnum.signAndLogInPage.name);
  }
}

class EntryPageConstantSized {
  EntryPageConstantSized._();
  static EntryPageConstantSized constantSized = EntryPageConstantSized._();
  final double circleContainerActiveSizes = AppConstants.indicatorActiveContainerSize;
  final double circleContainerDismisSizes = AppConstants.indicatorPassiveContainerSize;
  final double buttonIconSize = AppConstants.lowWidgetSize;
}

class EntryPageConstantColor {
  EntryPageConstantColor._();
  static EntryPageConstantColor constantColor = EntryPageConstantColor._();
  static const double _passiveColorOpacity = AppConstants.middleOpacity;
  // Colorlar theme ya baglanabilir ....
  final Color activeColor = const Color(0xff6C63FF);
  final Color passiveColor = Colors.grey.withOpacity(_passiveColorOpacity);
  final Color buttonIconColor = Colors.white;
  final Color buttonBackColor = Colors.green.shade300;
}
