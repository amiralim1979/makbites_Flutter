import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'edit_recipe_page.dart';

class UserRecipePage extends StatefulWidget {
  @override
  _UserRecipePageState createState() => _UserRecipePageState();
}

class _UserRecipePageState extends State<UserRecipePage> {
  final CollectionReference recipesCollection = FirebaseFirestore.instance.collection('user_recipes');

  void _deleteRecipe(String docId) {
    recipesCollection.doc(docId).delete();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('رسپی حذف شد')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('📜 لیست رسپی‌های کاربران'),
        backgroundColor: Color(0xFF2B4D3C),
      ),
      body: StreamBuilder(
        stream: recipesCollection.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

          return ListView(
            children: snapshot.data!.docs.map((doc) {
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ListTile(
                  title: Text(doc['name'], style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('نوع غذا: ${doc['foodType']} | پریفرنس: ${doc['allergy']}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit, color: Colors.blue),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EditRecipePage(doc: doc)),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _deleteRecipe(doc.id),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
