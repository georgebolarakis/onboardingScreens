//it will output a single category item in our grid of categories
import 'package:flutter/material.dart';
import 'package:onboarding_screen/page/onboarding_page.dart';

import './testWidget.dart';

class TestWidget extends StatelessWidget {
  //const CategoryItem({Key? key}) : super(key: key);

  // final String id;
  // final String title;
  // final Color color;

  // CategoryItem(
  //   this.id,
  //   this.title,
  //   this.color,
  // );

  // //we use this method to move between screens
  // // void selectCategory(BuildContext ctx) {
  // //   //the navigator needs to be connected to context that has information about the widget tree
  // //   Navigator.of(ctx).push(
  // //     MaterialPageRoute(builder: (_) {
  // //       return CategoryMealsScreen(id, title);
  // //     },),
  // //   );
  // // }

  // void selectCategory(BuildContext ctx) {
  //   //the navigator needs to be connected to context that has information about the widget tree
  //   Navigator.of(ctx).pushNamed(title, arguments: {
  //     "id": id,
  //     "title": title,
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    //to make the container selectable we wrap it in a gestureRecognizer widget or an IkWell
    //that fires up a wripple effect
    return InkWell(
      //splashColor: Theme.of(context).primaryColor,
      //borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        // child: Text(
        //   //title,
        //   style: Theme.of(context).textTheme.subtitle1,
        // ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(200, 100, 100, 0.7)
              // color.withOpacity(0.7),
              // color,
            ],
            //we need to control the direction
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          //to set up round corners
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
