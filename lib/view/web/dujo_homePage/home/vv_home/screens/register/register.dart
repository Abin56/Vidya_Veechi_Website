
import 'package:dujo_kerala_website/view/constant/constant.dart';
import 'package:dujo_kerala_website/view/google_poppins_widget/google_poppins_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class Registration extends StatefulWidget {

   const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  //final RegisterController registercontroller=Get.put(RegisterController());

  GlobalKey<FormState> formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
               Expanded(
                  child: SizedBox(height:650,
               // color: cred,
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      GooglePoppinsWidgets(text: 'Register', fontsize: 35),
                       Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextformfeildWidget(hintText: 'Enter your name', title: 'Name', width: 500,
                       // controller:registercontroller.classController ,
                        validator: checkFieldEmpty,),
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextformfeildWidget(hintText: 'Enter your class', title: 'Class', width: 500,
                       // controller:registercontroller.classController ,
                        validator: checkFieldEmpty,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextformfeildWidget(hintText: 'Enter your emai', title: 'Email', width: 500,
                       // controller:registercontroller.emailController ,
                        validator: checkFieldEmailIsValid,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextformfeildWidget(hintText: 'Enter your phone number', title: 'Phone', width: 500,
                        //controller: registercontroller.phoneController,
                        validator: checkFieldEmpty,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextformfeildWidget(hintText: 'Enter your parent name', title: 'Parent name', width: 500,
                       // controller: registercontroller.parentNameController,
                        validator: checkFieldEmpty,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TextformfeildWidget(hintText: 'Enter your date of birth', title: 'Date of birth', width: 500,
                       // controller: registercontroller.dateofbirthController,
                        validator: checkFieldEmpty,     onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        print(pickedDate);
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(formattedDate);

                        setState(() {
                         // registercontroller.dateofbirthController.text = formattedDate;
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },),
                      ),
                      GestureDetector(
                        onTap: (()async {
                          // String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
                            // String docid = Uuid().v4();
                          if(formKey.currentState!.validate()){
                            // await registercontroller.registerUser(docid);
                          }
                        
                        }),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(height: 50,width: 500,
                            decoration: BoxDecoration(color: Colors.purple[200],borderRadius: BorderRadius.circular(10),),child: Center(child: GooglePoppinsWidgets(text: 'Register', fontsize: 17,fontWeight: FontWeight.bold,),),),
                        ),
                      )
                      
                    ],),
                ),
              )),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(height: 500,
                                    decoration: const BoxDecoration(
                      // color: cBlue,
                      image: DecorationImage(fit: BoxFit.fill,
                          image: AssetImage('assets/png/register.png'))
                          ),
                                  ),
                  )),
             
            ],
          )
        ],
      ),
    );
  }


}

// ignore_for_file: file_names, must_be_immutable



class TextformfeildWidget extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  final String title;
  final String hintText;
  final double width;
  
  
 
  Function(String)? onChanged;
  Iterable<String>? autofillHints;
  FocusNode? focusNode;
  String? Function(String?)? validator;
  Function()? onTap;
  TextInputType? keyboardType;
  bool? enabled;
  TextformfeildWidget({

    required this.hintText,
    required this.title,
    required this.width,
    
    this.keyboardType,
    this.controller,
    this.autofillHints,
    this.onChanged,
    this.validator,
    this.onTap,
    this.focusNode,
    this.enabled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GooglePoppinsWidgets(text: title, fontsize: 12),
          SizedBox(
            height: 45,
            width: width,
            child: TextFormField(
              enabled: enabled,
            focusNode: focusNode,
              style: GoogleFonts.poppins(fontSize: 12),
              onChanged: onChanged,
              autofillHints: autofillHints,
              onTap: onTap,
              validator: validator,
              keyboardType: keyboardType,
              controller: controller,
              decoration: InputDecoration(
                errorBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                      color: Colors.red,
                    )),
                focusedErrorBorder: const OutlineInputBorder(
                  // borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                    width: 1,
                    style: BorderStyle.none,
                    color: Colors.red,
                  ),
                ),
                contentPadding: const EdgeInsets.all(8.0),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 0.4)),
                hintStyle: const TextStyle(fontSize: 13),
                hintText: hintText,
                focusedBorder: const OutlineInputBorder(
                  //<-- SEE HERE
                  borderSide: BorderSide(width: 1, color: Colors.green),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


