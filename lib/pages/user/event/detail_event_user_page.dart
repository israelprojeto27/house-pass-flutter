import 'package:flutter/material.dart';
import 'package:housepass/pages/user/event/edit_event_user_page.dart';



class DetailEventUserPage extends StatefulWidget {
  @override
  _DetailEventUserPageState createState() => _DetailEventUserPageState();
}

class _DetailEventUserPageState extends State<DetailEventUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Detalhes Evento')),
        body: Container(
            child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Image.asset(
                'assets/images/event/img_event1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon (Icons.edit),
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditEventUserPage()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon (Icons.delete),
                  color: Colors.redAccent,
                  onPressed: () {
                    showAlertDialogDelete(context);
                  },
                ),
              ],
            ),
            Text(
              'Grande Feirão Caixa',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'inumeros apartamentos com preço abaixo do mercado',
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              '11/10/2021',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Participantes',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.width > 360 ? 18 : 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        )));
  }


  showAlertDialogDelete(BuildContext context) {
    // configura o button
    Widget confirmButton = ElevatedButton(
      child: Text("Confirmar"),
      onPressed: () {
        Navigator.pop(context, true);
      },
    );

    Widget cancelButton = ElevatedButton(
      child: Text("Cancelar"),
      onPressed: () {
        Navigator.pop(context, true);
      },
    );

    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Confirmar exclusão"),
      content: Text("Você deseja realmente deletar esse evento?"),
      actions: [
        cancelButton,
        confirmButton
      ],
    );
    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
}



