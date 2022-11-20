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
  formFieldPadding,
  fieldController,
  textLabel,
  textObscure,
  fieldChanged,
  fieldSubmited,
  fieldIconPrefix,
  fieldIconSuffix,
  fieldBorder,
  fieldValidator,
  fieldTextLength,
  fieldFocus,
  fieldKeybord,
}) {
  return Padding(
    padding: formFieldPadding,
    child: TextFormField(
      controller: fieldController,
      keyboardType: fieldKeybord,
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
    ),
  );
}

// Elevated Button
appButton({
  buttonPadding,
  buttonFunction,
  buttonName,
}) {
  return Padding(
    padding: buttonPadding,
    child: ElevatedButton(
      onPressed: buttonFunction,
      child: buttonName,
    ),
  );
}

// Elevated Button Icon
appButtonIcon({
  buttonPadding,
  buttonFunction,
  buttonIcon,
  buttonName,
}) {
  return Padding(
    padding: buttonPadding,
    child: ElevatedButton.icon(
      onPressed: buttonFunction,
      icon: buttonIcon,
      label: buttonName,
    ),
  );
}
