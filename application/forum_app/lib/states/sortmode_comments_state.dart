import 'package:flutter/material.dart';

class CommentsSortModeState with ChangeNotifier {
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
  CommentsSortModeState() {
    currentSort = choicesforSort.first;
  }
  String get getCurrentPostSort => this.currentSort;
  List<String> get getPostSortChoices => this.choicesforSort;
  void changeSort(String newSort) {
    this.currentSort = newSort;
    notifyListeners();
  }
}
