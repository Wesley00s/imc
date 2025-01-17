
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:imc/res/media.dart';

class Result {
  final double value;
  final String imcResponse;
  final DecorationImage decorationImage;

  const Result({required this.value, required this.imcResponse, required this.decorationImage});

  static calcResult(String weight, String height, String gender) {
    double weightDouble = double.parse(weight);
    double heightDouble = double.parse(height);
    double value = weightDouble / (pow((heightDouble / 100), 2));
    String imcResponse = "Indefinido ainda";
    AssetImage assetImage = const AssetImage(AppMedia.normalMale);

    if (value <= 18.59) {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.underweightMale);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.underweightFemale);
          break;
      }
      imcResponse = "Abaixo do peso";
    }
    else if (value >= 18.6 && value <= 24.99) {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.normalMale);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.normalFemale);
          break;
      }
      imcResponse = "Peso normal";
    }
    else if (value >= 25.0 && value <= 29.99) {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.overweightMale);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.overweightFemale);
          break;
      }
      imcResponse = "Sobrepeso.";
    }
    else if (value >= 30.0 && value <= 39.99) {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.obeseMale);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.obeseFemale);
          break;
      }
      imcResponse = "Obesidade";
    }
    else {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.severelyObeseMale);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.severelyObeseFemale);
          break;
      }
      imcResponse = "Obesidade grave";
    }
    return Result(value: value, imcResponse: imcResponse, decorationImage: DecorationImage(image: assetImage));
  }
}

