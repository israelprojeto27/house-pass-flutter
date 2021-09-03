
import 'package:flutter/material.dart';

class TimelinePostImovelDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Image.asset(
                'assets/images/imovel/img_imovel_1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Luxo Palace Residence', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text('R\$ 1.500.00,00', style: TextStyle(fontSize: 22)),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Casa', style: TextStyle(fontSize: 14)),
                    Text('Venda', style: TextStyle(fontSize: 14)),
                    Text('300 m²', style: TextStyle(fontSize: 14)),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('3 banheiros', style: TextStyle(fontSize: 14)),
                    Text('2 quartos', style: TextStyle(fontSize: 14)),
                    Text('1 suite', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          ],
        )
    );
  }
}