import 'package:flutter/material.dart';

class ModalDetails extends StatelessWidget {
  const ModalDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,                    
          children: const <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(              
                  Icons.close,
                  size: 35.0,
                ),
              ),            
            ),
            Expanded(
              child: Padding(                
                padding: EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 65,                  
                  backgroundImage: NetworkImage('https://lifradio.com/wp-content/uploads/2021/01/johnfrusciante-kathrynvettermiller.jpg'),
                )
              ),            
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(              
                  Icons.share,
                  size: 35.0,
                ),
              ),            
            ),
          ],
        ),
        const Text(
          '50,00% - 197.429 VOTOS',
          style: TextStyle(
            color: Color(0xff545752),
            fontWeight: FontWeight.w600,            
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 8.0, 0, 30.0),
          child: Text(
            'Lula',
            style: TextStyle(
              color: Color(0xff041B10),
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}