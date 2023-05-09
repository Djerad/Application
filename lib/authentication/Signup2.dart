import 'package:flutter/services.dart';
import 'package:gymapp/consts/consts.dart';

class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  var fullNameController = Get.arguments[0];
  var usernameController = Get.arguments[1];
  var phoneNumberController = Get.arguments[2];

  var ageController = TextEditingController();
  var weightController = TextEditingController();
  var heightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenlength = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
        height: screenlength,
        width: screenwidth,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/6.jpg"), fit: BoxFit.fill)),
        child: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Color(0xFFFF1E0F),
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            myTextformfield(
              hint: "Your Age",
              type: TextInputType.number,
              controller: ageController,
            ),
            myTextformfield(
              hint: "Your Weight",
              type: TextInputType.number,
              controller: weightController,
            ),
            myTextformfield(
              hint: "Your Height",
              type: TextInputType.number,
              controller: heightController,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Color(0xFFFF1E0F)),
                        borderRadius: BorderRadius.circular(15)),
                    child: InkWell(
                      onTap: () {
                        //Navigator.of(context).pushNamed("Signup1");
                        Get.back();
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFFFF1E0F)),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color(0xFFFF1E0F),
                        border: Border.all(width: 1, color: Color(0xFFFF1E0F)),
                        borderRadius: BorderRadius.circular(15)),
                    child: InkWell(
                      onTap: () {
                        //Navigator.of(context).pushNamed("Signup3");
                        Get.to(() => Signup3(), arguments: [
                          fullNameController,
                          usernameController,
                          phoneNumberController,
                          ageController,
                          weightController,
                          heightController,
                        ]);
                      },
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}
