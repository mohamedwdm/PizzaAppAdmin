import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pizza_app_admin/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:pizza_app_admin/features/auth/presentation/views/login_view.dart';
import 'package:pizza_app_admin/features/home/presentation/view/create_pizza.dart';
import 'package:pizza_app_admin/features/home/presentation/view/home_view.dart';
import 'dart:html' as html;

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeView();
                      },
                    ),
                  );
                },
                child: Text(
                  "Pizza Admin",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(width: 30),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CreatePizza();
                      },
                    ),
                  );
                },
                child: Text(
                  "Create Pizza",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              BlocProvider.of<AuthCubit>(context).logOut();
              html.window.location.reload();
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return LoginView();
              //     },
              //   ),
              // );
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginView()),
                (route) => false, // removes all previous routes
              );
            },
            child: Row(
              children: [
                Text(
                  "LogOut",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(width: 5),
                Icon(
                  FontAwesomeIcons.arrowRightFromBracket,
                  size: 16,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      // centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
