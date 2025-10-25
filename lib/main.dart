import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_app_admin/firebase_options.dart';
import 'package:pizza_app_admin/simple_bloc_observer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    Bloc.observer = SimpleBlocObserver();

  runApp(const PizzaAppAdmin());
}

class PizzaAppAdmin extends StatelessWidget {
  const PizzaAppAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}