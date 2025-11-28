import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:intl/intl.dart';
import 'package:projects/AppBar/app_bar.dart';
import 'package:projects/choose_plan.dart';
import 'package:projects/widget/user_sidemenu.dart';
// For formatting date & time

class travel_request_details extends StatefulWidget {
  const travel_request_details({super.key});

  // const travel_request_details({super.key});
  @override
  State<travel_request_details> createState() => _travel_request_detailsState();
}

class _travel_request_detailsState extends State<travel_request_details> {
  String selectedValue = 'Armenia';
  String selectedMode = 'Flight';
  List<String> languageOptions = [
    'Armenia',
    'Bahrain',
    'Bangladesh',
    'Canada',
    'Iran',
    'Iraq',
    'Kuwait',
    'Saudi Arabia',
    'Singapore',
    'United States of America',
    'United Arab Emirates Uzbekistan',
  ];
  List<String> modeOptions = ['Flight', 'Road', 'Sea', 'Train'];
  List<String> relation1Options = [
    'Self',
    'Son',
    'Daughter',
    'Spouse',
    'Others',
  ];
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _dateFromController = TextEditingController();
  final TextEditingController _dateToController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _dateOfBirthController2 = TextEditingController();
  //final TextEditingController _timeController = TextEditingController();
  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2025),
  //     lastDate: DateTime(20100),
  //   );
  //   if (picked != null) {
  //     setState(() {
  //       _dateFromController.text = DateFormat('dd-MM-yyyy').format(picked);
  //       _dateToController.text = DateFormat('dd-MM-yyyy').format(picked);
  //       _dateOfBirthController.text = DateFormat('dd-MM-yyyy').format(picked);
  //       _dateOfBirthController2.text = DateFormat('dd-MM-yyyy').format(picked);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    // var textFormField = TextFormField(
    //   controller: _dateController,
    //   decoration: InputDecoration(
    //     labelText: 'Date From',
    //     prefixIcon: const Icon(Icons.calendar_today),
    //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    //   ),
    //   readOnly: true,
    //   onTap: () => _selectDate(context),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        appBar: CustomAppBar(
          title: '',
          onMenuPressed: () => scaffoldKey.currentState?.openDrawer(),
        ),
        drawer: UserSidemenu(), //App_bar(),
        body: SingleChildScrollView(
          // child:
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.2),
                          child: SizedBox(
                            width: 200,
                            height: 150,
                            child: Image.asset(
                              "assets/Travel insurance-pana 1.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  color: Color.fromARGB(255, 7, 62, 108),
                  child: Column(
                    children: [
                      SizedBox(width: 400),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          'Travel Request Details',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey), // Outline color
                        borderRadius: BorderRadius.circular(
                          8,
                        ), // Optional: rounded corners
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedValue,
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.black,
                          ),
                          style: TextStyle(color: Colors.black),
                          dropdownColor: Colors.white,
                          items: languageOptions.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey), // Outline color
                        borderRadius: BorderRadius.circular(
                          8,
                        ), // Optional: rounded corners
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedMode,
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.black,
                          ),
                          style: TextStyle(color: Colors.black),
                          dropdownColor: Colors.white,
                          items: modeOptions.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedMode = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    readOnly: true,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    //keyboardType: DateTimeRange(start: DateTime.now(), end: DateTime.now()),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Date From',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ),
                        onPressed: () =>
                            showDatePicker(
                              initialDatePickerMode: DatePickerMode.year,
                              context: context,
                              initialDate:
                                  DateTime.now(), //.subtract(const Duration(days: 365 * 13)),
                              firstDate: DateTime(
                                2020,
                              ).subtract(const Duration(days: 365 * 13)),
                              lastDate: DateTime(
                                2050,
                              ), //.subtract(const Duration(days: 365 * 13)),
                            ).then(
                              (value) => {
                                setState(() {
                                  _dateFromController.text =
                                      '${value!.day.toString()}/${value.month.toString()}/${value.year.toString()}';
                                }),
                              },
                            ),
                      ),
                    ),
                    controller: TextEditingController(
                      text: _dateFromController.text,
                    ), //here is answer
                  ),
                  // TextFormField(
                  //   controller: _dateFromController,
                  //   keyboardType: TextInputType.text,
                  //   style: GoogleFonts.poppins(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.w500,
                  //     color: Colors.grey,
                  //   ),
                  //   decoration: InputDecoration(
                  //     labelText: 'Enter Vehicle Model',
                  //     hintText: 'Enter Vehicle Model',
                  //     hintStyle: TextStyle(
                  //       color: Colors.grey,
                  //       fontSize: 14,
                  //       fontWeight: FontWeight.w400,
                  //     ),
                  //     labelStyle: TextStyle(
                  //       color: Colors.grey,
                  //       fontSize: 14,
                  //       fontWeight: FontWeight.w400,
                  //     ),
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(8),
                  //       borderSide: const BorderSide(color: Colors.grey),
                  //     ),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(8),
                  //       borderSide: const BorderSide(color: Colors.grey),
                  //     ),
                  //     focusedBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(8),
                  //       borderSide: const BorderSide(
                  //         color: Colors.grey,
                  //         width: 1.5,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    readOnly: true,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Date To',
                      labelStyle: TextStyle(color: Colors.black),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Colors.black,
                        ),
                        onPressed: () =>
                            showDatePicker(
                              initialDatePickerMode: DatePickerMode.year,
                              context: context,
                              initialDate:
                                  DateTime.now(), //.subtract(const Duration(days: 365 * 13)),
                              firstDate: DateTime(
                                2020,
                              ), //.subtract(const Duration(days: 365 * 13)),
                              lastDate: DateTime(2050),
                            ).then(
                              (value) => {
                                setState(() {
                                  _dateToController.text =
                                      '${value!.day.toString()}/${value.month.toString()}/${value.year.toString()}';
                                }),
                              },
                            ),
                      ),
                    ),
                    controller: TextEditingController(
                      text: _dateToController.text,
                    ), //here is answer
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Card(
                    elevation: 5,
                    color: Color(0xFFE0E0E0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Traveler details',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  hintText: 'Enter Name',
                                  labelText: 'Name',
                                  labelStyle: TextStyle(color: Colors.black),
                                  // prefixIcon: Icon(
                                  //   Icons.person,
                                  //   color: Colors.black,
                                  // ),
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1.5,
                                    ),
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  labelText: 'Date of Birth',
                                  labelStyle: TextStyle(color: Colors.black),
                                  suffixIcon: IconButton(
                                    icon: const Icon(
                                      Icons.calendar_today,
                                      color: Colors.black,
                                    ),
                                    onPressed: () =>
                                        showDatePicker(
                                          initialDatePickerMode:
                                              DatePickerMode.year,
                                          context: context,
                                          initialDate:
                                              DateTime.now(), //.subtract(
                                          //const Duration(days: 365 * 13),
                                          //),
                                          firstDate: DateTime(1900).subtract(
                                            const Duration(days: 365 * 13),
                                          ),
                                          lastDate:
                                              DateTime.now(), //.subtract(const Duration(days: 365 * 13)),
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
                                ), //here is answer
                              ),
                              SizedBox(height: 20),
                              DropdownButtonFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  labelText: 'Relation',
                                  labelStyle: TextStyle(color: Colors.black),
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                ),
                                items:
                                    [
                                          'Self',
                                          'Son',
                                          'Daughter',
                                          'Spouse',
                                          'Others',
                                        ]
                                        .map(
                                          (option) => DropdownMenuItem(
                                            value: option,
                                            child: Text(option),
                                          ),
                                        )
                                        .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    //  _selectedValue = value;
                                  });
                                },
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  hintText: 'Enter Govt.ID',
                                  labelText: 'Govt. ID',
                                  labelStyle: TextStyle(color: Colors.black),
                                  // prefixIcon: Icon(
                                  //   Icons.document_scanner_outlined,
                                  //   color: Colors.black45,
                                  // ),
                                ),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          travel_request_details(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(
                                    255,
                                    7,
                                    62,
                                    108,
                                  ),
                                  foregroundColor: Colors.white,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56),
                                  ),
                                ),
                                child: Text(
                                  '+ more',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Card(
                    elevation: 5,
                    color: Color(0xFFE0E0E0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Traveler details 2',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusColor: Colors.grey,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  hintText: 'Enter Name',
                                  labelText: 'Name',
                                  labelStyle: TextStyle(color: Colors.black),
                                  // prefixIcon: Icon(
                                  //   Icons.person,
                                  //   color: Colors.black,
                                  // ),
                                ),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                readOnly: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusColor: Colors.grey,
                                  labelText: 'Date of Birth',
                                  labelStyle: TextStyle(color: Colors.black),
                                  suffixIcon: IconButton(
                                    icon: const Icon(
                                      Icons.calendar_today,
                                      color: Colors.black,
                                    ),
                                    onPressed: () =>
                                        showDatePicker(
                                          initialDatePickerMode:
                                              DatePickerMode.year,
                                          context: context,
                                          initialDate:
                                              DateTime.now(), //.subtract(
                                          //const Duration(days: 365 * 13),
                                          //),
                                          firstDate: DateTime(1900).subtract(
                                            const Duration(days: 365 * 13),
                                          ),
                                          lastDate:
                                              DateTime.now(), //.subtract(const Duration(days: 365 * 13)),
                                        ).then(
                                          (value) => {
                                            setState(() {
                                              _dateOfBirthController2.text =
                                                  '${value!.day.toString()}/${value.month.toString()}/${value.year.toString()}';
                                            }),
                                          },
                                        ),
                                  ),
                                ),
                                controller: TextEditingController(
                                  text: _dateOfBirthController2.text,
                                ), //here is answer
                              ),
                              SizedBox(height: 20),
                              DropdownButtonFormField(
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusColor: Colors.grey,

                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  labelText: 'Relation',
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                items:
                                    [
                                          'Self',
                                          'Son',
                                          'Daughter',
                                          'Spouse',
                                          'Others',
                                        ]
                                        .map(
                                          (option) => DropdownMenuItem(
                                            value: option,
                                            child: Text(option),
                                          ),
                                        )
                                        .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    //  _selectedValue = value;
                                  });
                                },
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  focusColor: Colors.grey,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  hintText: 'Enter Govt.ID',
                                  labelStyle: TextStyle(color: Colors.black),
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  labelText: 'Govt. ID',
                                  // prefixIcon: Icon(
                                  //   Icons.file_copy,
                                  //   color: Colors.black45,
                                  // ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (context) => ChoosePlan(),
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
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
