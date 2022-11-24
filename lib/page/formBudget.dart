import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/budget.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:flutter/services.dart';

class FormBudgetPage extends StatefulWidget {
  const FormBudgetPage({super.key});

  @override
  State<FormBudgetPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<FormBudgetPage> {
  final _formKey = GlobalKey<FormState>();

  String judulBudget = "";
  String nominalBudget = "";
  String jenisBudget = "";
  List<String> listDropdown = ['Pengeluaran', 'Pemasukan'];

  Card createCard(String judulBudget, String nominalBudget, String jenisBudget) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      judulBudget,
                      style: const TextStyle(fontSize: 20),
                    )
                  ])),
          Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text(nominalBudget), Text(jenisBudget)])),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      drawer: const DrawerApp(),
      body: Form(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Contoh: Beli sushi",
                            labelText: "Judul",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              judulBudget = value!;
                            });
                          },
                          onSaved: (String? value) {
                            setState(() {
                              judulBudget = value!;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon isi judul budget';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Contoh: 25000",
                            labelText: "Nominal",
                            prefix: Container(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: const Text(
                                'Rp',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (String? value) {
                            setState(() {
                              nominalBudget = value!;
                            });
                          },
                          onSaved: (String? value) {
                            setState(() {
                              nominalBudget = value!;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon isi nominal budget';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: 150,
                        child: DropdownButtonFormField(
                          hint: const Text('Pilih Jenis'),
                          items: listDropdown.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (Object? value) {
                            setState(() {
                              jenisBudget = value as String;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon pilih jenis budget';
                            }
                            return null;
                          },
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                  const Size(80.0, 35.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                addedBudget.add(
                                    createCard(judulBudget, nominalBudget, jenisBudget));
                                _formKey.currentState!.reset();
                              }
                            },
                            child: const Text(
                              "Simpan",
                              style: TextStyle(
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}