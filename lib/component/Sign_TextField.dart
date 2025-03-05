import 'package:flutter/material.dart';
import 'package:image_from_firebase_public/constanst/constanst.dart';

class emailbox extends StatelessWidget {
  final String Orientation;
  final Function(String)? Onchanged;

  emailbox({required this.Onchanged, required this.Orientation});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: const Offset(10.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        height: Orientation == Portraitt.ID
            ? ratio_height(context, 60)
            : ratio_height(context, 130), //60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          onChanged: Onchanged,
          //autofocus: true,
          // focusNode: true,
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: Center(child: Text("Email")),
            labelStyle: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}

class passwordbox extends StatefulWidget {
  final String Oreintation;
  final Function(String)? Onchanged;
  passwordbox({this.Onchanged, required this.Oreintation});
  @override
  State<passwordbox> createState() => _passwordboxState();
}

class _passwordboxState extends State<passwordbox> {
  var _isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: const Offset(10.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        height: widget.Oreintation == Portraitt.ID
            ? ratio_height(context, 60)
            : ratio_height(context, 130), //60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          onChanged: widget.Onchanged,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.visiblePassword,
          obscureText: _isObscure,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: Center(child: Text("Password")),
            suffixIcon: IconButton(
              icon: Icon(
                _isObscure ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
            labelStyle: TextStyle(color: Colors.black87),
          ),
        ),
      ),
    );
  }
}

class generalbox extends StatelessWidget {
  final String orientation;
  final Function(String)? Onchanged;

  final String label;
  TextInputType keyboardtype;
  generalbox(
      {required this.label,
      required this.keyboardtype,
      this.Onchanged,
      required this.orientation});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: const Offset(10.0, 5.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
        ),
        height: orientation == Portraitt.ID
            ? ratio_height(context, 60)
            : ratio_height(context, 130), //60,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          onChanged: Onchanged,
          //autofocus: true,
          // focusNode: true,
          keyboardType: keyboardtype,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            label: Center(child: Text(label)),
            labelStyle: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
