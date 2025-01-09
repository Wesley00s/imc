
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:imc/res/media.dart';

class Result {
  final double result;
  final DecorationImage decorationImage;

  const Result({required this.result, required this.decorationImage});
  
  static Result calcResult(String weight, String height, String gender) {
    double weightDouble = double.parse(weight);
    double heightDouble = double.parse(height);
    double result = weightDouble / (pow((heightDouble / 100), 2));
    AssetImage assetImage = const AssetImage(AppMedia.normalMale);

    if (result <= 18.5) {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.underweightMale);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.underweightFemale);
          break;
      }
    } else if (result >= 18.6 && result <= 24.9) {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.normalMale);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.normalFemale);
          break;
      }
    } else if (result >= 25.0 && result <= 29.9) {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.overweightMale);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.overweightFemale);
          break;
      }
    } else if (result >= 30.0 && result <= 34.9) {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.obeseMale1);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.obeseFemale1);
          break;
      }
    } else if (result >= 35.0 && result <= 39.9) {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.obeseMale2);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.obeseFemale2);
          break;
      }
    } else {
      switch (gender) {
        case 'Masculino':
          assetImage = const AssetImage(AppMedia.obeseMale3);
          break;
        case 'Feminino':
          assetImage = const AssetImage(AppMedia.obeseFemale3);
          break;
      }
    }

    return Result(result: result, decorationImage: DecorationImage(image: assetImage));
  }
}

