import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ModelsDropDownWidget extends StatefulWidget {
  const ModelsDropDownWidget({super.key});

  @override
  State<ModelsDropDownWidget> createState() => _ModelsDropDownWidgetState();
}

class _ModelsDropDownWidgetState extends State<ModelsDropDownWidget> {
  String currentModel = 'Model1';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      dropdownColor: scaffoldBackgroundColor,
      iconEnabledColor: Colors.white,
      value: currentModel,
      items: getModelsItem,
      onChanged: (value) {
        setState(() {
          currentModel = value.toString();
        });
      },
    );
  }
}
