import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'searchPage/search_page.dart';
import '../../../core/base/base_view_model.dart';
import 'detailPage/detail_page.dart';
import 'main2Page/main2_page.dart';
part 'main_view_model.g.dart';

class MainViewModel = _MainViewModelBase with _$MainViewModel;

abstract class _MainViewModelBase with Store, BaseViewModel {
  List<Widget> pages = [const Main2Page(), const SearchPage(), const DetailPage()];
  @override
  void setBuildContext(BuildContext context) {
    bContext = context;
  }

  @override
  void init() {}
}
