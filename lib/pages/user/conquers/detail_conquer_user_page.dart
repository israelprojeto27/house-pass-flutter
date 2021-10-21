import 'package:flutter/material.dart';

class DetailConquerUserPage extends StatefulWidget {
  @override
  _DetailConquerUserPageState createState() => _DetailConquerUserPageState();
}

class _DetailConquerUserPageState extends State<DetailConquerUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes Conquista'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 2,
            child: Image.asset(
              'assets/images/imovel/img_imovel_2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Venda em leilão deste predio luxuoso',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            maxLines: 3,
          ),
          SizedBox(height: 8),
          Text('22/10/2021')
        ],
      ),
    );
  }
}
