import 'package:flutter/material.dart';

class CreateEventUserPage extends StatefulWidget {
  @override
  _CreateEventUserPageState createState() => _CreateEventUserPageState();
}

class _CreateEventUserPageState extends State<CreateEventUserPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Criar Evento')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    child: Icon(
                      Icons.image,
                      size: 120.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Nome'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Descrição'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: dateController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Data'),
                    onTap: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2001),
                              lastDate: DateTime(2222))
                          .then((date) {
                        setState(() {
                          dateController.text = date!.day.toString() + "/" + date.month.toString() + "/" + date.year.toString() ;
                        });
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: timeController ,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Horário'),
                    onTap: (){
                      showTimePicker(context: context, initialTime: TimeOfDay.now()).then((time){
                        setState(() {
                          timeController.text = time!.hour.toString() + ":" + time.minute.toString();
                        });
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Criar'),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
