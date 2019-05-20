import 'package:flutter_web/material.dart';

import 'noise.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).backgroundColor,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Card(
                child: Container(
                    width: double.infinity,
                    child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(children: [
                          Text("MySaasa",style: Theme.of(context).textTheme.title),
                          Text("getting started",style: Theme.of(context).textTheme.body1),
                          Container(width:double.infinity, height:150, child:NoiseWidget())
                        ])))),
          ],
        ),
      );
}
