bool isAddress(String data) {
  return RegExp(r"^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$").hasMatch(data) || data == "localhost";
}

bool isPort(String data) {
  return RegExp(r"^[0-9]{1,5}$").hasMatch(data);
}
