import 'package:flutter/material.dart';
import 'package:housepass/models/imovel_model.dart';
import 'package:housepass/pages/imovel/detail/detail_imovel_page.dart';

class AccountDetailImovelResume extends StatefulWidget {
  final ImovelModel imovel;

  AccountDetailImovelResume({required this.imovel});

  @override
  _AccountDetailImovelResumeState createState() =>
      _AccountDetailImovelResumeState();
}

class _AccountDetailImovelResumeState extends State<AccountDetailImovelResume> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailImovelPage()),
        );
      },
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 2,
                child: Image.asset(
                  widget.imovel.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.imovel.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(widget.imovel.location, style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text(widget.imovel.price, style: TextStyle(fontSize: 22)),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(widget.imovel.type, style: TextStyle(fontSize: 14)),
                      Text(widget.imovel.action,
                          style: TextStyle(fontSize: 14)),
                      Text(widget.imovel.area, style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(widget.imovel.quantBanheiro,
                          style: TextStyle(fontSize: 14)),
                      Text(widget.imovel.quantGaragem,
                          style: TextStyle(fontSize: 14)),
                      Text(widget.imovel.quantSuite,
                          style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(
                    color: Colors.black,
                    height: 12,
                  )
                ],
              ),
            ],
          )),
    );
  }
}
