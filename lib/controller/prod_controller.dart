import 'package:get/get.dart';
import '../model/prod_model.dart';
import '../service/prod_service.dart';



class ProductController extends GetxController {
  var isLoading = true.obs;
 var ProductList=[].obs;


  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var products = await HttpService.fetchList();
      if (products.isNotEmpty) {
        ProductList.value = products;
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
}