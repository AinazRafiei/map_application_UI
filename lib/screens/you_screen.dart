import 'package:flutter/material.dart';

class YouPage extends StatefulWidget {
  const YouPage({super.key});

  @override
  _YouPageState createState() => _YouPageState();
}

class _YouPageState extends State<YouPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, dynamic>> savedLists = [
    {
      "icon": Icons.favorite,
      "title": "Favourites",
      "subtitle": "Private list · 2 places"
    },
    {
      "icon": Icons.music_note,
      "title": "Music",
      "subtitle": "Private list · 0 places"
    },
    {
      "icon": Icons.directions_bus,
      "title": "Saved trips",
      "subtitle": "Private · 2 trips"
    },
    {
      "icon": Icons.star,
      "title": "Starred places",
      "subtitle": "Private list · 1 place"
    },
    {
      "icon": Icons.place,
      "title": "Recently Visited",
      "subtitle": "Private list · 3 places"
    },
  ];

  bool _showMore = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _showBottomMenu() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text("Manage chat", style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Cancel",
                  style: TextStyle(
                      fontSize: 18, color: const Color.fromARGB(255, 9, 9, 9))),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 10),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("You",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: _showBottomMenu,
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.teal,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.teal,
          tabs: [
            Tab(text: "Saved"),
            Tab(text: "Notifications"),
            Tab(text: "Messages"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text("+ New list",
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _showMore ? savedLists.length : 4,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(savedLists[index]["icon"],
                      color: Colors.teal, size: 28),
                  title: Text(savedLists[index]["title"],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  subtitle: Text(savedLists[index]["subtitle"],
                      style: TextStyle(color: Colors.grey)),
                  trailing: IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {},
                  ),
                  onTap: () {},
                );
              },
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _showMore = !_showMore;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(_showMore ? Icons.expand_less : Icons.expand_more,
                        color: Colors.teal),
                    SizedBox(width: 5),
                    Text(_showMore ? "Less" : "More",
                        style: TextStyle(fontSize: 16, color: Colors.teal)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
