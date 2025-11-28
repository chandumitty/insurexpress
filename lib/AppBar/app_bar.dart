import 'package:flutter/material.dart';
// import 'package:projects/MyHomepage.dart';

// class App_bar extends StatelessWidget implements PreferredSizeWidget {
//   const App_bar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // centerTitle: true,
//         leading: Builder(
//           builder: (context) {
//             return IconButton(
//               icon: const Icon(Icons.menu),
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//             );
//           },
//         ),
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.white,
//         actions: <Widget>[
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MyHomePage()),
//               );
//             },
//             child: Image.asset("assets/logo.png", alignment: Alignment.center),
//           ),

//           // GestureDetector(
//           //   onTap: () {
//           //     Navigator.push(
//           //       context,
//           //       MaterialPageRoute(builder: (context) => login()),
//           //     );
//           //   },
//           //   child: Icon(
//           //     Icons.login,
//           //     color: Color.fromARGB(255, 7, 62, 108),
//           //   ),
//           // ),
//           // SizedBox(width: 10),
//           // TextButton(onPressed: (){}, child: const Text('Notification'))
//         ],
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onMenuPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 232, 230, 235),
      elevation: 4,
      leading: IconButton(icon: Icon(Icons.menu), onPressed: onMenuPressed),
      title: Image.asset('assets/logo.png', width: 150),
      //title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
