import 'package:bloc_practice/bloc/api/apievent.dart';
import 'package:bloc_practice/bloc/api/apistate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_practice/netwrok/apiresponse.dart';

class ApiBloc extends Bloc<ApiEvent,ApiState>{
  ApiResponse apiresponse = ApiResponse();
  ApiBloc(this.apiresponse):super(const ApiState()){
    on<GetApiEvent>(getapi);
  }

  void getapi(GetApiEvent event, Emitter<ApiState> states) async{
    var data = await apiresponse.getresponse();
    emit(state.copyWith(data: data));
  }
}
