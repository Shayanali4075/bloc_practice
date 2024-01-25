import 'package:image_picker/image_picker.dart';

class PickImageUtils{
  ImagePicker picker = ImagePicker();

  Future pickImageFromGAllery()async{
    XFile? file = await picker.pickImage(source: ImageSource.gallery);
    return file;
  }
  
}