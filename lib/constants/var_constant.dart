import 'package:flutter/material.dart';
import 'package:googlemap/screens/contribute_screen.dart';
import 'package:googlemap/screens/explore_screen.dart';
import 'package:googlemap/screens/you_screen.dart'; // Ensure this is correct


// List of main buttons
final List<Map<String, dynamic>> buttonsNames = [
  {"name": "Home", "icon": Icons.home},
  {"name": "Restaurant", "icon": Icons.restaurant},
  {"name": "Coffee", "icon": Icons.coffee},  // Fixed spelling "Coffee"
  {"name": "Shopping", "icon": Icons.shopping_bag_outlined},
  {"name": "Gas", "icon": Icons.local_gas_station_outlined},
  {"name": "Hotels", "icon": Icons.hotel},
  {"name": "Groceries", "icon": Icons.local_grocery_store_outlined},
  {"name": "Hospitals", "icon": Icons.local_hospital},
  {"name": "More", "icon": Icons.more_horiz},
];

// List of modal buttons
final List<Map<String, dynamic>> modalbuttonsNames = [
  {"name": "Direction", "icon": Icons.directions},
  {"name": "Start", "icon": Icons.play_arrow},
  {"name": "Save", "icon": Icons.bookmark_border},
  {"name": "Add label", "icon": Icons.label_outline},
  {"name": "Share", "icon": Icons.share},
];
final List<Map<String, dynamic>> contributeMenueNames = [
  {"name": "Add place", "icon": Icons.place},
  {"name": "Update Place", "icon": Icons.edit_location},
  {"name": "Add review", "icon": Icons.rate_review_sharp},
  {"name": "Add photo", "icon": Icons.add_a_photo_outlined},
  {"name": "Update Road", "icon": Icons.add_road_rounded},
  {"name": "Update Adresses", "icon": Icons.system_update_alt_sharp}
];

// Ensure these are correctly defined in their respective screens
List<Widget> bodies = [ExplorePage(), YouPage(), ContributePage()];

// List for "YouPage" menu items
final List<Map<String, dynamic>> youPageMenu = [
  {"name": "Saved"},
  {"name": "Notifications"},
  {"name": "Message"},
];
