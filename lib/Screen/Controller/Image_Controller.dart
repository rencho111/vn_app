import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'Filter.dart';

class Image_Controller
{
  RxList<List<double>> filter = [Identity,Grayscale,Invert,Zero,Scaling,Translate,Shear,Blur,Edge,Indigo,Sterling,Orion,Griffin,Jasper,Sylvan,Rowan].obs;
  RxInt f = 0.obs;
}