import 'package:flutter/material.dart';
import 'package:vote_president_app/components/candidate_list.dart';
import 'package:vote_president_app/components/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: const [CustomHeader(), CandidateList()],
          );
        },
      ),
    );
  }
}
