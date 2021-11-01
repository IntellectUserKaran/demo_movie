import 'package:bin_movie/video_detail/video_header_diag.dart';
import 'package:flutter/material.dart';


class VideoDetailHeader extends StatefulWidget {
  String title;
  String type;
  String year;
  String imdbid;
  String poster;

  VideoDetailHeader(
      {Key key, this.title, this.type, this.year, this.imdbid, this.poster});

  @override
  _VideoDetailHeaderState createState() => _VideoDetailHeaderState();
}

class _VideoDetailHeaderState extends State<VideoDetailHeader>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: _buildDiagonalImageBackground(context),
        ),
        headerRow(theme),
      ],
    );
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
    return DiagonallyCutColoredImage(
      FadeInImage.assetNetwork(
        image: widget.poster,
        placeholder: "assets/placeholder_cover.jpg",
        width: screenWidth,
        height: 225.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
