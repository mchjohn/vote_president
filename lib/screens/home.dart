import 'package:flutter/material.dart';
import 'package:vote_president_app/components/header.dart';
import 'package:vote_president_app/components/modal_details.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomHeader(), 
          TextButton(
            onPressed: () {
              _onButtonPressed();
            }, 
            child: const Text('abrir modal'),
            style: const ButtonStyle(
              
            )
          )
        ],
      ),
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
      isScrollControlled: true,      
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15.0), 
        topRight: Radius.circular(15.0)
    )), 
      context: context, 
      builder: (context) {
        return const FractionallySizedBox(
          heightFactor: 0.8,
          child: ModalDetails(),
        );      
    });
  }
}
