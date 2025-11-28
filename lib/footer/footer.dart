import 'package:flutter/material.dart';
// import 'package:footer/footer.dart';
// import 'package:footer/footer_view.dart';
// import 'package:projects/AppBar/app_bar.dart';
// import 'package:projects/widget/user_sidemenu.dart';

class footer extends StatefulWidget {
  const footer({super.key});

  @override
  State<footer> createState() => _footerState();
}

class _footerState extends State<footer> {
  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      // appBar: CustomAppBar(
      //   title: '',
      //   onMenuPressed: () => _scaffoldKey.currentState?.openDrawer(),
      // ),

      // drawer: UserSidemenu(),
      // body: Center(child: Container(color: Color.fromARGB(255, 7, 62, 108))),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
        ],
        //currentIndex: SelectedContent(plainText: plainText),
      ),
    );
  }
}
