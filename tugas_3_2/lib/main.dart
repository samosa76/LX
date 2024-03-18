import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: const Text(
              'NEW RECIPE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              TextButton(
                child: const Text(
                  'CLOSE',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            addAutomaticKeepAlives: false,
            children: const [
              MyCustomForm(),
            ],
          )),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          color: Colors.red[400],
          child: const Text(
            'Super Cool you are creating new recipe! \nLet\'s get started',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Give your recipe name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Menu name",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    'Estimated Time of Completion (minutes)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "ETC",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Insert Description Menu",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 12),
                  child: Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  maxLines: 3,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    hintText: "Insert Description Menu",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24, bottom: 12),
                  child: Text(
                    'Recipe, Ingredient, and Steps',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  maxLines: 6,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    hintText: "Insert recipe and how to cook",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
