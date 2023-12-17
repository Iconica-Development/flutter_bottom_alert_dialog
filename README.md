[![pub package](https://img.shields.io/pub/v/bottom_alert_dialog.svg)](https://github.com/Iconica-Development) [![Build status](https://img.shields.io/github/workflow/status/Iconica-Development/flutter_bottom_alert_dialog/CI)](https://github.com/Iconica-Development/flutter_bottom_alert_dialog/actions/new) [![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart) 

Bottom Alert Dialog widget.

![Bottom Alert Dialog GIF](flutter_bottom_alert_dialog.gif)

Figma Design that defines this component (only accessible for Iconica developers): https://www.figma.com/file/4WkjwynOz5wFeFBRqTHPeP/Iconica-Design-System?type=design&node-id=356%3A3332&mode=design&t=XulkAJNPQ32ARxWh-1
Figma clickable prototype that demonstrates this component (only accessible for Iconica developers): https://www.figma.com/proto/4WkjwynOz5wFeFBRqTHPeP/Iconica-Design-System?type=design&node-id=340-611&viewport=-243%2C199%2C0.3&t=XulkAJNPQ32ARxWh-0&scaling=min-zoom&starting-point-node-id=430%3A15520&show-proto-sidebar=1

## Setup

To use this package, add `flutter_bottom_alert_dialog` as a dependency in your pubspec.yaml file.

## How to use

To configure the bottom alert dialog use the `BottomAlertDialogConfig` inherited widget.
Make sure that `BottomAlertDialog` is a child of `BottomAlertDialogConfig` so that `BottomAlertDialogConfig` can be read from the build context.
To ensure that `BottomAlertDialogConfig` is available in the widget builder of `showDialog()` implement the `MaterialApp` builder like this:
```dart
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
``` 

### Show dialog

You can use one of the built in Flutter dialog functions to show a dialog like this:
```dart
 showDialog(
    context: context,
    builder: (context) => BottomAlertDialog.yesOrNo(
    title: const Text('Dialog'),
    body: const Text('Are you sure?'),
    onYes: () {},
    onNo: () {},
    ),
);
```

See the [Example Code](example/lib/main.dart) for an example on how to use this package.

## Issues

Please file any issues, bugs or feature request as an issue on our [GitHub](https://github.com/Iconica-Development/flutter_bottom_alert_dialog) page. Commercial support is available if you need help with integration with your app or services. You can contact us at [support@iconica.nl](mailto:support@iconica.nl).

## Want to contribute

If you would like to contribute to the plugin (e.g. by improving the documentation, solving a bug or adding a cool new feature), please carefully review our [contribution guide](./CONTRIBUTING.md) and send us your [pull request](https://github.com/Iconica-Development/flutter_bottom_alert_dialog/pulls).

## Author

This `bottom_alert_dialog` for Flutter is developed by [Iconica](https://iconica.nl). You can contact us at <support@iconica.nl>