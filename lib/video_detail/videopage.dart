import 'dart:ui';

import 'package:flutter/material.dart';



class VideoPage extends StatefulWidget {
  String title;
  String type;
  String year;
  String imdbid;
  String poster;
  VideoPage(
      {Key key, this.imdbid, this.poster, this.title, this.type, this.year})
      : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  ScrollController _scrollController;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              widget.title,
            )),
        backgroundColor: Colors.black,
        key: _scaffoldKey,
        body: Container(
          child: Column(
            children: <Widget>[
              _buildDiagonalImageBackground(context),
            ],
          ),
        ));
  }

  Widget headerRow(theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        new Expanded(
          child: new Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Text(
                  "${widget.title}",
                  style: TextStyle(color: Colors.black),
                  maxLines: 3,
                  overflow: TextOverflow.fade,
                ),
                header(theme),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget header(theme) {
    return Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: new Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 60,
                ),
                FlatButton.icon(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Play",
                      style: TextStyle(color: Colors.black),
                    )),
                SizedBox(
                  width: 10,
                ),
                FlatButton.icon(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Trailer",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
          ],
        ));
  }

  Widget _buildDiagonalImageBackground(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var theme = Theme.of(context);
    return Stack(
      children: [
        FadeInImage.assetNetwork(
          image: widget.poster,
          placeholder: "assets/placeholder_cover.jpg",
          width: screenWidth,
          height: 300.0,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          top: 300,
          left: 0,
          right: 0,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Container(
                // the size where the blurring starts
                height: MediaQuery.of(context).size.height * 0.4,
                color: Colors.transparent,
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.grey, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
        ),
        Positioned(
          child: header(theme),
          top: 230,
          right: 20,
        ),
        Positioned(
          child: Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          top: 200,
          left: 10,
        ),
        SizedBox(
          height: 10,
        ),
        Positioned(
            top: 225,
            left: 10,
            child: Row(
              children: [
                Text(
                  "YEAR : ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${widget.year}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
        Positioned(
            top: 245,
            left: 10,
            child: Row(
              children: [
                Text(
                  "IMDB-ID : ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${widget.imdbid}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
        Positioned(
            top: 265,
            left: 10,
            child: Row(
              children: [
                Text(
                  "TYPE : ",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${widget.type.substring(5)}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
