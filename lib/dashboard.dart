import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();

  }
  
class _DashboardState extends State<Dashboard> {
    @override
    Widget build(BuildContext context){
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text("Dashboard"
            ),
          ),
          body: Container(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network('https://cdn1.iconfinder.com/data/icons/education-1-15/151/1-512.png', height: 128,),
                        Text('PROFILE'),
                      ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network('https://th.bing.com/th/id/R4ba41486f831e6a2dcfba26e391651b9?rik=40bFto43LCk%2bDA&riu=http%3a%2f%2fwww.pmoadvisory.com%2fwp-content%2fuploads%2f2018%2f08%2fcalendar-flat-icon-01-.jpg&ehk=3oFMv0WLOpD8wym3KIGtc83dM8hjVZa0uk58PsZbv6g%3d&risl=&pid=ImgRaw', height: 128,),
                        Text('COURSE SCHEDULE'),
                      ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network('https://th.bing.com/th/id/R4adbea3b81e8456e1531c90af510a131?rik=jHtXKqjCa68kZw&riu=http%3a%2f%2ficons.iconarchive.com%2ficons%2fgraphicloads%2fflat-finance%2f256%2fcertificate-icon.png&ehk=PO5Mvq%2fWmw%2bBUT5cIFv1JusY1w%2fAjVLlgDy%2by6lN2oM%3d&risl=&pid=ImgRaw', height: 128,),
                        Text('STUDY RESULT'),
                      ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network('https://www.attendanceworks.org/wp-content/uploads/2017/07/icon-hands-200x200.png', height: 128,),
                        Text('ATTENDANCE'),
                      ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network('https://s.clipartkey.com/mpngs/s/187-1878686_contact-the-financial-aid-office-at-your-new.png', height: 128,),
                        Text('BOOK'),
                      ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network('https://grocerydelivery.asia/pub/media/wysiwyg/GroDel/save-money-icon_2x.png', height: 128,),
                        Text('FINANCE'),
                      ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
}
