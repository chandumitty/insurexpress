import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:intl/intl.dart' show DateFormat;
//import 'package:projects/AppBar/app_bar.dart';
import 'package:projects/MyHomepage.dart';
import 'package:projects/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  //@override
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _dateOfBirthController = TextEditingController();
  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2025),
  //     lastDate: DateTime(1900),
  //   );
  //   if (picked != null) {
  //     _dateOfBirthController.text = DateFormat('dd-MM-yyyy').format(picked);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: App_bar(),
      //backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: SizedBox(
                  width: 200,
                  child: Image.asset('assets/logo.png'),
                ),
              ),
            ),
            Text(
              'Sign Up',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 7, 62, 108),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'First name',
                  hintText: 'Enter first name',
                  labelStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                  prefixIcon: Icon(Icons.person_2),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Last name',
                  hintText: 'Enter last name',
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.person_2),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter email',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Date of Birth',
                  hintText: 'Add date of birth',
                  prefixIcon: Icon(Icons.calendar_today),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () =>
                        showDatePicker(
                          initialDatePickerMode: DatePickerMode.year,
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                            1900,
                          ).subtract(const Duration(days: (365 * 13))),
                          lastDate: DateTime.now(),
                        ).then(
                          (value) => {
                            setState(() {
                              _dateOfBirthController.text =
                                  '${value!.day.toString()}/${value.month.toString()}/${value.year.toString()}';
                            }),
                          },
                        ),
                  ),
                ),
                controller: TextEditingController(
                  text: _dateOfBirthController.text,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Gender',
                  prefixIcon: Icon(Icons.male),
                ),
                items: ['Male', 'Female', 'Others']
                    .map(
                      (options) => DropdownMenuItem(
                        value: options,
                        child: Text(options),
                      ),
                    )
                    .toList(),
                onChanged: (value) => {setState(() {})},
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone number',
                  hintText: 'Enter phone number',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                obscureText: true,
                // keyboardType: TextInputType.pa,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Create Password',
                  hintText: 'Enter Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  hintText: 'Confirm password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 7, 62, 108),
                  elevation: 5,
                ),
                child: Text(
                  'Sign up',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.poppins(fontSize: 15),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login()),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
