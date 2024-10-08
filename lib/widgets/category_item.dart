import 'package:ag_market/widgets/selected_category_item.dart';
import 'package:ag_market/widgets/un_selected_category_item.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.categoryName, this.isActive = false, required this.onPressed});

  final String categoryName;
  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: SelectedCategoryItem(
        categoryName: categoryName,
      ),
      secondChild: UnSelectedCategoryItem(
        onPressed: onPressed,
        categoryName: categoryName,
      ),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(
        milliseconds: 300,
      ),
    );
  }
}
