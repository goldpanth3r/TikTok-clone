import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutterapp/UserPage.dart';

class ActionsToolbar extends StatelessWidget {
  static const double NavigationIconSize = 20.0;
  static const double CreateButtonWidth = 38.0;

  static const double ActionWidgetSize = 60.0;

// The size of the icon showen for Social Actions
  static const double ActionIconSize = 35.0;
// The size of the profile image in the follow Action
  static const double ProfileImageSize = 50.0;

// The size of the plus icon under the profile image in follow action
  static const double PlusIconSize = 20.0;

  Widget get customCreateIcon =>Stack(
          children:[
                Container(
                    padding: EdgeInsets.all(1.0), // Add 1.0 point padding to create border
                    height: ProfileImageSize, // ProfileImageSize = 50.0;
                    width: ProfileImageSize, // ProfileImageSize = 50.0;
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(ProfileImageSize / 2)
                    ),
                    // import 'package:cached_network_image/cached_network_image.dart'; at the top to use CachedNetworkImage
                    child: CachedNetworkImage(
                      imageUrl: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
                      placeholder: (context, url) => new CircularProgressIndicator(),
                      errorWidget: (context, url, error) => new Icon(Icons.error),
                    )),

            Positioned(
              bottom: 0,
              left: ((ProfileImageSize / 2) - (PlusIconSize / 2)),
              child: Container(
                  width: PlusIconSize,  // PlusIconSize = 20.0;
                  height: PlusIconSize, // PlusIconSize = 20.0;
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 43, 84),
                      borderRadius: BorderRadius.circular(15.0)
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 20.0, )),),

          ]
      );

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => userPage()));
            },
            child: customCreateIcon,
        ),

        Container(
            margin: EdgeInsets.only(top: 15.0),
            width: 60.0,
            height: 70.0,
            child: Column(children: [
              IconButton(
                  icon:  Icon(Icons.favorite,
                    color: Colors.white,
                    size: 40.0,),
                  onPressed: () {

                  }),
              Padding(
                padding: EdgeInsets.only(top: 1.0),
                child:
                Text("1k", style: TextStyle(fontSize: 12.0)),
              )
            ])),

        Container(
            margin: EdgeInsets.only(top: 15.0),
            width: 60.0,
            height: 70.0,
            child: Column(children: [
              IconButton(
                      icon:  Icon(Icons.share,
                        color: Colors.white,
                        size: 30.0,),
                      onPressed: () {

                      }),
              Padding(
                padding: EdgeInsets.only(top: 1.0 ),
                child:
                Text("Share", style: TextStyle(fontSize: 10.0 )),
              )
            ])),
    ]);
  }}












  /*
    Widget get customCreateIcon => Container(
      child: Stack(
          children:[
            Positioned(
                left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
                child: Container(
                    padding: EdgeInsets.all(1.0), // Add 1.0 point padding to create border
                    height: ProfileImageSize, // ProfileImageSize = 50.0;
                    width: ProfileImageSize, // ProfileImageSize = 50.0;
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(ProfileImageSize / 2)
                    ),
                    // import 'package:cached_network_image/cached_network_image.dart'; at the top to use CachedNetworkImage
                    child: CachedNetworkImage(
                      imageUrl: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
                      placeholder: (context, url) => new CircularProgressIndicator(),
                      errorWidget: (context, url, error) => new Icon(Icons.error),
                    ))
        ),

            Positioned(
            bottom: 0,
            left: ((ActionWidgetSize / 2) - (PlusIconSize / 2)),
                child: Container(
                    width: PlusIconSize,  // PlusIconSize = 20.0;
                    height: PlusIconSize, // PlusIconSize = 20.0;
                    decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 43, 84),
                    borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 20.0, )),),
          ]
      ));

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        color: Colors.yellow,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customCreateIcon,
          Container(
            color: Colors.red,
              margin: EdgeInsets.only(top: 15.0),
              width: 60.0,
              height: 60.0,
              child: Column(children: [
                IconButton(
                    icon:  Icon(Icons.favorite,
                      color: Colors.white,
                      size: 24.0,),
                    onPressed: () {

                    }),
                Padding(
                  padding: EdgeInsets.only(top: 2.0),
                  child:
                  Text("1k", style: TextStyle(fontSize: 12.0)),
                )
              ])),
          Container(
              margin: EdgeInsets.only(top: 15.0),
              width: 60.0,
              height: 60.0,
              child: Column(children: [
                Transform.rotate(
                    angle: 360,
                    child: IconButton(
                      icon:  Icon(Icons.reply,
                      color: Colors.white,
                      size: 24.0,),
                      onPressed: () {

                    })),
                Padding(
                  padding: EdgeInsets.only(top: 5.0 ),
                  child:
                  Text("Share", style: TextStyle(fontSize: 10.0 )),
                )
              ])),
      ]),);
  }
}
   */