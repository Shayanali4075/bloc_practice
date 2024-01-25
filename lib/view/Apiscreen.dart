import 'package:bloc_practice/bloc/api/apibloc.dart';
import 'package:bloc_practice/bloc/api/apistate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiScreen extends StatelessWidget {
  const ApiScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: BlocBuilder<ApiBloc,ApiState>(builder: (context, state) {
        return Text(state.data.toString());
      },)
      )
    );
  }
}