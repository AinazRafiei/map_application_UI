import 'package:flutter/material.dart';
import '/constants/var_constant.dart';

class ContributePage extends StatefulWidget {
  const ContributePage({super.key});

  @override
  ContributePageState createState() => ContributePageState();
}

class ContributePageState extends State<ContributePage> {
  final double sliderValue = 5; // Fixed slider value between 1-10

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Center(child: Text("Contribute", style: TextStyle(fontSize: 24))),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMr9fUaBtRlPNVKtVzx5HNvaWNb7Kq7OKdIQ&s",
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Name", style: TextStyle(fontSize: 16)),
                    ),
                    Row(
                      children: [
                        Text("Local Guide Level",
                            style: TextStyle(fontSize: 14)),
                        SizedBox(width: 6),
                        Text(
                          sliderValue.toInt().toString(),
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                // Fake background slider (for color)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 6,
                      width: MediaQuery.of(context).size.width *
                          (sliderValue / 10),
                      decoration: BoxDecoration(
                        color: Colors.orange, // Orange color instead of gray
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                // Actual disabled slider (transparent thumb)
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.transparent, // Hide default track
                    inactiveTrackColor: Colors.transparent,
                    thumbColor: Colors.orange,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
                  ),
                  child: Slider(
                    value: sliderValue,
                    min: 1,
                    max: 10,
                    divisions: 9,
                    label: sliderValue.round().toString(),
                    onChanged: null, // Keeps it unchangeable
                  ),
                ),

                // Star at the end
                Positioned(
                  right: 0,
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 28,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: contributeMenueNames.length,
                itemBuilder: (context, index) => ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    contributeMenueNames[index]["icon"],
                    color: Colors.black,
                  ),
                  label: Text(contributeMenueNames[index]["name"]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
