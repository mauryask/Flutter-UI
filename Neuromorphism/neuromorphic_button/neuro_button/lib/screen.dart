import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neuro_button/colors.dart';
import 'package:neuro_button/widgets.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool day = true;
  void changeMode() {
    setState(() {
      day = !day;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Widtht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: day
                ? [bgColorLightTop, bgColorLightButton]
                : [bgColorDarkTop, bgColorDarkButton],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: changeMode,
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              height: 30.0,
                              width: 30.0,
                              child: day
                                  ? const Icon(Icons.light_mode_outlined)
                                  : const Icon(
                                      Icons.dark_mode_outlined,
                                      color: Colors.white,
                                    ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Intor(day: day),
                    ],
                  ),
                ),
                Container(
                  height: Height * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: buttonGradient,
                    border: Border.all(
                      width: 5.0,
                      color: const Color(0xff555555),
                    ),
                    boxShadow: day
                        ? [
                            BoxShadow(
                              color: const Color(0xff090010).withOpacity(0.7),
                              offset: const Offset(10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              offset: const Offset(-10.0, -10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            ),
                          ]
                        : [
                            BoxShadow(
                              color: const Color(0xff090010).withOpacity(0.7),
                              offset: const Offset(10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            ),
                            BoxShadow(
                              color: themeColorLight.withOpacity(0.5),
                              offset: const Offset(-10.0, -10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            ),
                          ],
                  ),
                  child: const Center(
                    child: Beats(),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "3:07",
                            style: GoogleFonts.montserrat(
                              color: day ? textColorDark : textColorLight,
                              fontSize: 15.0,
                            ),
                          ),
                          Container(
                            height: 7.0,
                            width: Widtht * 0.45,
                            margin:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff474747),
                                        Color(0xff141414),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                ),
                                FractionallySizedBox(
                                  heightFactor: 1.0,
                                  widthFactor: 0.3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          themeColorDark,
                                          themeColorLight
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "3:07",
                            style: GoogleFonts.montserrat(
                              color: day ? textColorDark : textColorLight,
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          VolumButton(
                              buttonRadisus: Height * 0.04,
                              childRadius: Height * 0.034,
                              text: 'images/minus.png',
                              day: day),
                          const SizedBox(
                            width: 13.0,
                          ),
                          Container(
                            height: Height * 0.06,
                            width: Height * 0.06,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  bgColorDarkTop,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Center(
                              child: Container(
                                height: Height * 0.052,
                                width: Height * 0.052,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff2f2934),
                                      Color(0xff483a51),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '3',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 25.0,
                                      color: themeColorLight,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 13.0,
                          ),
                          VolumButton(
                              buttonRadisus: Height * 0.04,
                              childRadius: Height * 0.034,
                              text: 'images/plus.png',
                              day: day),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Repeat',
                          style: GoogleFonts.montserrat(
                            fontSize: 20.0,
                            color: day ? textColorDark : textColorLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlayButton(
                        buttonRadisus: Height * 0.07,
                        childRadius: Height * 0.062,
                        text: 'images/back.png',
                        day: day),
                    const SizedBox(
                      width: 10.0,
                    ),
                    PlayButton(
                        buttonRadisus: Height * 0.1,
                        childRadius: Height * 0.092,
                        text: 'images/pause.png',
                        day: day),
                    const SizedBox(
                      width: 10.0,
                    ),
                    PlayButton(
                        buttonRadisus: Height * 0.07,
                        childRadius: Height * 0.062,
                        text: 'images/next.png',
                        day: day),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
