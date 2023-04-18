import 'package:flutter/material.dart';
import '../../../core/theme/theme_colors.dart';
import 'confirmator_codi.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextAlign textAlign = TextAlign.left;
  TextEditingController phoneController = TextEditingController(text: '+998');
  bool showHintText = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }

        showHintText = true;

        if (phoneController.text.isEmpty) {
          textAlign = TextAlign.center;
        }

        setState(() {});
      },
      child: Scaffold(
        appBar: AppBar(
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your phone number',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: Text(
                  'We will send a verification code to your number',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Phone number',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: TextField(
                        clipBehavior: Clip.antiAlias,
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        textAlign: textAlign,
                        onTap: () {
                          showHintText = false;

                          if (phoneController.text.isEmpty) {
                            textAlign = TextAlign.left;
                          }

                          setState(() {});
                        },
                        onSubmitted: (value) {
                          showHintText = true;

                          if (value.isEmpty) {
                            textAlign = TextAlign.center;
                          }

                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText:
                          showHintText ? 'Enter phone number' : '',
                          hintStyle: const TextStyle(
                              letterSpacing: 0.2,
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 194, 195, 197),
                              fontFamily: 'SFProDisplay',
                              fontWeight: FontWeight.w400),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.5, horizontal: 12.0),
                          fillColor: const Color.fromARGB(255, 246, 246, 246),
                          filled: true,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 0.0,
                                color: Color.fromARGB(255, 246, 246, 246)),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.5,
                                color: ThemeColors.primary,),
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0)),
                          ),
                        ),
                        style: const TextStyle(
                            letterSpacing: 0.2,
                            fontSize: 17.0,
                            color: Color.fromARGB(255, 43, 45, 51),
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: Container()),
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
                        if (phoneController.text.isEmpty) {
                          return;
                        }

                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ConfirmationCodePage(
                                phoneNumber: phoneController.text)));
                      },
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(13.0),
                          child: Text(
                            'Verify phone number',
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
