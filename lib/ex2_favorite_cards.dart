// EX 2 – The best cards (handout page: EX 2). Start code for Part 1.
// Try Part 1 yourself first, then compare with ex2_part1_correction.dart.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text("Favorite cards",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ),
        body: Column(
          spacing: 8,
          children: [
            FavoriteCard(),
            FavoriteCard(),
            FavoriteCard()
          ],
        ),
      ),
    ));

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavorite = false;

  IconData get getIcon => isFavorite ? Icons.favorite : Icons.favorite_border;
  Color? get getColor => isFavorite ? Colors.pink : null;

  void OnPressed() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // YOUR CODE
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  style: BorderStyle.solid, color: Colors.grey.shade300))),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("title",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                Text("description",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.normal))
              ],
            ),
          ),
          IconButton(
            onPressed: OnPressed,
            icon: Icon(getIcon, color: getColor),
            iconSize: 20,
          )
        ],
      ),
    );
  }
}
