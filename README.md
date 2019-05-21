MySaasa 2.0 - All in one Saas provider

History:
 MySaasa was a web platform I developed in Java, and used to drive my personal projects and websites. It had an integrated Server/Api/Templating and other features required to spawn up a SaaS style business, or even just a basic web presence.

Motivation:
  Have been getting a lot of experience with flutter as of late, and decided to start dabbling. This is currently a proof of concept. Many things are not final, and this is not production-ready. It is based around changing API's and is currently exploratory work.

Whats been done:
   There is a core, the core supplies a Redux store and some state, as well as basic extensiblity
   There is a core-flutter module, this Provides initialization and some other utility/extension
   Then there is flutter-native, which is actually the part that runs. It can run android and linux currently (and probably IOS if you plug in a device).
   
The mysaasa_core_web module is a mirror of flutter_web with the flutter imports for web, and branches of libraries to migrate them to flutter_web. Hopefully this copy/pasting is a temporary measure, but it's the only way for now I can see.

Whats going to come:
  I'm going to bootstrap some user management, and some content editing, and then see if I can wire it up to a new Flutter resume website to replace my current one on mysaasa (www.adamhammer.ca)
