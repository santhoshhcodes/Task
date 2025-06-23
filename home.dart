import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, size: 28, color: Colors.white),
                    Icon(Icons.notifications, size: 28, color: Colors.white),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Hi, Programmer",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 10),
                // Search Box
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here...",
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Grid Section
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  children: [
                    _buildGridItem(Icons.category, "Category", Colors.orange),
                    _buildGridItem(Icons.class_, "Classes", Colors.green),
                    _buildGridItem(Icons.play_circle_filled, "Free Course", Colors.blue),
                    _buildGridItem(Icons.book, "BookStore", Colors.red),
                    _buildGridItem(Icons.live_tv, "Live Classes", Colors.purple),
                    _buildGridItem(Icons.trending_up, "Popular", Colors.green),
                  ],
                ),
                SizedBox(height: 20),
                // Courses Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("See All", style: TextStyle(color: Colors.blue)),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildCourseCard("Flutter", "22 Courses", "https://cdn-icons-png.flaticon.com/512/888/888859.png"),
                      _buildCourseCard("React Native", "18 Courses", "https://cdn-icons-png.flaticon.com/512/919/919851.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String title, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: color,
          child: Icon(icon, color: Colors.white, size: 24),
        ),
        SizedBox(height: 6),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildCourseCard(String title, String subtitle, String iconUrl) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 6)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(iconUrl, width: 40, height: 40),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}
