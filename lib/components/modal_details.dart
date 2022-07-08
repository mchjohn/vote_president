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
        Column(
          children: const <Widget>[
            Text(
              '50,00% - 197.429 VOTOS',
              style: TextStyle(
                color: Color(0xff545752),
                fontWeight: FontWeight.w600,            
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 8.0, 0, 30.0),
              child: Text(
                'Lula',
                style: TextStyle(
                  color: Color(0xff041B10),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
        Column(           
          children: const <Widget> [
            Text(
              'VICE-PRESIDENTE',
              style: TextStyle(
                color: Color(0xff545752),
                fontSize: 16.0,
                fontWeight: FontWeight.w400
              ),
            ),
            Text(
              'Diógenes Alencar',
              style: TextStyle(
                color: Color(0xff041B10),
                fontSize: 19.0,
                fontWeight: FontWeight.w600
              ),
            ),
          ]
        ),
        const SizedBox(
          width: 370.0,
          child: Divider(          
            height: 80.0,
            thickness: 1.0,
            color: Color(0xffA3A9A7),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              child: Column(                         
              mainAxisAlignment: MainAxisAlignment.center,  
              crossAxisAlignment: CrossAxisAlignment.start,              
              children: const <Widget>[
                Text(
                'PARTIDO',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff545752),                  
                ),
                ),
                Text(
                'PT',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff041B10),
                  fontWeight: FontWeight.w700
                ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'MANDATOS',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff545752)
                  ),
                ),                  
                Text(
                  '2019 À 2022',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff041B10),
                    fontWeight: FontWeight.w700
                  ),
                ),                
              ],
            ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                  'COLIGAÇÃO',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff545752)
                  ),
                  ),                  
                  Text(
                  'PMBA, PRTB, PSD',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff041B10),
                    fontWeight: FontWeight.w700
                  ),                  
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                  'NASCIMENTO',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff545752)
                  ),
                  ),                  
                  Text(
                  '21 DE MARÇO DE 1955 GLICÉRIO, SP',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff041B10),
                    fontWeight: FontWeight.w700
                  ),
                  ),
                ],
              )
            )
          ],
        ),
      ],
    );
  }
}