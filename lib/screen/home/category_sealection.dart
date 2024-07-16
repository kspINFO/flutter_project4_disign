import 'package:flutter/material.dart';
import 'package:project3_day5/models/data_model.dart';

class CategorySelection extends StatefulWidget {
  const CategorySelection({super.key});

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  int selectIndex = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        height: size.height * 0.05,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Column(
                  children: [
                    Text(
                      categoryList[index],
                      style: TextStyle(
                        color: selectIndex == index
                            ? Colors.black
                            : Colors.black26,
                        fontSize: 18,
                        fontWeight: selectIndex == index
                            ? FontWeight.w500
                            : FontWeight.normal,
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: selectIndex == index
                            ? Color.fromARGB(255, 244, 6, 153)
                            : Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
