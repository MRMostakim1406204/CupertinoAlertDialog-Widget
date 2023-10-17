import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  
  @override 
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
      title: Text("CupertinoAlertDialog"),
      centerTitle: true,
      ),
        body: Center(
        child: CupertinoButton(
          alignment: Alignment.center,
          borderRadius: BorderRadius.circular(15),
          color: Colors.pink,
          child: Text("Press"),
           onPressed: (){
            showDialog(context: context, builder: (context){
              return CupertinoAlertDialog(
                 title: Text("Do You Have An Account?"),
                 content: Text("Please Confirm"),
                 actions: [
                  CupertinoDialogAction(child: Text("No"),
                  onPressed: ()=> Navigator.pop(context),
                  ),
                  CupertinoDialogAction(child: Text("Yes"),
                  onPressed: ()=> Navigator.pop(context),)
                 ],
              );
            });
           }),
      ),
    );
  }
}