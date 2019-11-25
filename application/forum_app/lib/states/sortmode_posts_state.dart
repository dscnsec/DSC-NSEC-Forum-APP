import 'package:flutter/material.dart';

class PostsSortModeState with ChangeNotifier {
  final List<String> choicesforSort = [
    'Latest',
    'Top',
    'Newest',
    'Oldest',
    'Popular',
    'Unpopular',
    'Trending'
  ];
  String currentSort;
  PostsSortModeState() {
    currentSort = choicesforSort.first;
  }
  String get getCurrentPostSort => this.currentSort;
  List<String> get getPostSortChoices => this.choicesforSort;
  void changeSort(String newSort) {
    this.currentSort = newSort;
    notifyListeners();
  }
}
