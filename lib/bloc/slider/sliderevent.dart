import 'package:equatable/equatable.dart';

abstract class SliderEvent extends Equatable{

  const SliderEvent();

  @override
  List<Object> get props => [];
}

class SlideValueEvent extends SliderEvent{
  final double value;
  const SlideValueEvent(this.value);
}