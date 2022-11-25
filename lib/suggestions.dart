// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'chart.dart';
import 'series.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:url_launcher/url_launcher.dart';

class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Expanded(
          //contains a single child which is scrollable
          child: SingleChildScrollView(
            //for horizontal scrolling
            child: Column(
              children: <Widget>[
                Text(
                  "SUGGESTIONS:\n\n"
                  "Social Anxiety:\n"
                  "In order to build your interest towards learning, you may take some innovative steps like watching some DIY videos and implementing them yourself to understand the concepts well.You may explore the benefits of participating in extra-curricular activities and sports develop an interest towards them. You may inculcate qualities like teamwork, leadership, creativity, etc.\n\n"
                  "Mental Wellbeing:\n"
                  "Always feel free to ask doubts or any sort of queries to your teachers. In case, if you feel shy or nervous to convey anything to your teachers then you can convey the same to them personally after the lecture gets over. They may boost your self confidence so that you can freely ask doubts in a filled classroom too. Teachers are always there to help the students and guide them properly on a prosperous track. Never take the scoldings of a teacher in a negative way but take it in a good spirit and work towards it.\n\n"
                  "Anxiety:\n"
                  "Peer pressure to some extent can be good if it pushes a person out of their comfort zone and gives them an opportunity to discover new things. You can try to overcome peer pressure, strengthening your sense of self and their ability to thrive in a variety of social settings. If you are facing extreme peer pressure/bullying then you should immediately communicate with your parents, teachers or any of your trusted ones without any hesitation. If you are facing loneliness, try to communicate with the students in the classroom and participate in extra-curricular activities.\n\n"
                  "Digital Wellbeing:\n"
                  "Schools always work for the betterment of facilities for its students, so if you have any grievances regarding the facilities provided, lodge acomplaint with the school management. If there aren’t any responses then consider involving parents into the process.\n\n",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    letterSpacing: 1,
                    wordSpacing: 3,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 40),
                    elevation: 3,
                  ),
                  onPressed: _launchURLApp,
                  child: Text('Get more details on our Web-Site.'),
                ),
              ],
            ),
          ),
        )));
  }
}

_launchURLApp() async {
  const url = 'https://pratiktayade12.github.io/mental-health-awareness-/';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
