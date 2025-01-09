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
    return DropdownButton<String>(
      value: selectedGender,
      items: const [
        DropdownMenuItem(
          value: "Masculino",
          child: Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text("Masculino"),
          ),
        ),
        DropdownMenuItem(
          value: "Feminino",
          child: Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text("Feminino"),
          ),
        ),
      ],
      onChanged: onChanged,
      hint: const Text("Selecione o gênero"),
    );
  }
}
