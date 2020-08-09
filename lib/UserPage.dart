import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class userPage extends StatelessWidget {
  static const double ProfileImageSize = 100.0;

  Widget write(int number, String str) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(number.toString(),
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          Text(str, style: TextStyle(fontSize: 10, color: Colors.black)),
        ]);
  }

  Widget drawBar() {
    return Text("|", style: TextStyle(fontSize: 30, color: Colors.grey));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
          centerTitle: true,
          title: Text('Nickname',
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ]),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: ProfileImageSize, // ProfileImageSize = 50.0;
                  width: ProfileImageSize, // ProfileImageSize = 50.0;
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(ProfileImageSize / 2)),
                  // import 'package:cached_network_image/cached_network_image.dart'; at the top to use CachedNetworkImage
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
                    placeholder: (context, url) =>
                        new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  )),
              Text("@userid",
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              Container(
                margin: const EdgeInsets.only(left: 100.0, right: 100.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      write(120, "Following"),
                      drawBar(),
                      write(320, "Followers"),
                      drawBar(),
                      write(12, "Hearts"),
                    ]),
              ),
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)),
                child: Text("20 videos", style: TextStyle(fontSize: 12)),
              ),
              Container(
                width: 100,
                height: 40,
                child: FlatButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  onPressed: () {
                    /*...*/
                  },
                  child: Text(
                    "FOLLOW",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Text("Bio"),
              Divider(
                color: Colors.black,
              )
            ]),
      ),
    );
  }
}
