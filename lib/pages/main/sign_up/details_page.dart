import 'package:easy_to_travel/core/theme/theme_colors.dart';
import 'package:easy_to_travel/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import '../../../core/theme/theme_text_styles.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        toolbarHeight: 76.0,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
    ),
      body: Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          const Text('Enter your details',
           style: TextStyle(
            letterSpacing: 0.2,
            fontSize: 28.0,
            color: Colors.black,
            fontFamily: 'SFProDisplay',
            fontWeight: FontWeight.w700)),
          Padding(
            padding: const EdgeInsets.only(top: 44, bottom: 6),
            child: Text(
              "First name",
              style: ThemeTextStyles.name,
            ),
          ),
          TextFormField(
            style: ThemeTextStyles.inputname,
            decoration: InputDecoration( hintText: 'Enter your first name',
                fillColor: ThemeColors.grey,
                labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                )),
            // controller: cpfcontroller,
          ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 6,),
                child: Text(
                  "Last name",
                  style: ThemeTextStyles.name,
                ),
              ),
              TextFormField(
                style: ThemeTextStyles.inputname,
                decoration: InputDecoration( hintText: 'Enter your last name',
                    fillColor: ThemeColors.grey,
                    labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )),
                // controller: cpfcontroller,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 6,),
                child: Text(
                  "Email",
                  style: ThemeTextStyles.name,
                ),
              ),
              TextFormField(
                style: ThemeTextStyles.inputname,
                decoration: InputDecoration( hintText: 'Enter email',
                    fillColor: ThemeColors.grey,
                    labelStyle: TextStyle(fontSize: 10, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )),
                // controller: cpfcontroller,
              ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 15,),
            child: ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, AppRoutes.pincode);
            }, child: Text("Continue")),
          ),
        ],
      ),),
    );
  }
}
