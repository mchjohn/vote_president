import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
          color: const Color(0xff108B64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Eleições 2022',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffFCFCFC),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4)),
                  Text(
                    '02/10/2022',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff024221),
                    ),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
              const Center(
                child: Text(
                  'Vote no próximo presidente do Brasil',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFCFCFC),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
