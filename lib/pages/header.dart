import 'package:flutter/material.dart';
class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
         _buildInputSearch(),
       ],
    );
  }
  _buildInputSearch(){
    final SizeIcon = BoxConstraints(
    minWidth: 40,
    minHeight: 40,
  );
  final border = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.transparent,
      width: 0,
    ),
    borderRadius: const BorderRadius.all(
      const Radius.circular(4),
    ),
  );
   return Expanded(
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        isDense: true,
        enabledBorder: border,
        focusedBorder: border,
        hintText: 'ค้นหาร้านค้าและสถานที่',
        hintStyle: TextStyle(fontSize: 18, color: Colors.white),
        suffixIcon: Icon(Icons.search,color: Colors.white),
        suffixIconConstraints: SizeIcon,
        filled: true,
        fillColor: Colors.grey,
          )
        ),
      );
  }
}