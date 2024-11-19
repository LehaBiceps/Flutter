import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class verification_screen extends StatelessWidget {
  const verification_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          children: [
            Padding(padding: const EdgeInsets.only(right: 350, top: 40),
              child: IconButton(onPressed: ()
              {
                Navigator.pushReplacementNamed(context, '/');
              },
                  icon: Image.asset('assets/back.png')),
            ),
            const Padding(padding: EdgeInsets.only(top: 40),
              child: Text("OTP проверка",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 40
                )
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10),
              child: Text("Пожалуйста, проверьте свою электронную почту, чтобы увидеть код подтверждения",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 30, right: 270),
              child: Text("OTP Код",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                ),
              ),
            ),
            OtpTextField(
                fieldWidth: 60,
                numberOfFields: 5,
                borderWidth: 40,
                keyboardType: TextInputType.number,
                borderColor: const Color(0xFF512DA8),
                showFieldAsBox: true,
                borderRadius: BorderRadius.circular(22),
                onCodeChanged: (String code)
                {

                },
                onSubmit: (String verificationCode)
                {}
            ),
          ]
      ),
    );
  }
}