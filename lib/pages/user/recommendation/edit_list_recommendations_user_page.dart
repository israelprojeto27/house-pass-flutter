import 'package:flutter/material.dart';
import 'package:housepass/models/recomendacao_user_model.dart';

class EditListRecommendationsUserPage extends StatefulWidget {
  @override
  _EditListRecommendationsUserPageState createState() => _EditListRecommendationsUserPageState();
}

class _EditListRecommendationsUserPageState extends State<EditListRecommendationsUserPage> {

  List<RecomendacaoUserModel> recomendacoes = _loadRecomendacoesUser();
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edição Recomendações'),
      ),
      body: Column(
        children: recomendacoes
            .map((item) => ListTile(
              leading: ClipOval(
                child: Image.asset(item.userImageUrl),
              ),
              title: Text(item.userName),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4,),
                  Text(
                    item.descricaoRecomendacao,
                    style: TextStyle(
                        color: Colors.red),
                  ),
                  SizedBox(height: 16,)
                ],
              ),
              trailing: IconButton(icon: Icon(Icons.delete),onPressed: () {
                _showDialogConfirmDelete(context);
              },),
              isThreeLine: true,))
            .toList(),
      ),
    );
  }

  static List<RecomendacaoUserModel> _loadRecomendacoesUser() {
    List<RecomendacaoUserModel> list = [];
    RecomendacaoUserModel recommendation = RecomendacaoUserModel('Raphael Pinheiro', 'assets/images/user/img_raphael.jpg', 'Corretor', '1', 'A Claudia é uma excelente profissional com larga experiencia no mercado');
    list.add(recommendation);

    recommendation = RecomendacaoUserModel('Veronica Duraes', 'assets/images/user/img_veronica.jpg', 'Cliente', '2', 'Fiz muitos negócios com a Claúdia e ela sempre foi uma excelente profissional');
    list.add(recommendation);

    recommendation = RecomendacaoUserModel('Roana Robredo', 'assets/images/user/img_roana.jpg', 'Cliente', '3', 'Grande corretora do Rio de Janeiro e eu aprovo');
    list.add(recommendation);

    return list;
  }

  void _showDialogConfirmDelete(BuildContext context) {
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
      title: Text("Confirmação de exclusão"),
      content: Text("Você deseja realmente remover esta recomendação?"),
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
