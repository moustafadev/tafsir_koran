import 'package:flutter/material.dart';
import 'package:tafsir/core/configurator/colors.dart';


class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14, bottom: 20, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ассаламу алайкум",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 5,),
              Text(
                "Якуби Абдукаххор",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 110,
          margin: EdgeInsets.fromLTRB(14, 0, 14, 20),
          padding: EdgeInsets.only(left: 14, top: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purpleAccent, primaryColor.withOpacity(0.9)],
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Stack(
              children: [
                Positioned(
                  child: ListView(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.menu_book, color: whiteColor, size: 20),
                          SizedBox(width: 8),
                          Text("Последнее чтение",
                              style: Theme.of(context)
                                  .textTheme
                                  .apply(
                                      bodyColor: whiteColor, fontSizeDelta: -5)
                                  .bodyText1),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Surah title
                          Text("Al-Fatiah",
                              style: Theme.of(context)
                                  .textTheme
                                  .apply(bodyColor: whiteColor)
                                  .bodyText2),
                          SizedBox(height: 6),
                          //Current ayat
                          Text("Аят №1",
                              style: Theme.of(context)
                                  .textTheme
                                  .apply(fontSizeDelta: -4)
                                  .subtitle2),
                          SizedBox(height: 10),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: -40,
                  bottom: -40,
                  child: Container(
                    width: 200,
                    child: Image.asset('assets/images/quran_icon.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
