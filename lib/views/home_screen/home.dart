import 'package:emart_app/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../consts/consts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icfood, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(iccar, width: 27), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icveg, width: 26), label: grocery),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account),
    ];

    var navBody = [
      Container(color: const Color.fromARGB(255, 0, 0, 0)),
      Container(color: Color.fromARGB(255, 34, 34, 34)),
      Container(color: Color.fromARGB(255, 109, 109, 109)),
      Container(color: Color.fromARGB(255, 211, 211, 211)),
      Container(color: Color.fromARGB(255, 211, 211, 211)),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedFontSize: 12,
          unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          currentIndex: controller.currentNavIndex.value,
          selectedItemColor: fav,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Vx.gray900,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
