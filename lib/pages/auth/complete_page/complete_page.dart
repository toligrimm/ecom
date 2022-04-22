import 'package:ecom/form_error.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CompletePage extends StatefulWidget {
  static String routeName = "/complete_page";
  const CompletePage({Key? key}) : super(key: key);

  @override
  State<CompletePage> createState() => _CompletePageState();
}

class _CompletePageState extends State<CompletePage> {
  final List<String?> errors = [];
  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Form(
        child: Column(
          children: [
            const Text('Регистрация учетки',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28,
                )),
            const Text('Заполни форму', textAlign: TextAlign.center,
              style: TextStyle(
                color: CupertinoColors.secondaryLabel,
                fontSize: 18,
              ),),
            FormError(errors: errors),
            TextFormField(

              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: kNamelNullError);
                }
              },
              validator: (value) {
                if (value!.isEmpty && !errors.contains(kNamelNullError)) {
                  setState(() {
                    errors.add(kNamelNullError);
                  });
                  if (!emailValidatorRegExp.hasMatch(value) &&
                      !errors.contains(kNamelNullError)) {
                    setState(() {
                      errors.add(kNamelNullError);
                    });
                  }
                }
                return null;
              },
              decoration: InputDecoration(
                  labelText: 'Почта',
                  hintText: 'Введи почту',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: CupertinoColors.systemOrange,
                    ),
                    gapPadding: 10,
                  ),
                  suffixIcon: const Icon(CupertinoIcons.mail),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: CupertinoColors.systemOrange,
                    ),
                    gapPadding: 10,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
