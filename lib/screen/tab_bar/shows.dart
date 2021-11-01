import 'dart:ui';

import 'package:bin_movie/Ui/movie_detail.dart';
import 'package:bin_movie/Utils/Dataconstants.dart';
import 'package:bin_movie/video_detail/videopage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


class ShowsPage extends StatefulWidget {
  const ShowsPage({Key key}) : super(key: key);

  @override
  _ShowsPageState createState() => _ShowsPageState();
}

class _ShowsPageState extends State<ShowsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Dataconstants.movieModel.searchList.length > 0
            ? Observer(
                builder: (context) => SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Divider(
                            //   color: Colors.pink,
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "   NEW",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              height: 250,
                              margin: EdgeInsets.only(top: 15.0),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  padding: EdgeInsets.only(left: 15.0),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: Dataconstants
                                      .movieModel.searchList.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Stack(
                                      children: [
                                        InkWell(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
                                          child: Container(
                                            margin: EdgeInsets.only(right: 7.0),
                                            child: Column(
                                              children: <Widget>[
                                                Material(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        new BorderRadius
                                                            .circular(5.0),
                                                    child: Dataconstants
                                                                .movieModel
                                                                .searchList[
                                                                    index]
                                                                .poster ==
                                                            null
                                                        ? Image.asset(
                                                            "assets/placeholder_box.jpg",
                                                            height: 230,
                                                            width: 140.0,
                                                            fit: BoxFit.cover,
                                                          )
                                                        : FadeInImage
                                                            .assetNetwork(
                                                            image: Dataconstants
                                                                .movieModel
                                                                .searchList[
                                                                    index]
                                                                .poster,
                                                            placeholder:
                                                                "assets/placeholder_box.jpg",
                                                            height: 230,
                                                            width: 140.0,
                                                            imageScale: 1.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      VideoPage(
                                                        title: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .title,
                                                        poster: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .poster,
                                                        imdbid: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .imdbId,
                                                        type: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .type
                                                            .toString(),
                                                        year: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .year,
                                                      )
                                                  // MovieDetail(
                                                  //   title: Dataconstants
                                                  //       .movieModel
                                                  //       .searchList[index]
                                                  //       .title,
                                                  //   poster: Dataconstants
                                                  //       .movieModel
                                                  //       .searchList[index]
                                                  //       .poster,
                                                  //   imdbid: Dataconstants
                                                  //       .movieModel
                                                  //       .searchList[index]
                                                  //       .imdbId,
                                                  //   type: Dataconstants
                                                  //       .movieModel
                                                  //       .searchList[index]
                                                  //       .type
                                                  //       .toString(),
                                                  //   year: Dataconstants
                                                  //       .movieModel
                                                  //       .searchList[index]
                                                  //       .year,
                                                  // ),
                                                  ),
                                            );
                                          },
                                        ),
                                        Positioned(
                                          top: 210,
                                          left: 40,
                                          child: Container(
                                            height: 30,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            child: Center(
                                                child: Text(
                                              "NEW",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                        )
                                      ],
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "   POPULAR",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              height: 150,
                              margin: EdgeInsets.only(top: 15.0),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  padding: EdgeInsets.only(left: 15.0),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: Dataconstants
                                      .movieModel.searchList.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Stack(
                                      children: [
                                        InkWell(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
                                          child: Container(
                                            margin: EdgeInsets.only(right: 7.0),
                                            child: Column(
                                              children: <Widget>[
                                                Material(
                                                  color: Colors.transparent,
                                                  borderRadius:
                                                      new BorderRadius.circular(
                                                          10.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        new BorderRadius
                                                            .circular(5.0),
                                                    child: Dataconstants
                                                                .movieModel
                                                                .searchList[
                                                                    index]
                                                                .poster ==
                                                            null
                                                        ? Image.asset(
                                                            "assets/placeholder_box.jpg",
                                                            height: 150,
                                                            width: 140.0,
                                                            fit: BoxFit.cover,
                                                          )
                                                        : FadeInImage
                                                            .assetNetwork(
                                                            image: Dataconstants
                                                                .movieModel
                                                                .searchList[
                                                                    index]
                                                                .poster,
                                                            placeholder:
                                                                "assets/placeholder_box.jpg",
                                                            height: 150,
                                                            width: 140.0,
                                                            imageScale: 1.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MovieDetail(
                                                        title: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .title,
                                                        poster: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .poster,
                                                        imdbid: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .imdbId,
                                                        type: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .type
                                                            .toString(),
                                                        year: Dataconstants
                                                            .movieModel
                                                            .searchList[index]
                                                            .year,
                                                      )),
                                            );
                                          },
                                        ),
                                        // Positioned(
                                        //   top: 210,
                                        //   left: 40,
                                        //   child: Container(
                                        //     height: 30,
                                        //     width: 60,
                                        //     decoration: BoxDecoration(
                                        //         color: Colors.green,
                                        //         borderRadius:
                                        //             BorderRadius.circular(2)),
                                        //     child: Center(
                                        //         child: Text(
                                        //       "NEW",
                                        //       style: TextStyle(
                                        //           color: Colors.white,
                                        //           fontWeight: FontWeight.bold),
                                        //     )),
                                        //   ),
                                        // )
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ))
            : Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                ),
              ));
  }
}
