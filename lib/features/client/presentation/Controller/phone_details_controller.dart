import 'package:get/get.dart';

class PhoneDetailsController extends GetxController {
  var isLiked = false.obs;
  var proposedPrice = ''.obs;

  void toggleLike() {
    isLiked.value = !isLiked.value;
  }

  void setProposedPrice(String price) {
    proposedPrice.value = price;
  }
}
