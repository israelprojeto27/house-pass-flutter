import 'package:flutter/material.dart';

class ButtonSearchPageWidget extends StatefulWidget {

  final RangeValues priceValue;
  final String tipoAcao;
  final int indexTipoImovel;
  final String quantBanheiro;
  final String quantGaragem;
  final String quantQuarto;
  final String quantSuite;
  final RangeValues areaValue;

  ButtonSearchPageWidget(this.priceValue,
                         this.tipoAcao,
                         this.indexTipoImovel,
                         this.quantBanheiro,
                         this.quantGaragem,
                         this.quantQuarto,
                         this.quantSuite,
                         this.areaValue);

  @override
  _ButtonSearchPageWidgetState createState() => _ButtonSearchPageWidgetState();
}

class _ButtonSearchPageWidgetState extends State<ButtonSearchPageWidget> {

  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container (
      child : Padding(
        padding: const EdgeInsets.only(left: 16, right: 16,  bottom: 8),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(38.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: const Offset(0, 2),
                          blurRadius: 8.0),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 4, bottom: 4),
                    child: TextField(
                      controller: _controller,
                      onChanged: (String txt) {},
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      cursorColor: Colors.black12,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Informe uma localização',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: const BorderRadius.all(
                  Radius.circular(38.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      offset: const Offset(0, 2),
                      blurRadius: 8.0),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          print("Localizacao informada: " + _controller.text.toString());
                          print("Valor maximo: " + widget.priceValue.end.toString());
                          print("Valor minimo: " + widget.priceValue.start.toString());
                          print("Tipo Acao: " + widget.tipoAcao);
                          print("Index Tipo Imovel: " + widget.indexTipoImovel.toString());
                          print("Quant. Garagem: " + widget.quantGaragem);
                          print("Quant. Banheiro: " + widget.quantBanheiro);
                          print("Quant. Suite: " + widget.quantSuite);
                          print("Quant. Quarto: " + widget.quantQuarto);

                          print("Area maximo: " + widget.areaValue.end.toString());
                          print("Area minimo: " + widget.areaValue.start.toString());
                        },
                        icon: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

