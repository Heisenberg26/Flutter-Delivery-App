import 'package:emart_app/consts/consts.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(imgbg2), fit: BoxFit.fill)),
    child: child,
  );
}
