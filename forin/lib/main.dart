import 'package:flutter/material.dart';
import '../pages/product_detail_page.dart';
import '../pages/products_overview_page.dart';
import '../utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.purple,
          secondary: Colors.deepOrange,
        ),
        fontFamily: 'Lato',
      ),
      home: ProductsOverviewPage(),
      routes: {
        AppRoutes.productDetail: (ctx) => const ProductDetailPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
