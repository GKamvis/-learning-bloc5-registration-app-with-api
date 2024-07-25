import 'package:myapp/data/repositories/person_dao.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdatePageCubit extends Cubit<void>{
  UpdatePageCubit() : super(0);
  var personRepo = PersonRepository();
  Future<void> updatePerson(PersonDao person) async{
    emit(await personRepo.updatePerson(person));
  }
}

