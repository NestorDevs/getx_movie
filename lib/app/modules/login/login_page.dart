import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_movie/app/modules/login/login_controller.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) => Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.transparent,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    onChanged: _.onUsernameChanged,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                  TextField(
                    onChanged: _.onPasswordChanged,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  FlatButton(
                    onPressed: _.submit,
                    color: Colors.black,
                    child: Text(
                      'SEND',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
