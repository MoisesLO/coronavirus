import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:firebase_admob/firebase_admob.dart';
void main() => runApp(
    MaterialApp(
      home: MainCoronavirus(),
    )
);



class MainCoronavirus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-5852042324891789~8185342434");
    myBanner
    // typically this happens well before the ad is shown
      ..load()
      ..show(
        // Positions the banner ad 60 pixels from the bottom of the screen
        anchorOffset: 0,
        // Positions the banner ad 10 pixels from the center of the screen to the right
        horizontalCenterOffset: 0,
        // Banner Position
        anchorType: AnchorType.bottom,
      );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              pinned: false,
              expandedHeight: 200.0,
              title: Text('Coronavirus Covid-19'),
              backgroundColor: Colors.blue,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "images/20651.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  HtmlWidget(
                    HtmBdMigraciones,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['Coronavirus', 'covid-19','coronavirus','virus'],
  contentUrl: 'https://monases.com',
  birthday: DateTime.now(),
  childDirected: false,
  designedForFamilies: false,
  gender: MobileAdGender.male, // or MobileAdGender.female, MobileAdGender.unknown
  testDevices: <String>[], // Android emulators are considered test devices
);
BannerAd myBanner = BannerAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: "ca-app-pub-5852042324891789/2741444060",
  size: AdSize.smartBanner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);
const HtmBdMigraciones = """
<img src="asset:images/queeselcoronavirus.jpg"/>
<img src="asset:images/sintomas.jpg"/>
<img src="asset:images/informate_prevencion.jpg"/>
<img src="asset:images/quienes_padeceran.jpg"/>
<img src="asset:images/prevencion3.jpg"/>
<img src="asset:images/prevencion1.png"/>
<img src="asset:images/quees3.jpg"/>
<img src="asset:images/coronavirus2019.jpg"/>
<img src="asset:images/prevencion4.jpg"/>
<img src="asset:images/prevencion5.jpg"/>
<img src="asset:images/proteccion.jpg"/>
<img src="asset:images/medicamentos.jpg"/>
<img src="asset:images/origen_coronavirus.jpg"/>
<img src="asset:images/paquetes_de_china.jpg"/>
<img src="asset:images/remedios.jpg"/>
<img src="asset:images/tratamiento1.png"/>
<img src="asset:images/imagen_coronavirus.jpg"/>
<img src="asset:images/que_es2.jpg"/>
<img src="asset:images/probabilidad.jpg"/>
<img src="asset:images/como_colocarse_una_mascarilla.jpg"/>
<img src="asset:images/como_colocarse_una_mascarilla2.jpg"/>
<img src="asset:images/como_colocarse_una_mascarilla3.jpg"/>
<img src="asset:images/como_colocarse_una_mascarilla4.jpg"/>
<img src="asset:images/cuando_votar_mascarilla.jpg"/>
<img src="asset:images/cuando_usar_mascarilla.jpg"/>
<img src="asset:images/prevencion2.png"/>
<img src="asset:images/infografiacoronavirus.png"/>
<img src="asset:images/vidacovid19.jpg"/>
<h2>Contacto</h2>
<p>Nombre: Moises Linares O.</p>
<p>Email: elnaufrago2009@gmail.com</p>
""";





