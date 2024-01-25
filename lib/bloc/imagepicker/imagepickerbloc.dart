import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/imagepicker/imagepickerevent.dart';
import 'package:bloc_practice/bloc/imagepicker/imagepickerstate.dart';
import 'package:bloc_practice/utils/imagePickerutils.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState>{
  
  PickImageUtils picker = PickImageUtils();
  
  ImagePickerBloc(this.picker) : super(const ImagePickerState()){
    on<PickImageFromGalleryEvent>(pickImage);
  }
 
  void pickImage(PickImageFromGalleryEvent event, Emitter<ImagePickerState> states) async {
    XFile? file = await picker.pickImageFromGAllery();
    emit(state.copyWith(file: file));
  }

}  