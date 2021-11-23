// ignore_for_file: valid_regexps, prefer_const_constructors

import 'package:dekornata/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Masukkan Email Anda";
const String kInvalidEmailError = "Email Yang Anda Masukkan Tidak Valid";
const String kPassNullError = "Masukkan Password Anda";
const String kShortPassError = "Password kurang dari 8 karakter";
const String kMatchPassError = "Passwords tidak sama";
const String kNamelNullError = "Masukkan Nama Anda";
const String kPhoneNumberNullError = "Masukkan No. Hp Anda";
const String kAddressNullError = "Masukkan Alamat Email Anda";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
