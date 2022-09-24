import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'main.dart';


const String imageUrl='https://i.pinimg.com/originals/0b/f9/8e/0bf98ec36bd8421f4580e5708a0c9ed7.jpg';
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
                _buildImageSection(),
                _titleSection(),
                _navigationSection(),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.purple,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                      ),
                    )
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

  Row _navigationSection() {
    return Row(
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
              Icon(
                Icons.call,
                color: Colors.black,
              ),
              SizedBox(
                height: 5,
              ),
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
              Icon(
                Icons.navigation,
                color: Colors.black,
              ),
              SizedBox(
                height: 5,
              ),
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
              Icon(
                Icons.share,
                color: Colors.black,
              ),
              SizedBox(
                height: 5,
              ),
              Text('SHARE'),
            ],
          ),
        ),
      ],
    );
  }

  Padding _titleSection() {
    return Padding(
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
            Icon(
              Icons.star,
              color: Colors.purple,
            ),
            Text('99')
          ],
        ),
        leading: Icon(
          Icons.favorite,
          color: Colors.redAccent,
        ),
      ),
    );
  }

  Stack _buildImageSection() {
    return Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                      right: 0,
                      left: 0,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                            ),
                            elevation: 10,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                imageUrl,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('My Beautiful Car',
                            style: TextStyle(
                              backgroundColor: Colors.black54,
                              fontSize: 25,
                              color: Colors.white,
                            ),)
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                      bottom: -40,
                      right: 10,
                      child: Icon(
                        Icons.favorite,
                        size: 80,
                        color: Colors.red,))


                ],
              );
  }
}
