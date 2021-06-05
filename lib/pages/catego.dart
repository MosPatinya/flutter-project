import 'package:flutter/material.dart';
import 'iconmenu.dart';
import 'iconmenu_viewmodel.dart';

class Catego extends StatelessWidget {
final List<IconMenu> _menus = IconmenuViewModel().getIconMenu();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, mainAxisSpacing: 2),
        itemBuilder: (context, index) {
          final IconMenu menu = _menus[index];
          return Column(
            children:[ 
              Container(
              width: 45,
              height: 45,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side:( BorderSide(
                  color: Colors.black
                ))
                ),
                padding: EdgeInsets.all(0),
                color: Colors.white,
                onPressed: () {},
                child: Image.network(menu.image,color: menu.color),
                ),
              ),
            SizedBox(height: 5,),
            Text(menu.title,
            maxLines: 2,
            textAlign: TextAlign.center,)
            ],
          );
        },
        itemCount: _menus.length,
      ),
    );
  }
}
