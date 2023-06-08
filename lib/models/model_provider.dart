import 'package:flutter/foundation.dart';
import '../helper/api_helper.dart';
import 'data_product_model.dart';

class ModelProvider with ChangeNotifier {
  List selectedProduct = [];
  List selectedProductOrders = [];
  //List productsList = [];
   dynamic productPrice = 0;

  add(DataProductModel product) {
    selectedProduct.add(product);

    productPrice += product.productPrice.round();

    notifyListeners();
  }

  remove(DataProductModel product) {
    selectedProduct.remove(product);

    productPrice -= product.productPrice.round();

    notifyListeners();
  }

  get itemModelLength {
    return selectedProduct.length;
  }

  addOrder(DataProductModel productOrder) {
    selectedProductOrders.add(productOrder);

    notifyListeners();
  }

// moveToOrderScreen it is temporary
  void moveToOrderScreen() {
    for (var product in selectedProduct) {
      addOrder(product);
    }
    notifyListeners();
  }

  removeItemOfList() {
    selectedProduct.clear();
    productPrice = 0;
    notifyListeners();
  }

  
/*
  Future<List<DataProductModel>> getAllProducts() async {
    List<dynamic> data =
        await ApiHelper().get(url: 'https://fakestoreapi.com/products');
    List<DataProductModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(DataProductModel.fromJson(data[i]));
    }
    return productsList;
  }
  */
}

/*

import 'package:flutter/foundation.dart';
import '../helper/api_helper.dart';
import 'data_product_model.dart';

class ModelProvider with ChangeNotifier {
  List selectedProduct = [];
  List selectedProductOrders = [];
  int productPrice = 0;

  add(DataProductModel product) {
    selectedProduct.add(product);

    //productPrice += product.productPrice.round();

    notifyListeners();
  }

  remove(DataProductModel product) {
    selectedProduct.remove(product);

    //productPrice -= product.productPrice.round();

    notifyListeners();
  }

  get itemModelLength {
    return selectedProduct.length;
  }

  addOrder(DataProductModel productOrder) {
    selectedProductOrders.add(productOrder);

    notifyListeners();
  }
// moveToOrderScreen it is temporary
  void moveToOrderScreen() {
    for (var product in selectedProduct) {
      addOrder(product);
    }
    notifyListeners();
  }

  removeItemOfList() {
    selectedProduct.clear();
    productPrice = 0;
    notifyListeners();
  }
  
  Future<List<DataProductModel>> getAllProducts() async {
    List<dynamic> data = await ApiHelper()
        .get(url: 'https://fakestoreapi.com/products');
    List<DataProductModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(DataProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}

*/