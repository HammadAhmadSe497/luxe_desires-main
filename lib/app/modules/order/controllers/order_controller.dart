// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  final nameController = TextEditingController();
  final emailAddressController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final instructController = TextEditingController();
  final count = 0.obs;

  final cartController = Get.put(Cart());
  final isFood = true.obs;

  final seshaProducts = [
    Product(
        id: '141',
        title: 'Sesha Flavour 1',
        category: 'sesha',
        price: '117.00'),
    Product(
        id: '142',
        title: 'Sesha Flavour 2',
        category: 'sesha',
        price: '137.00'),
    Product(
        id: '142',
        title: 'Sesha Flavour 3',
        category: 'sesha',
        price: '147.00'),
    Product(
        id: '144',
        title: 'Sesha Flavour 4',
        category: 'sesha',
        price: '157.00'),
    Product(
        id: '145',
        title: 'Sesha Flavour 5',
        category: 'sesha',
        price: '167.00'),
    Product(
        id: '146',
        title: 'Sesha Flavour 6',
        category: 'sesha',
        price: '177.00'),
  ];

  final foodProducts = [
    Product(id: '147', title: 'Food Menu 1', category: 'food', price: '107.00'),
    Product(id: '148', title: 'Food Menu 2', category: 'food', price: '97.00'),
    Product(id: '149', title: 'Food Menu 3', category: 'food', price: '87.00'),
    Product(id: '150', title: 'Food Menu 4', category: 'food', price: '67.00'),
    Product(id: '151', title: 'Food Menu 5', category: 'food', price: '67.00'),
    Product(id: '152', title: 'Food Menu 6', category: 'food', price: '57.00'),
  ];
  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments as bool?;
    isFood.value = args ?? true;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

class Product {
  final String id;
  final String title;
  final String category;
  final String price;
  Product({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'category': category,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as String,
      title: map['title'] as String,
      category: map['category'] as String,
      price: map['price'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}

class CartItem {
  final String id;
  final Product product;
  final int quantity;

  CartItem({
    required this.id,
    required this.product,
    required this.quantity,
  });
}

class Cart extends GetxController {
  Map<String, CartItem> items = {};

  int get itemCount {
    var count = 0;
    items.forEach((key, item) {
      count += item.quantity;
    });
    return count;
  }

  double get totalAmount {
    var total = 0.0;
    items.forEach((key, cartitem) {
      final price = double.parse(cartitem.product.price);
      total += price * cartitem.quantity;
    });
    return total;
  }

  bool containItem(
    String prodId,
  ) {
    if (items.containsKey(prodId)) {
      return true;
    } else {
      return false;
    }
  }

  void addItem(
    String prodId,
    Product product,
  ) {
    if (items.containsKey(prodId)) {
      items.update(
          prodId,
          (existingCartItem) => CartItem(
                id: existingCartItem.id,
                product: existingCartItem.product,
                quantity: existingCartItem.quantity + 1,
              ));
      update();
    } else {
      items.putIfAbsent(
        prodId,
        () => CartItem(
            id: DateTime.now().toString(), product: product, quantity: 1),
      );
      update();
    }
  }

  void removeItem(String prodId) {
    items.remove(prodId);
    update();
  }

  void removeSingleItem(String prodId) {
    if (!items.containsKey(prodId)) {
      return;
    }
    if (items[prodId]!.quantity > 1) {
      items.update(
        prodId,
        (existingCartItem) => CartItem(
            id: existingCartItem.id,
            product: existingCartItem.product,
            quantity: existingCartItem.quantity - 1),
      );
      update();
    } else {
      items.remove(prodId);
      update();
    }
  }

  void clear() {
    items = {};
    update();
  }
}
