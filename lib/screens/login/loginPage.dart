import 'package:flutter/material.dart';
import '../../constants.dart';

import '../../widgets/buttonNo.dart';
import '../../widgets/searchBox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

String subtitle =
    'Войдите или зарегистрируйтесь, чтобы увидеть избранные товары.';

TextEditingController phoneController = TextEditingController(text: '+7(');
final RegExp phoneRegex = RegExp(r'^[6-9]\d{9}$');

final _formKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  bool isOk = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color:
                      isOk ? Color.fromARGB(75, 115, 38, 216) : appTitleColor,
                ),
              ),
              alignment: Alignment.centerLeft,
              child: TextFormField(
                validator: (value) {
                  if (!phoneRegex.hasMatch(value!)) {
                    setState(() {
                      isOk = false;
                    });
                    return null;
                  }
                  return 'NNNNNN';
                },
                autofocus: true,
                keyboardType: TextInputType.phone,
                controller: phoneController,
                // inputFormatters: [
                //   new WhitelistingTextInputFormatter(new RegExp(r'^[0-9]*$')),
                //   new LengthLimitingTextInputFormatter(10)
                // ],
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    // helperText: 'Атауы',
                    label: Text('Мобильный телефон'),
                    labelStyle: TextStyle(color: Colors.grey),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(width: 0, style: BorderStyle.none),
                    // ),
                    border: InputBorder.none),
              ),
            ),
            if (!isOk)
              Container(
                alignment: Alignment.centerLeft,
                child: const Flexible(
                  child: Text(
                    'Неверный формат телефона. Должно быть 10 цифр',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: appTitleColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) print('Validated');
                },
                child: const Text(
                  'Продолжить без регистрации',
                  style: TextStyle(
                    color: appTitleColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Expanded(child: Container()),
            getButton('Продолжить'),
          ],
        ),
      ),
    );
  }
}
