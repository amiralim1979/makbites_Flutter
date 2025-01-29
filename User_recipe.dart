import 'package:flutter/material.dart';

class UserRecipePage extends StatefulWidget {
  @override
  _UserRecipePageState createState() => _UserRecipePageState();
}

class _UserRecipePageState extends State<UserRecipePage> {
  // **لیست نمونه برای نمایش رسپی‌ها (در آینده به دیتابیس متصل می‌شود)**
  final List<Map<String, dynamic>> userRecipes = [
    {
      'name': 'سالاد مدیترانه‌ای',
      'ingredients': 'گوجه، خیار، زیتون، روغن زیتون، پنیر فتا',
      'allergy': 'فاقد گلوتن، مناسب گیاهخواران',
    },
    {
      'name': 'پاستا با سس قارچ',
      'ingredients': 'پاستا، قارچ، خامه، سیر، جعفری',
      'allergy': 'حاوی لبنیات، نامناسب برای وگان‌ها',
    },
    {
      'name': 'سوپ عدس',
      'ingredients': 'عدس، هویج، سیب‌زمینی، پیاز، لیمو',
      'allergy': 'گیاهی، فاقد گلوتن',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('رسپی‌های کاربران پریمیوم', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF2B4D3C), // همان رنگ سبز پریمیوم
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: userRecipes.length,
        itemBuilder: (context, index) {
          final recipe = userRecipes[index];
          return _recipeCard(
            name: recipe['name'],
            ingredients: recipe['ingredients'],
            allergy: recipe['allergy'],
          );
        },
      ),
    );
  }

  Widget _recipeCard({required String name, required String ingredients, required String allergy}) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4),
            Text('🛒 مواد اولیه: $ingredients', style: TextStyle(fontSize: 14)),
            SizedBox(height: 4),
            Text('⚠️ آلرژی / پریفرنس: $allergy', style: TextStyle(fontSize: 14, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
