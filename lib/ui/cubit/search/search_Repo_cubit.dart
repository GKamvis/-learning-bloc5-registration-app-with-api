import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SearchCubit extends Cubit<bool> {
  SearchCubit() : super(false);

  void toggleSearch() => emit(!state);
}
