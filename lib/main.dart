import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza_app_admin/constants.dart';
import 'package:pizza_app_admin/features/auth/data/repos/user_repo_impl.dart';
import 'package:pizza_app_admin/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:pizza_app_admin/features/auth/presentation/views/login_view.dart';
import 'package:pizza_app_admin/features/auth/presentation/views/widgets/auth_gate.dart';
import 'package:pizza_app_admin/features/home/presentation/view/create_pizza.dart';
import 'package:pizza_app_admin/features/home/presentation/view/home_view.dart';
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
      return BlocProvider(
      create: (context) => AuthCubit(UserRepoImpl()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "pizza delivery",
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            surface: kPrimaryColor,
            onSurface: Colors.black,
            primary: Colors.blue,
            onPrimary: Colors.white,
          ),
        ),
        // home: const AuthGate()
         home: const CreatePizza(),
      ),
    );
  }
}