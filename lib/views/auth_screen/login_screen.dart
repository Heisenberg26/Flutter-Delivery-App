import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';

import '../../consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
            body: Center(
      child: Column(
        children: 
        [
          (context.screenHeight * 0.08).heightBox,
          (Image.asset(iconb)
              .box
              // .white
              .size(200, 103)
              .padding(const EdgeInsets.all(0))
              .rounded
              .make()),
              10.heightBox
              ,
          "Log in to App".text.fontFamily(regular).white.size(25).make(),
         50.heightBox,

          Column(
            children: [
               customTextField(hint: emailHint, title: email),
              20.heightBox,
               customTextField(hint: passwordHint, title: password),
               TextButton(onPressed: (){

               }, child: forgetPass.text.make())
            ],
          ).box.color(Vx.gray900).rounded.padding(const EdgeInsets.all(20)).width(context.screenWidth - 70).make()
        ],
      ),
    )));
  }
}
