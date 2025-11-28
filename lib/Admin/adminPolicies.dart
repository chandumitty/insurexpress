import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/AppBar/app_bar.dart';
import 'package:projects/widget/admin_sidemenu.dart';

class Adminpolicies extends StatefulWidget {
  const Adminpolicies({super.key});

  @override
  State<Adminpolicies> createState() => _AdminpoliciesState();
}

class _AdminpoliciesState extends State<Adminpolicies> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: '',
        onMenuPressed: () => scaffoldKey.currentState?.openDrawer(),
      ),
      drawer: AdminSidemenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            color: Color.fromARGB(255, 7, 62, 108),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Policies',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 180),
                  // Text(
                  //   'Add Policy',
                  //   style: GoogleFonts.poppins(
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  //Column(children: []),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
