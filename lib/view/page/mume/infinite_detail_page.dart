import 'package:flutter/material.dart';
import 'package:mume/model/dto/mume/infinite_detail.dart';

class InfiniteDetailPage extends StatefulWidget {

  final InfiniteDetail? infiniteDetail;

  InfiniteDetailPage({this.infiniteDetail});

  _InfiniteDetailState createState() => _InfiniteDetailState();
}

class _InfiniteDetailState extends State<InfiniteDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text(widget.infiniteDetail.symbol!),
        title: Text("widget.infiniteDetail.symbol!"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
            },
          ),
          IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
              },
          )
        ],
      ),
      body: Container(

      )
    );
  }
}