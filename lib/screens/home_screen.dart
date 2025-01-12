import 'package:flutter/material.dart';
import 'package:imc/res/app_color.dart';
import 'package:imc/screens/widget/gender_dropdown.dart';
import 'package:imc/screens/widget/imc_table.dart';
import 'package:imc/screens/widget/styled_button.dart';
import '../model/Result.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();

  String? selectedGender;
  String? weight;
  String? height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                'Calculadora IMC',
                style : TextStyle(fontWeight: FontWeight.bold)
            ),
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Descubra seu índice de massa corporal',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                focusNode: focusNode1,
                onSubmitted: (_) {
                  FocusScope.of(context).requestFocus(focusNode2);
                },
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Peso (Kg)',
                  hintText: '0.0',
                  hintStyle:
                      const TextStyle(color: Colors.black26, fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onChanged: (text) {
                  setState(
                    () {
                      weight = text;
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                focusNode: focusNode2,
                onSubmitted: (_) {
                  FocusScope.of(context).unfocus();
                },
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Altura (cm)',
                  hintText: '0',
                  hintStyle:
                      const TextStyle(color: Colors.black26, fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onChanged: (text) {
                  setState(
                    () {
                      height = text;
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(child:
                GenderDropdown(
                  selectedGender: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              StyledButton(
                onPressed: () {
                  if (weight != null || height != null || selectedGender != null) {
                    Navigator.pushNamed(
                      context,
                      '/result_screen',
                      arguments: {
                        'result': Result.calcResult(weight!, height!, selectedGender!),
                      },
                    );
                }
                else {
                   ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                            'Por favor, preencha ou selecione todos os campos antes de continuar!',
                            style: TextStyle(fontSize: 20)),
                        backgroundColor: AppColor.primaryColor,
                      ),
                    );
                  }
                }, text: 'Calcular',
              ),
              const SizedBox(
                height: 50,
              ),
              const IMCTable(),
            ],
          ),
        ),
      ),
    );
  }
}
