import "package:brand_store/models/productModel.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];
  List<Product> get cart => _cart;

  void toggleFavorite(Product product) {
    if(_cart.contains(product)) {
      for(Product element in _cart) {
        element.quantity + 1;
      }
    }
        else {
          _cart.add(product);
        }
        notifyListeners();
  }

  static CartProvider of(BuildContext context , {
    bool listen = true,
  }){
    return Provider.of<CartProvider>(context,listen:listen);
  }

}