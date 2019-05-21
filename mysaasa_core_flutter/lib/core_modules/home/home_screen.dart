import 'package:flutter/material.dart';
import 'package:mysaasa_core_flutter/particles/particles.dart';

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
            Expanded(
              child: Card(
                  child: Container(
                      width: double.infinity,
                      child: Stack(children: [
                        Container(
                            width: double.infinity,
                            height: 200,
                            child: ParticlesWidget(
                              particleManager: _particleManager,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            FlatButton(
                              child: Text("Add Particle"),
                              onPressed: () {
                                _particleManager.addParticle(SimpleParticle());
                              },
                            ),
                            FlatButton(
                              child: Text("Add 10 Particle"),
                              onPressed: () {
                                for (int i = 0; i < 10; i++) {
                                  _particleManager
                                      .addParticle(SimpleParticle());
                                }
                              },
                              
                            ),
                            FlatButton(
                              child: Text("Add 100 Particle"),
                              onPressed: () {
                                for (int i = 0; i < 100; i++) {
                                  _particleManager
                                      .addParticle(SimpleParticle());
                                }
                              },
                            )

                          ]),
                        ),
                      ]))),
            )
          ],
        ),
      );
}
