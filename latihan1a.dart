class DecimalConverter {
  int decimal;
  
  DecimalConverter(this.decimal);

  String toBinary() {
    return decimal.toRadixString(2);
  }

  String toOctal() {
    return decimal.toRadixString(8);
  }

  String toHexadecimal() {
    return decimal.toRadixString(16).toUpperCase();
  }
}
void main() {
  int input = 35;
  DecimalConverter converter = DecimalConverter(input);

  print('nilai desimal = $input');
  print('Hasil nilai biner = ${converter.toBinary()}');
  print('Hasil nilai oktal = ${converter.toOctal()}');
  print('Hasil nilai heksadesimal = ${converter.toHexadecimal()}');
}