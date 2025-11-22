import 'package:flutter/material.dart';
import 'package:pizza_app_admin/features/home/presentation/view/widgets/create_pizza_form.dart';

class CreatePizzaBody extends StatelessWidget {
  const CreatePizzaBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create New Pizza',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          CreatePizzaForm(),
        ],
      ),
    );
  }
}
