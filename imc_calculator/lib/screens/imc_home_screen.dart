import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';
import 'package:imc_calculator/screens/imc_result_screen.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge = 25;
  int selectedWeight = 50;
  double selectedHeight = 80;
  String selectGender = "no seleccionado";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(selectedGender: selectGender,onChangeAge: (newAge) {
          selectGender = newAge;
        },),
        HeightSelector(height: selectedHeight, onChangeHeight: (newHeight) {
          setState(() {
            selectedHeight=newHeight;
          });
        },),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(child: NumberSelector(
                title: "PESO",
                value: selectedWeight,
                onIncrement: () { //ya aca asigno las variables a modificar en la funcion
                  setState(() {
                    selectedWeight ++;
                  });
                },
                onDecrement: () {
                  setState(() {
                    selectedWeight --;
                  });
                },
                )),
              SizedBox(width: 16,),
              Expanded(child: NumberSelector( //Edad widget
                title: "EDAD",
                value: selectedAge,
                onIncrement: () {
                  setState(() {
                    selectedAge ++;
                  });
                },
                onDecrement: () {
                  setState(() {
                    selectedAge --;
                  });
                },
              ))
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => ImcResultScreen(weight: selectedWeight, height: selectedHeight, age: selectedAge, gender: selectGender,))
                );
              }, 
              style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8)
                )), //WidgetStateProperty para aplicar a todos los estados
                backgroundColor: WidgetStateProperty.all(AppColors.primary)
              ),
              child: Text("CALCULAR", style: TextStyles.bodyText,)
            )),
        )     
      ],
    );
  }
}