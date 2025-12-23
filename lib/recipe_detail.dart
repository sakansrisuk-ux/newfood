import 'package:flutter/material.dart';
import 'package:myapp/Models/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Detail')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ปรับขนาดรูปภาพ
            Image.asset(
              widget.recipe.imageUrl,
              height: 200, // กำหนดความสูงของรูปภาพ
              width: 400, // กำหนดความกว้างของรูปภาพ
              fit: BoxFit.cover, // วิธีการครอบภาพ
            ),
            const SizedBox(height: 16),
            // แสดงชื่อเมนู
            Text(
              widget.recipe.imgLabel,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            // แสดงคำอธิบายของสูตร
            const SizedBox(height: 8),
            Text(
              widget.recipe.description,
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 16),

            // แสดงส่วนผสมของอาหาร
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  final adjustedQuantity = ingredient.quantity * sliderValue;

                  return Text(
                    '${adjustedQuantity} ${ingredient.unit} ${ingredient.name}',
                    style: const TextStyle(fontSize: 16.0),
                  );
                },
                itemCount: widget.recipe.ingredients.length,
              ),
            ),

            SizedBox(height: 20),

            // Slider สำหรับเลือกจำนวนการเสิร์ฟ
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${sliderValue} servings',
              value: sliderValue.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  sliderValue = newValue.round();
                });
              },
            ),
            Text(
              'Servings: $sliderValue',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
