import 'package:easy_to_travel/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/theme/theme_colors.dart';

class ConfirmationCodePage extends StatefulWidget {
  const ConfirmationCodePage({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  State<ConfirmationCodePage> createState() => _ConfirmationCodePageState();
}

class _ConfirmationCodePageState extends State<ConfirmationCodePage> {
  List<TextEditingController> codeControllers =
  List.generate(6, (int index) => TextEditingController());

  final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 76.0,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Your phone number',
                  style: TextStyle(
                      letterSpacing: 0.2,
                      fontSize: 28.0,
                      color: Colors.black,
                      fontFamily: 'SFProDisplay',
                      fontWeight: FontWeight.w700)),
              const Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: Text('Enter 6-digit code from SMS',
                    style: TextStyle(
                        letterSpacing: 0.2,
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 146, 151, 155),
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(widget.phoneNumber,
                    style: const TextStyle(
                        letterSpacing: 0.2,
                        fontSize: 15.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'SFProDisplay',
                        fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Phone number',
                      style: TextStyle(
                          letterSpacing: 0.2,
                          fontSize: 13.0,
                          color: Color.fromARGB(255, 91, 104, 113),
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int i = 0; i < codeControllers.length; i++)
                          Padding(
                              padding: const EdgeInsets.only(top: 6.0),
                              child: SizedBox(
                                width: 48.0,
                                height: 48.0,
                                child: TextField(
                                  controller: codeControllers[i],
                                  autofocus: true,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                  onChanged: (value) {
                                    if (value.isNotEmpty) {
                                      if (codeControllers[i] !=
                                          codeControllers.last) {
                                        FocusScope.of(context).nextFocus();
                                      } else {
                                        FocusScope.of(context).unfocus();
                                      }
                                    }

                                    setState(() {});
                                  },
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.done,
                                  cursorColor:
                                  const Color.fromARGB(255, 112, 87, 247),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintStyle: const TextStyle(
                                        letterSpacing: 0.2,
                                        fontSize: 15.0,
                                        color:
                                        Color.fromARGB(255, 194, 195, 197),
                                        fontFamily: 'SFProDisplay',
                                        fontWeight: FontWeight.w400),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 15.5, horizontal: 12.0),
                                    fillColor: const Color.fromARGB(
                                        255, 246, 246, 246),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: codeControllers[i]
                                          .text
                                          .isNotEmpty
                                          ? const BorderSide(
                                          width: 1.5,
                                          color: ThemeColors.primary,)
                                          : const BorderSide(
                                          width: 0.0,
                                          color: Color.fromARGB(
                                              255, 246, 246, 246)),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1.5,
                                          color: ThemeColors.primary,),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                  ),
                                  style: const TextStyle(
                                      letterSpacing: 0.2,
                                      fontSize: 17.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontFamily: 'SFProDisplay',
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: Container()),
              const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Center(
                  child: Text('01:59',
                      style: TextStyle(
                          letterSpacing: 0.2,
                          fontSize: 15.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'SFProDisplay',
                          fontWeight: FontWeight.w400)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: SizedBox(
                  height: 48.0,
                  width: double.infinity,
                  child: Material(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(10.0),
                    color:  ThemeColors.primary,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.details);
                      },
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(13.0),
                          child: Text(
                            'Continue',
                            style: TextStyle(
                                letterSpacing: 0.2,
                                fontSize: 15.0,
                                color: Colors.white,
                                fontFamily: 'SFProDisplay',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
