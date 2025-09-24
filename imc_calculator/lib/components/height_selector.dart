

import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double height;
  final Function(double) onChangeHeight;
  const HeightSelector({super.key, required this.height, required this.onChangeHeight});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponents,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text("ALTURA", style: TextStyles.bodyText,),
              Text("${widget.height.toStringAsFixed(0)} cm",style: TextStyles.secondaryText),
              Slider(value: widget.height, onChanged: (newHeight){
                widget.onChangeHeight(newHeight);
              },
                min: 80,
                max: 220,
                divisions: 140,
                label: "${widget.height.toStringAsFixed(0)} cm",
                activeColor: AppColors.primary,
              )
            ],
          ),
        ),
      ),
    );
  }
}