
import 'package:flutter/material.dart';
import 'package:pizza_app_admin/features/home/presentation/view/create_pizza.dart';
import 'package:pizza_app_admin/features/home/presentation/view/home_view.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
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
      backgroundColor: Colors.white,
      // centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
