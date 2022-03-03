import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter BLoC'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: ()
                  {
                  },

                  child:
                  Text('+',
                    style:
                    TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),),



                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text('0',style: TextStyle(fontSize: 30,),),
                ),
                FloatingActionButton(
                  onPressed: (){

                  },
                  child:Text('-',style:
                  TextStyle(
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),),

                ),
              ],
            ),
            SizedBox(height: 50,),

          ],),
      ),
    );
  }
}
