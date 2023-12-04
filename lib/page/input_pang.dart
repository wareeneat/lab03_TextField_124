import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input 124"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: MediaQuery.of(context).size.width*0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Username"),
                userText(),
                const SizedBox(),
                Text(nameController.text),
                passwordText(),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: (){
                  debugPrint("Tawai");
                  if(_formKey.currentState!.validate()){
                    debugPrint("successful.");
                  }
                }, icon: const Icon(Icons.login_rounded), label: const Text("เข้าสู่ระบบ"))
              ],),
          ),
        ),
      ),
    );
  }

  TextFormField userText() {
    return TextFormField(
      validator: (value){
        if(value!.isEmpty){
          return "กรุณาใส่ชื่อ";
        }
        return null;
      },
            controller: nameController,
            decoration: const InputDecoration(
              icon: Icon(Icons.person_2),
              labelText: "Username",
              hintText: "ใส่ชื่อผู้ใช้",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(77, 187, 129, 37)
                ),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),

              border:OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(19, 187, 129, 37)
                ),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),

              
              

              
            ),
            onChanged: (value){
              setState(() {
                
              });
            },
          );
  }
  TextFormField passwordText() {
    return TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              icon: Icon(Icons.key),
              labelText: "Password",
              hintText: "รหัสผ่าน",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(77, 187, 129, 37)
                ),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),

              border:OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(19, 187, 129, 37)
                ),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),

              
              

              
            ),
            onChanged: (value){
              setState(() {
                
              });
            },
          );
  }
}