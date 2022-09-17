import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
const String imageUrl='https://i.pinimg.com/originals/0b/f9/8e/0bf98ec36bd8421f4580e5708a0c9ed7.jpg';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  imageUrl,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {
                      print('Item Clicked');
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    tileColor: Colors.grey,
                    title: Text('My Beautiful Car'),
                    subtitle: Text('Mohammadpur,Dhaka, Bangladesh'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star,color: Colors.red,),
                        Text('99')
                      ],
                    ),
                    leading: Icon(Icons.favorite,color: Colors.redAccent,),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterLogo(size: 30,),
                    const Text('Hello Flutter',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.purple,
                          letterSpacing: 1.5,
                      ),
    ),
                    Icon(Icons.person,size: 30, color: Colors.purple,),
                    const Text('My Profile',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.purple,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(txt,textAlign: TextAlign.justify,),
                ),
              ],
            ),
          ),
        ),
      ),
  ),
  ));
}

const String txt = '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.''';

