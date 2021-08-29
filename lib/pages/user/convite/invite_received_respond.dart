import 'package:flutter/material.dart';
import 'package:housepass/widgets/widget_detail_user_in_requests.dart';

class InviteReceivedRespond extends StatefulWidget {
  @override
  _InviteReceivedRespondState createState() => _InviteReceivedRespondState();
}

class _InviteReceivedRespondState extends State<InviteReceivedRespond> {

  bool isResponded = false;
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicitação de conexão'),
      ),
      body: Center(
          child: Column(
            children: [
              DetailUserWidget(),
              SizedBox(
                height: 24,
              ),
              isResponded ?
              Text(message, style: TextStyle(fontSize: 20))
              :
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      iconSize: 100,
                      onPressed: () {
                        _refuseConnection();
                      },
                      icon: Icon(Icons.cancel_outlined)),
                  IconButton(
                      iconSize: 100,
                      onPressed: () {
                        _approveConnection();
                      },
                      icon: Icon(Icons.check_circle_outline)),
                ],
              ),
            ],
          )),
    );
  }

  void _approveConnection() {
    setState(() {
      isResponded = true;
      message = 'Conexão foi estabelecida com sucesso';
    });
  }

  void _refuseConnection() {
    setState(() {
      isResponded = true;
      message = 'Conexão foi rejeitada com sucesso';
    });
  }
}
