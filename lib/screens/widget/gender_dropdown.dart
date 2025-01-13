import 'package:flutter/material.dart';

class GenderDropdown extends StatelessWidget {
  final String? selectedGender;
  final ValueChanged<String?> onChanged;

  const GenderDropdown({
    super.key,
    required this.selectedGender,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return DropdownButton<String>(
      value: selectedGender,
      items: [
        DropdownMenuItem(
          value: "Masculino",
          child: Padding(
            padding: EdgeInsets.only(right: deviceWidth * 0.55),
            child: const Text("Masculino"),
          ),
        ),
        DropdownMenuItem(
          value: "Feminino",
          child: Padding(
            padding: EdgeInsets.only(right: deviceWidth * 0.55),
            child: const Text("Feminino"),
          ),
        ),
      ],
      onChanged: onChanged,
      hint: const Text("Selecione o gênero"),
    );
  }
}
