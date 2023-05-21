import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/views/home_screen/home.dart';
// ignore: unused_import
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:get/get.dart';
import '../../consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  "Log in to App"
                      .text
                      .fontFamily(regular)
                      .white
                      .size(15)
                      .make(),
                  25.heightBox,
                  Column(
                    children: [
                      customTextField(hint: emailHint, title: email),
                      10.heightBox,
                      customTextField(hint: passwordHint, title: password),
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: forgetPass.text.color(fav).make())),
                      5.heightBox,
                      ourButton(
                          color: fav,
                          title: login,
                          textcolor: whiteColor,
                          onPress: () {
                            Get.to(() => Home());
                          }).box.width(context.screenWidth - 180).make(),
                      10.heightBox,
                      createNewAccount.text.color(fav).make(),
                      10.heightBox,
                      ourButton(
                          color: fav,
                          title: signup,
                          textcolor: whiteColor,
                          onPress: () {
                            Get.to(() => const SignupScreen());
                          }).box.width(context.screenWidth - 180).make(),
                      18.heightBox,
                      loginWith.text.color(fontGrey).make(),
                      14.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            3,
                            (index) => CircleAvatar(
                                  backgroundColor: Vx.gray900,
                                  radius: 25,
                                  child: Image.asset(
                                    socialIconlist[index],
                                    width: 30,
                                  ),
                                )),
                      )
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
