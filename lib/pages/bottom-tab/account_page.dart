import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                child: Image.asset('assets/images/user/img_francine.jpg'),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
            ),
            SizedBox( height: 16,),
            Text('Francyne Neves'),
            Text('francyne@gmail.com'),
            SizedBox(height: 16,),
            Container(
              child: Column (
                children: [
                  Card(elevation: 8.0,
                  child: Column (
                    children: [
                      Text('Informações Básicas')
                    ],
                  ))
                ],
              )
            )
          ],
        ));
  }
}
