import 'package:flutter/material.dart';
import 'package:pizza_app_admin/constants.dart';
import 'package:pizza_app_admin/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: InkWell(
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
          child: Text("Pizza Admin"),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: const SafeArea(child: HomeViewBody()),
    );
  }
}
