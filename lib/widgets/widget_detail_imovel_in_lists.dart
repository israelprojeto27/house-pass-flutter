

import 'package:flutter/material.dart';

class DetailImovelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 2,
          child: Image.asset(
            'assets/images/imovel/img_imovel_2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16, top: 18, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Luxo Palace Residence',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text('Leblon, Rio de Janeiro, RJ',
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Apartamento',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'R\$ 250.000,00',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),

            ],
          ),
        )
      ],
    );
  }
}