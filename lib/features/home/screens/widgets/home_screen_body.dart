import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'package:shary/core/widgets/app_divider.dart';
import 'home_header.dart';
import 'home_tabs.dart';
import 'product_card.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const HomeHeader(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: const AppDivider(),
            ),
            const HomeTabs(),
            verticalSpace(16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.w,
                  mainAxisSpacing: 5.h,
                  childAspectRatio: 0.65,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    image: product['image']!,
                    title: product['title']!,
                    price: product['price']!,
                    seller: product['seller']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, String>> products = [
  {
    "image": "https://www.raneen.com/media/catalog/product/5/0/509._zyigsgeaq5wiq76w.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=&width=",
    "title": "آلة حاسبة علمية متقدمة",
    "price": "75 جنيه",
    "seller": "كلية الهندسة"
  },
  {
    "image": "https://www.noor-book.com/publice/covers_cache_webp/18/3/5/8/f5ca68345a3581763b8f683aa749902a.jpg.webp",
    "title": "كتاب مبادئ الاقتصاد الجزئي",
    "price": "50 جنيه",
    "seller": "كلية إدارة الأعمال"
  },
  {
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCvp6AJEXeAG6H95SU6HeBCpK-UK9TYS5ajpUxJIMw42lr0SJ6HtTeqO76z5eSBDsMAj8&usqp=CAU",
    "title": "كتاب تشريح جسم الإنسان",
    "price": "120 جنيه",
    "seller": "كلية الطب"
  },
  {
    "image": "https://www.raneen.com/media/catalog/product/5/0/509._zyigsgeaq5wiq76w.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=&width=",
    "title": "آلة حاسبة علمية متقدمة",
    "price": "75 جنيه",
    "seller": "كلية الهندسة"
  },
  {
    "image": "https://www.raneen.com/media/catalog/product/5/0/509._zyigsgeaq5wiq76w.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=&width=",
    "title": "آلة حاسبة علمية متقدمة",
    "price": "75 جنيه",
    "seller": "كلية الهندسة"
  },
  {
    "image": "https://www.noor-book.com/publice/covers_cache_webp/18/3/5/8/f5ca68345a3581763b8f683aa749902a.jpg.webp",
    "title": "كتاب مبادئ الاقتصاد الجزئي",
    "price": "50 جنيه",
    "seller": "كلية إدارة الأعمال"
  },
  {
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCvp6AJEXeAG6H95SU6HeBCpK-UK9TYS5ajpUxJIMw42lr0SJ6HtTeqO76z5eSBDsMAj8&usqp=CAU",
    "title": "كتاب تشريح جسم الإنسان",
    "price": "120 جنيه",
    "seller": "كلية الطب"
  },
  {
    "image": "https://www.raneen.com/media/catalog/product/5/0/509._zyigsgeaq5wiq76w.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=&width=",
    "title": "آلة حاسبة علمية متقدمة",
    "price": "75 جنيه",
    "seller": "كلية الهندسة"
  },
];