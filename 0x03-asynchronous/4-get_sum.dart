// Task 4 - Calculate Total

// Imports

import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Pull User Data as a JSON string
    String userData = await fetchUserData();
    Map<String, dynamic> userDataMap = jsonDecode(userData);
    String userID = userDataMap['id'];

    // Get orders by user ID
    String userOrders = await fetchUserOrders(userID);
    List<dynamic> orders = jsonDecode(userOrders);

    // Find product prices
    double total = 0;

    for (int x = 0; x < orders.length; x++) {
      String priceData = await fetchProductPrice(orders[x]);
      num price = jsonDecode(priceData);
      total += price.toDouble();
    }

    // Return total of items
    return total;
  } catch (error) {
    return -1.toDouble();
  }
}
