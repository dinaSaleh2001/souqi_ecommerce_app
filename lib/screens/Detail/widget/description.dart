import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;

  const Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // استخدم Expanded للزر الأول ليأخذ جزء مناسب من العرض مع تحديد حد أدنى وأقصى
            Container(
              constraints: BoxConstraints(
                minWidth: 80,
                maxWidth: screenWidth * 0.4,
                minHeight: 40,
              ),
              decoration: BoxDecoration(
                color: kprimarytColor,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                "Description",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
            ),

            // بالنسبة للنصين الآخرين، اجعلهم يتقلصون إذا ضاق المكان
            const Flexible(
              child: Text(
                "Specifications",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 10),
            const Flexible(
              child: Text(
                "Reviews",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}