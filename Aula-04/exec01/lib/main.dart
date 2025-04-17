import 'package:flutter/material.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Formulário Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();

    void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final phone = _phoneController.text;
      final dob = _dobController.text;

      final snackBar = SnackBar(
        content: Text('Nome: $name\nTelefone: $phone\nNascimento: $dob'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulário Flutter'), backgroundColor: Colors.blue,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nome', prefixIcon: Icon(Icons.person)),
                validator: (value) =>
                    value!.isEmpty ? 'Por favor, adicione o nome' : null,
              ),
              TextFormField(
                controller: _phoneController,
                inputFormatters: [MaskTextInputFormatter(mask: "(##)#####-####")],
                decoration: const InputDecoration(labelText: 'Telefone', prefixIcon: Icon(Icons.phone)),
                keyboardType: TextInputType.phone,
                validator: (value) =>
                    value!.isEmpty ? 'Por favor, adicione o telefone' : null,
              ),
              TextFormField(
                controller: _dobController,
                inputFormatters: [MaskTextInputFormatter(mask: "##/##/####")],
                decoration: const InputDecoration(labelText: 'Nascimento', prefixIcon: Icon(Icons.calendar_month)),
                validator: (value) =>
                    value!.isEmpty ? 'Por favor, adicione a data de nascimento' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueGrey
                ),
                onPressed: _submitForm,
                child: const Text('Enviar', ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}