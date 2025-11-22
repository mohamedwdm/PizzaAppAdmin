import 'package:flutter/material.dart';
import 'package:pizza_app_admin/features/auth/presentation/views/widgets/custom_text_field.dart';

class CreatePizzaForm extends StatefulWidget {
  const CreatePizzaForm({super.key});

  @override
  State<CreatePizzaForm> createState() => _CreatePizzaFormState();
}

AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

class _CreatePizzaFormState extends State<CreatePizzaForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _pizzaNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: _pizzaNameController,
            hintText: "Pizza Name",
            onChanged: (value) {},
            // validator: (value) {

            // },
          ),
          const SizedBox(height: 10),

          CustomTextField(
            controller: _pizzaNameController,
            hintText: "Description",
            onChanged: (value) {},
            // validator: (value) {

            // },
          ),
          const SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: _pizzaNameController,
                  hintText: "Price",
                  onChanged: (value) {},
                  // validator: (value) {

                  // },
                ),
              ),
              const SizedBox(width: 10),

              Expanded(
                child: CustomTextField(
                  controller: _pizzaNameController,
                  hintText: "Discount",
                  
                  onChanged: (value) {},
                  // validator: (value) {

                  // },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
