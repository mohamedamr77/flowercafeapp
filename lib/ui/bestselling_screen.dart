import 'package:cafeflower/widget/best_selling_widget/bestselling_body.dart';
import 'package:flutter/material.dart';

import '../cool/colorcore.dart';
import '../cool/imagecore.dart';
import '../widget/best_selling_widget/gridview_bestselling.dart';

class BestSellingScreen extends StatelessWidget {
  const BestSellingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBestSellingBody();
  }
}
