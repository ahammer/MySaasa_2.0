import 'package:flutter_web/material.dart';
import '../../particles/particles.dart';

class HomeScreen extends StatelessWidget {
  final _particleManager = ParticleManager();

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
                    child: Stack(children: [
                      Container(
                          width: double.infinity,
                          height: 200,                        
                       child:ParticlesWidget(particleManager: _particleManager,)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Text("MySaasa",
                              style: Theme.of(context).textTheme.title),
                          Text("getting started",
                              style: Theme.of(context).textTheme.body1),
                              FlatButton(child: Text("Add Particle"), onPressed: () {
                                _particleManager.addParticle(SimpleParticle());
                              },)
                        ]),
                      ),
                    ]))),
          ],
        ),
      );
}
