import 'dart:io';

import 'package:bloc_practice/bloc/imagepicker/imagepickerbloc.dart';
import 'package:bloc_practice/bloc/imagepicker/imagepickerevent.dart';
import 'package:bloc_practice/bloc/imagepicker/imagepickerstate.dart';
import 'package:bloc_practice/bloc/slider/sliderbloc.dart';
import 'package:bloc_practice/bloc/slider/sliderevent.dart';
import 'package:bloc_practice/bloc/slider/sliderstate.dart';
import 'package:bloc_practice/components/Elevatedbutton.dart';
import 'package:bloc_practice/utils/Navigation.dart';
import 'package:bloc_practice/view/Apiscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
                builder: (context, state) {
                  if (state.file == null) {
                    return const SizedBox();
                  } else {
                    return Image.file(File(state.file!.path));
                  }
                },
              ),
            ),
            BlocBuilder<SliderBloc, SliderState>(
              builder: (context, state) {
                return Container(
                  color: Colors.red.withOpacity(state.value),
                  height: 300,
                  width: 200,
                );
              },
            ),
            BlocBuilder<SliderBloc, SliderState>(
              builder: (context, state) => Slider(
                value: state.value,
                onChanged: (value) {
                  context.read<SliderBloc>().add(SlideValueEvent(value));
                },
              ),
            ),
            MyButton(ontap: (){
              Navigation().to(context, const ApiScreen());
            },title: 'Move',)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ImagePickerBloc>().add(PickImageFromGalleryEvent());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
