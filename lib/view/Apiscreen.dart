import 'package:bloc_practice/bloc/api/apibloc.dart';
import 'package:bloc_practice/bloc/api/apievent.dart';
import 'package:bloc_practice/bloc/api/apistate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {

  @override
  void initState() {
    context.read<ApiBloc>().add(GetApiEvent());
    super.initState();
  }

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