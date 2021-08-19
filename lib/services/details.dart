import 'package:architecture_training/locator.dart';
import 'package:architecture_training/services/Api/api.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var apiBased = locator<Api>();

    return Scaffold(
      body: FutureBuilder(
        future: apiBased.getUser(userId: 1),
        builder: (context, snapshot){
          return snapshot.hasData ? Center(child: Text('${snapshot.data.userName}')) : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
