import 'package:flutter/material.dart';


class MovieDetail extends StatefulWidget {
  String title;
  String type;
  String year;
  String imdbid;
  String poster;
  MovieDetail(
      {Key key, this.title, this.type, this.year, this.imdbid, this.poster});

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image.network(
                      "${widget.poster}",
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${widget.title}",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
          ),
          Divider(
            color: Colors.pink,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "TYPE :",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "${widget.type.replaceAll("", '')}",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "IMDB-ID :",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "${widget.imdbid}",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "YEAR :",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "${widget.year}",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
