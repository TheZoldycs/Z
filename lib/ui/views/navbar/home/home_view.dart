import 'package:z/ui/views/navbar/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class HomeView extends HookWidget {
  const HomeView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome to Z App"),
              Image.asset(
                "assets/images/Z logo.png",
              ).center(),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(context: context),
    );
  }
}