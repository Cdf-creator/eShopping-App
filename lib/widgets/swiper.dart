// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List imgList = [
    'https://images.directliquidation.com/vz6kFrno5V-1HRm89a6Qstv03vY=/smart/filters:format(jpeg):fill(white,1)/files.directliquidation.com/directliquidation/2019/04/dollar-789114_1280-e1556188090669.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSttFH7RWreGGhJrFI2zdkOoSxoJYH9J_QTJn7SGbmQtimsBIvNywLhus_36l91BwU7PW0&usqp=CAU',
    'https://mcdn.mudah.my/static-assets/mweb/41557/_next/static/images/yellow_banner-d3c2d7ee56d8e6c9ec53a9d1f7427b55.png'
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            imgList[index],
            fit: BoxFit.fill,
            /*loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.indigo),
                  strokeWidth: 5,
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
                ),
              );
            },*/
          );
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
        control: new SwiperControl(
          iconPrevious: null,
          iconNext: null,
        ),
      ),
    );
  }
}
