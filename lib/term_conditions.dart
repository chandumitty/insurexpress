import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projects/AppBar/app_bar.dart';
import 'package:projects/travel_request_details.dart';
//import 'package:projects/userplan_covers.dart';
import 'package:projects/widget/user_sidemenu.dart';

class TermConditions extends StatefulWidget {
  const TermConditions({super.key});

  @override
  State<TermConditions> createState() => _TermConditionsState();
}

class _TermConditionsState extends State<TermConditions> {
  bool _showingMessage = false;
  bool isMenuOpen = false;
  // void dispose() {
  //   _buttonFocusNode.dispose();
  //   super.dispose();
  // }
  void _setMessageVisibility(bool visible) {
    setState(() {
      _showingMessage = visible;
    });
  }

  // void _toggleMenu() {
  //   setState(() {
  //     isMenuOpen = !isMenuOpen;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    //  bindings:
    // <ShortcutActivator, VoidCallback>{
    //  _showShortcut: () {
    //  _setMessageVisibility(!_showingMessage);
    // }
    //  };
    return Scaffold(
      key: scaffoldKey,

      appBar: CustomAppBar(
        title: '',
        onMenuPressed: () => scaffoldKey.currentState?.openDrawer(),
      ),

      drawer: UserSidemenu(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 350,
                height: 150,
                child: Image.asset("assets/Travel insurance-pana 1.png"),
              ),
              // Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Card(
                    child: Column(
                      children: [
                        Text(
                          'Terms & Conditions',
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Color.fromARGB(255, 7, 62, 108),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Travel with confidence knowing youre covered for unexpected events wherever you goTravel with confidence knowing youre covered for unexpected events wherever you goTravel with confidence knowing youre covered for unexpectedevents wherever you go',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                        CheckboxMenuButton(
                          value: _showingMessage,
                          onChanged: (bool? value) {
                            _setMessageVisibility(value!);
                          },
                          child: Text(
                            'I accept Terms & Conditions of Sun KPO Insurance',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) => travel_request_details(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 7, 62, 108),
                            foregroundColor: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(56),
                            ),
                          ),
                          child: Text(
                            "Continue -->",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //Row(children: [SizedBox(height: 10)]),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
