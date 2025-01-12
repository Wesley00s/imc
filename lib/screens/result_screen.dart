import 'package:flutter/material.dart';

import '../model/Result.dart';
import '../res/app_color.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late Result result;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      result = args['result'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
        title : const Row(
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
        child :
          Padding(
            padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 30),

                    const Text('Seu índice de massa corporal é : ',
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 22),
                    textAlign: TextAlign.center),

                    const SizedBox(height: 10),

                    Text(result.value.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 46)),

                    const SizedBox(height: 10),

                    Text(result.imcResponse, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40,
                    color: AppColor.primaryColor)),

                    const SizedBox(height: 10),

                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(image: result.decorationImage)

                    ),

                    const SizedBox(height: 10),

                    Container(
                      width: 350,
                      height: 270,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'ATENÇÃO',
                            style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                              color: AppColor.tertiaryColor,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          const Padding(
                            padding : EdgeInsets.only(bottom: 10),
                            child:
                            const Text(
                              'Existe uma diferença entre massa corporal e gordura corporal.',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              '* Massa corporal é o peso total do corpo, que inclui músculos, ossos, órgãos e gordura.',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              '* Gordura corporal refere-se à quantidade de gordura no corpo, que em excesso pode prejudicar a saúde.',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                ),
               ],
             ),
          ),
      ),
    );
  }
}
