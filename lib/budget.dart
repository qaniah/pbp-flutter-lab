import 'package:counter_7/main.dart';
import 'package:counter_7/formBudget.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  final String title = "Data Budget";

  @override
  State<DataBudgetPage> createState() => _DataBudgetPageState();
}

List<Widget> addedBudget = [];

class _DataBudgetPageState extends State<DataBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const DrawerApp(),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(5),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: addedBudget,               
              ),
            )),
      ),
    );
  }
}