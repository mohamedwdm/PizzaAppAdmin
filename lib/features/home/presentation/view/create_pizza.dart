import 'package:flutter/material.dart';
import 'package:pizza_app_admin/constants.dart';
import 'package:pizza_app_admin/features/home/presentation/view/widgets/create_pizza_body.dart';
import 'package:pizza_app_admin/features/home/presentation/view/widgets/custom_appbar.dart';

class CreatePizza extends StatelessWidget {
  const CreatePizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppBar(),
      body: CreatePizzaBody(),
    );
  }
}