import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  final String selectedGender;
  final Function(String) onChangeAge;
  const GenderSelector({super.key, required this.selectedGender, required this.onChangeAge});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String gender = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Hombre
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() { //llamar siempre que se modifique la interfaz ui
                gender="Masculino";
                widget.onChangeAge(gender);
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left:16,top:16,bottom:16, right: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: gender == "Masculino"
                  ? AppColors.backgroundComponentsSelected
                  : AppColors.backgroundComponents
                  ,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset("assets/images/male.png", height: 100,),
                      Text("Hombre".toUpperCase(), style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        //Mujer
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                gender="Femenino";
                widget.onChangeAge(gender);
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8,top: 16,bottom: 16,right: 16),
              child: Container(
                decoration: BoxDecoration(
                  color: gender == "Femenino"
                  ? AppColors.backgroundComponentsSelected
                  : AppColors.backgroundComponents
                  ,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset("assets/images/female.png", height: 100,),
                      Text("Mujer".toUpperCase(), style: TextStyles.bodyText),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}