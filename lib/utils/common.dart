import 'package:flutter/material.dart';

// App Text
appText({
  @required data,
  alignText,
  textColor,
  textSize,
  textWeight,
}) {
  return Text(
    data,
    textAlign: alignText,
    style: TextStyle(
      color: textColor,
      fontSize: textSize,
      fontWeight: textWeight,
    ),
  );
}

//Data Field
dataField({
  textLabel,
  textObscure,
  fieldChanged,
  fieldSubmited,
  fieldIconPrefix,
  fieldIconSuffix,
  fieldBorder,
  fieldValidator,
  fieldTextLength,
}) {
  return TextFormField(
    onChanged: fieldChanged,
    onFieldSubmitted: fieldSubmited,
    validator: fieldValidator,
    maxLength: fieldTextLength,
    obscureText: textObscure ?? false,
    decoration: InputDecoration(
      labelText: textLabel,
      prefixIcon: fieldIconPrefix,
      suffixIcon: fieldIconSuffix,
      border: fieldBorder,
      counterText: "",
    ),
  );
}
