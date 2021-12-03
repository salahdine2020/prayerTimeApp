import 'package:flutter/material.dart';
import 'package:prayertimes/utilities/constants/strings.dart';
import 'locationpage.dart';

class NamePage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            //color: Colors.orange,
            child: Image.asset('assets/images/profile2.png'),
          ),
          SizedBox(
            height: 16,
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: TextFormField(
                controller: nameController,
                maxLength: 8,
                decoration: InputDecoration(
                  labelText: "الأسم",
                  helperText: "لا تتجاوز",
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.black45,
                  ),
                  suffixIcon: Icon(
                    Icons.account_box,
                    color: Colors.black45,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  hintText: "أكتب أسمك..",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(namesuccestxt),
                  ),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LocationPage2(),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.redAccent,
                    content: Text(wrongnametxt),
                  ),
                );
              }
            },
            child: const Text(buttonnametxt),
          ),
        ],
      ),
    );
  }
}
