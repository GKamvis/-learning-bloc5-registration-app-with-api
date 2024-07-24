import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class SearchCubit extends Cubit<bool> {
  SearchCubit() : super(false);

  void toggleSearch() {
    emit(!state);
  }
}
