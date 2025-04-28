class DecimalConverter {
  int decimal;
  List<String> konfersi = [];
  
  DecimalConverter(this.decimal) {
    konfersi.add('Binary: ${toBinary()}');
    konfersi.add('Octal: ${toOctal()}');
    konfersi.add('Hexadecimal: ${toHexadecimal()}');
  }

  String toBinary() {
    return decimal.toRadixString(2);
  }

  String toOctal() {
    return decimal.toRadixString(8);
  }

  String toHexadecimal() {
    return decimal.toRadixString(16).toUpperCase();
  }

  void hasil() {
    print('Nilai desimal = $decimal');
    print('\nhasil konfersi:');
    print(konfersi[0]);
    print(konfersi[1]);
    print(konfersi[2]);
  }
}
void main() {
  int input = 45;
  DecimalConverter converter = DecimalConverter(input);
  converter.hasil();
}