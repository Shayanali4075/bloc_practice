import 'package:equatable/equatable.dart';

class ApiState extends Equatable{
  
  final List data;

  const ApiState({this.data = const []});

  ApiState copyWith({List? data}){
    return ApiState(data: data ?? []);
  }
  
  @override
  List<Object?> get props => [data];

}
