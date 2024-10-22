// Task 6 - Convert to fahrenheit

List<double> convertToF(List<double> temperaturesInC) {
  List<double> newTemps = temperaturesInC.map((temp) {
    double newTemp = ((temp * 9) / 5) + 32;
    return double.parse(newTemp.toStringAsFixed(2));
  }).toList();
  return newTemps;
}
