import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({super.key});
  // appbarda rasm chiqadi pastlagi listni tepaga sursa rasm kichrayadi
  @override
  State<SliverAppBarPage> createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.grey,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Slider App Bar"),
              background: Image(
                image: AssetImage("assets/img.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(_buildList(50)),
          )
        ],
      ),
    );
  }

  List<Widget> _buildList(int count){
    List<Widget> items = [];
    for(int i=0; i<count; i++){
      items.add(_itemList(i));
    }
    return items;
  }

  Widget _itemList(int i){
    return Container(
      height: 50,
      child: Center(
        child: Text("Item ${i}"),
      ),
    );
  }
}