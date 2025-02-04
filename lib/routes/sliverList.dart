import 'dart:math';

import 'package:flutter/material.dart';

class SliverListImp extends StatefulWidget {
  const SliverListImp({Key? key}) : super(key: key);

  @override
  _SliverListImpState createState() => _SliverListImpState();
}

class _SliverListImpState extends State<SliverListImp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Sliver Appbar"),
            flexibleSpace: FlutterLogo(
              size: 500,
            ),
            expandedHeight: 300,
            backgroundColor: Colors.orange[900],
            automaticallyImplyLeading: false,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                  child: Container(
                    color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      "Sliver List Item $index",
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                );
              },
              childCount: 10, // 1000 list items
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDesc extends StatelessWidget {
  const SliverListDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Sliver List is a built-in sliver widget in flutter that places multiple box children in a linear array along the main axis.',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
