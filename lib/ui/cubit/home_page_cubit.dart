import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/data/repositories/person_dao.dart';

class HomePageCubit extends Cubit<List<PersonDao>> {
  HomePageCubit() : super([]);
  var personRepo = PersonRepository();

  Future<void> getPerson() async {
    emit(await personRepo.getPerson());
    
  }
}
