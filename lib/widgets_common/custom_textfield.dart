import 'package:emart_app/consts/consts.dart';

Widget customTextField({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(fav).fontFamily(semibold).size(18).make(),
      13.heightBox,
      TextFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: fav,
          ),
          // hintText: hint,
          isDense: true,
          fillColor: Vx.black,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: fav)),
        ),
      ),
      5.heightBox,
    ],
  );
}
