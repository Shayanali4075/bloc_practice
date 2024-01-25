import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/slider/sliderevent.dart';
import 'package:bloc_practice/bloc/slider/sliderstate.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState>{
  SliderBloc():super(const SliderState()){
    on<SlideValueEvent>(sliderValue);
  }

  void sliderValue(SlideValueEvent event, Emitter<SliderState> states) {
    emit(state.copyWith(value: event.value));
  }
}