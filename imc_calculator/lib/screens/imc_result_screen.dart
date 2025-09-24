import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height ;
  final int weight;
  final int age;
  final String gender;

  const ImcResultScreen({super.key, required this.height, required this.weight, required this.age, required this.gender});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: titleResult(),
      body: bodyResult(context),
    );
  }

  Padding bodyResult(BuildContext context) {
    int imcAge =age;
    String imcGender = gender;
    double fixedHeight = height/100;
    double imcResult = weight/(fixedHeight*fixedHeight);
    
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text("Tu resultado", style: TextStyles.secondaryText,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.backgroundComponents,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Sexo $imcGender", style: TextStyles.secondaryText,textAlign: TextAlign.center),
                      Text("Tu edad es $imcAge", style: TextStyles.secondaryText,textAlign: TextAlign.center),
                      Text(getTextByImc(imcResult), style: TextStyle(color: getColorByImc(imcResult), fontSize: 38,fontWeight: FontWeight.bold),),
                      Text("Tu resultado es ${imcResult.toStringAsFixed(2)}", style: TextStyles.secondaryText,textAlign: TextAlign.center),
                      Text(getDescriptionByImc(imcResult), style: TextStyles.secondaryText, textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
            ),
          ),
          finalizarBoton(context)
        ],
      ),
    );
  }

  SizedBox finalizarBoton(BuildContext context) {
    return SizedBox(
          height: 60,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8)
              )),
              backgroundColor: WidgetStateProperty.all(AppColors.primary),
            ), 
            child: Text("Finalizar", style: TextStyles.bodyText)),
        );
  }


  AppBar titleResult() {
    return AppBar(
      title: Text("Resultado"),
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    );
  }

  Color getColorByImc(double imcResult){
    return switch(imcResult) {
      < 18.5 => Colors.blue, //IMC BAJO
      < 24.9 => Colors.green, //IMC NORMAL
      < 29.9 => Colors.orange, //SOBREPESO
      _ => Colors.red, //OBESIDAD LA RAYA ES EL ELSE
    };
  }

  String getTextByImc(double imcResult){
    return switch(imcResult){
      < 18.5 => "IMC BAJO", //IMC BAJO
      < 24.9 => "IMC NORMAL", //IMC NORMAL
      < 29.9 => "SOBREPESO", //IMC NORMAL
      _ => "OBESIDAD", //OBESIDAD LA RAYA ES EL ELSE
    };
  }

  String getDescriptionByImc(double imcResult){
    return switch(imcResult){
      < 18.5 => "Tu peso esta por debajo de lo recomendado.", //IMC BAJO
      < 24.9 => "Tu peso esta en el rango saludable.", //IMC NORMAL
      < 29.9 => "Tienes sobrepeso, cuida tu alimentacion.", //IMC NORMAL
      _ => "Tienes obesidad, consulta con un especialista", //OBESIDAD LA RAYA ES EL ELSE
    };
  }
}