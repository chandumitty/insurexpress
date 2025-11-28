import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/Admin/adminDashboard.dart';
import 'package:projects/Admin/covers.dart';
import 'package:projects/Admin/exclusions.dart';
//import 'package:projects/AppBar/app_bar.dart';

import 'package:projects/choose_plan.dart';
import 'package:projects/login.dart';

// class AdminSidemenu extends StatelessWidget implements PreferredSizeWidget {
//   // const AdminSidemenu({super.key});
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         title: '',
//         onMenuPressed: () => _scaffoldKey.currentState?.openDrawer(),
//       ),

//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Image.asset("assets/logo.png"),
//               decoration: const BoxDecoration(
//                 color: Color.fromARGB(255, 125, 163, 193),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(Icons.dashboard),
//               title: Text('Dashboard'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MyHomePage()),
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.request_page),
//               title: Text('My Request'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => travel_request_details(),
//                   ),
//                 );
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.request_page),
//               title: Text('Proposals'),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => travel_request_details(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
class AdminSidemenu extends StatelessWidget {
  const AdminSidemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 230, 235),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //CircleAvatar(radius: 30, backgroundColor: Colors.white),
                // SizedBox(height: 10),
                Image.asset('assets/logo.png'),
                //Text("Welcome, Chandu", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home", style: GoogleFonts.poppins(fontSize: 14)),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Admindashboard()),
            ),
          ),
          ListTile(
            leading: Icon(Icons.card_travel_outlined),
            title: Text('Covers', style: GoogleFonts.poppins(fontSize: 14)),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Covers()),
            ),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Exclesions', style: GoogleFonts.poppins(fontSize: 14)),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Exclusions()),
            ),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Plan', style: GoogleFonts.poppins(fontSize: 14)),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChoosePlan()),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_2_rounded),
            title: Text("My Profile", style: GoogleFonts.poppins(fontSize: 14)),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout", style: GoogleFonts.poppins(fontSize: 14)),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => login()),
            ),
          ),
        ],
      ),
    );
  }
}
