// SPDX-FileCopyrightText: 2022 Iconica
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:bottom_alert_dialog/bottom_alert_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const BottomAlertDialogDemo(),
      builder: (context, child) {
        return BottomAlertDialogConfig(
          child: child ?? const SizedBox.shrink(),
        );
      },
    ),
  );
}

class BottomAlertDialogDemo extends StatelessWidget {
  const BottomAlertDialogDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Alert Dialog Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BottomAlertDialog.singleButton(
                      closeButton: true,
                      title: const Text('Confirm'),
                      body: const Text(
                        'Click the button to dismiss',
                      ),
                      buttonText: 'Ok',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
                  },
                );
              },
              child: const Text('BottomAlertDialog.singleButton'),
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BottomAlertDialog.multiButton(
                      title: const Text('Favorite Color'),
                      body: const Text(
                        'Choose your favorite color',
                      ),
                      buttons: [
                        BottomAlertDialogAction(
                          text: 'Red',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          buttonType: ButtonType.primary,
                        ),
                        BottomAlertDialogAction(
                          text: 'Green',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          buttonType: ButtonType.primary,
                        ),
                        BottomAlertDialogAction(
                          text: 'Blue',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          buttonType: ButtonType.primary,
                        ),
                        BottomAlertDialogAction(
                          text: 'Yellow',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          buttonType: ButtonType.primary,
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('BottomAlertDialog.multiButton'),
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BottomAlertDialog.singleButtonIcon(
                      closeButton: true,
                      title: const Text('Confirm'),
                      body: const Text(
                        'Click the button to dismiss',
                      ),
                      icon: const Icon(
                        Icons.info,
                        color: Colors.blue,
                      ),
                      buttonText: 'Ok',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    );
                  },
                );
              },
              child: const Text('BottomAlertDialog.singleButtonIcon'),
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BottomAlertDialog.icon(
                      closeButton: true,
                      title: const Text('Favorite Car'),
                      body: const Text(
                        'Choose your favorite car brand',
                      ),
                      icon: const Icon(
                        Icons.car_rental_sharp,
                      ),
                      buttons: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('BMW'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Opel'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Mercedes'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Kia'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Skoda'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('BottomAlertDialog.icon'),
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BottomAlertDialog.yesOrNo(
                      title: const Text('Question'),
                      body: const Text(
                        'Do you really wanna do this?',
                      ),
                      onYes: () {
                        Navigator.of(context).pop();
                      },
                      onNo: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                );
              },
              child: const Text('BottomAlertDialog.yesOrNo'),
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BottomAlertDialog.yesOrNoIcon(
                      title: const Text('Question'),
                      body: const Text(
                        'Do you really wanna do this?',
                      ),
                      onYes: () {
                        Navigator.of(context).pop();
                      },
                      onNo: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.question_mark_sharp,
                        color: Colors.red,
                      ),
                    );
                  },
                );
              },
              child: const Text('BottomAlertDialog.yesOrNoIcon'),
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BottomAlertDialog.custom(
                      closeButton: true,
                      body: SizedBox(
                        height: 100,
                        child: Column(
                          children: [
                            const Text('Custom Dialog with PageView'),
                            Flexible(
                              child: PageView(
                                children: [
                                  Container(
                                    child: const Center(child: Text('Page 1')),
                                  ),
                                  Container(
                                    child: const Center(child: Text('Page 2')),
                                  ),
                                  Container(
                                    child: const Center(child: Text('Page 3')),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      buttons: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('BottomAlertDialog.custom'),
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Multiple chained dialogs'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BottomAlertDialog.yesOrNo(
                      closeButton: true,
                      title: const Text('Pokémon'),
                      body: const Text(
                        'Do you want to choose your starter Pokémon?',
                      ),
                      onYes: () {
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (context) => BottomAlertDialog.multiButton(
                            title: const Text('Starter Pokémon'),
                            body: const Text('Choose a starter Pokémon'),
                            buttons: [
                              BottomAlertDialogAction(
                                text: 'Turtwig',
                                buttonType: ButtonType.secondary,
                                onPressed: () =>
                                    _showDoneDialog(context, 'Turtwig'),
                              ),
                              BottomAlertDialogAction(
                                text: 'Chimchar',
                                buttonType: ButtonType.secondary,
                                onPressed: () =>
                                    _showDoneDialog(context, 'Chimchar'),
                              ),
                              BottomAlertDialogAction(
                                text: 'Piplup',
                                buttonType: ButtonType.secondary,
                                onPressed: () =>
                                    _showDoneDialog(context, 'Piplup'),
                              ),
                            ],
                          ),
                        );
                      },
                      onNo: () => Navigator.pop(context),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showDoneDialog(BuildContext context, String name) {
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => BottomAlertDialog.icon(
        title: const Text('Good choice!'),
        icon: Icon(
          Icons.catching_pokemon,
          color: Color(name.hashCode).withAlpha(255),
        ),
        body: Text('You chose $name to be your starter Pokémon.'),
        buttons: [
          const CloseButton(
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
