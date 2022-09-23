import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'main.dart';


const String placeHolder='https://www.pngkey.com/png/full/349-3499617_person-placeholder-person-placeholder.png';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Image.network(
                      imageUrl,
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    Card(
                      elevation: 10,
                      child: Image.network(
                          placeHolder,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    )

                  ],
                ),
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
                    MyContainer(
                      onPressed: () {
                        print('Calling...');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.call,
                            color: Colors.black,),
                          SizedBox(height: 5,),
                          Text('CALL'),
                        ],
                      ),
                    ),
                    MyContainer(
                      onPressed: () {
                        print('Opening Map...');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.navigation,
                            color: Colors.black,),
                          SizedBox(height: 5,),
                          Text('ROUTE'),
                        ],
                      ),
                    ),
                    MyContainer(
                      onPressed: () {
                        print('Sharing...');
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.share,
                            color: Colors.black,),
                          SizedBox(height: 5,),
                          Text('SHARE'),
                        ],
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
    );
  }
}
