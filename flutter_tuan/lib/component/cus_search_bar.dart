import 'package:flutter/material.dart';

class CusSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/sousuo.png',width: 17,),
    Expanded(
      flex: 1,
      child: TextField(
        controller:TextEditingController() ,
        autofocus: false,
      ),
    ),
        Icon(Icons.arrow_back_ios),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 20,
          child: Stack(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: '',
                ),
              ),
              Positioned(
                left: 4,
                child: Icon(Icons.search),
              ),
              Positioned(
                right: 4,
                child: Icon(Icons.mic),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          '搜索',
          style: TextStyle(color: Colors.lightBlueAccent),
        )
      ],
    );
  }
}
