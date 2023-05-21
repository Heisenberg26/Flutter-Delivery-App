import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:get/get.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck = false;
  
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
              child: Column(
                children: [
                  (context.screenHeight * 0.08).heightBox,
                  (Image.asset(iconb)
                      .box
                      // .white
                      .size(200, 130)
                      .padding(const EdgeInsets.all(0))
                      .rounded
                      .make()),
                  10.heightBox,
                  "Sign up to App"
                      .text
                      .fontFamily(regular)
                      .white
                      .size(15)
                      .make(),
                  25.heightBox,
                  Column(
                    children: [
                      customTextField(hint: emailHint, title: name),
                      15.heightBox,
                      customTextField(hint: emailHint, title: email),
                      15.heightBox,
                      customTextField(hint: passwordHint, title: password),
                      15.heightBox,
                      customTextField(
                          hint: passwordHint, title: retypePassword),
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: forgetPass.text.color(fav).make())),
                      5.heightBox,
                      ourButton(
                              color: fav,
                              title: signup,
                              textcolor: whiteColor,
                              onPress: () {})
                          .box
                          .width(context.screenWidth - 180)
                          .make(),
                      18.heightBox,
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: alreadyHaveAccount,
                            style:
                                TextStyle(fontFamily: bold, color: fontGrey)),
                        TextSpan(
                            text: login,
                            style: TextStyle(fontFamily: bold, color: fav)),
                      ])).onTap(() {
                        Get.back();
                      }),
                    ],
                  )
                      .box
                      .color(Vx.gray900)
                      .rounded
                      .padding(const EdgeInsets.all(14))
                      .width(context.screenWidth - 80)
                      .shadowSm
                      .make(),
                ],
              ),
            )));
  }
}
