// SPDX-FileCopyrightText: 2022 Iconica
//
// SPDX-License-Identifier: BSD-3-Clause

import 'package:bottom_alert_dialog/bottom_alert_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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
      body: Container(
        margin: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Start'),
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
        body: Text('You chose $name to be your started Pokémon.'),
        buttons: [
          const CloseButton(
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
