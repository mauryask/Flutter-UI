import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neuro_button/colors.dart';

class Intor extends StatelessWidget {
  final bool day;
  const Intor({Key? key, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        children: [
          Text(
            'Developer : Shubham Maurya',
            style: GoogleFonts.montserrat(
              fontSize: 12.0,
              color: day ? textColorDark : textColorLight,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            'Despasito',
            style: GoogleFonts.montserrat(
              fontSize: 25.0,
              color: day ? textColorDark : textColorLight,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'Luis Fonsis',
            style: GoogleFonts.montserrat(
              fontSize: 15.0,
              color: day ? textColorDark : textColorLight,
            ),
          ),
        ],
      ),
    );
  }
}

class Beats extends StatelessWidget {
  const Beats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: 5,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: 5,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: 5,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            gradient: beatGradient,
          ),
        ),
      ],
    );
  }
}

class VolumButton extends StatelessWidget {
  final double buttonRadisus, childRadius;
  final String text;
  final bool day;

  const VolumButton({
    Key? key,
    required this.buttonRadisus,
    required this.childRadius,
    required this.text,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonRadisus,
      width: buttonRadisus,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: day
              ? [
                  Colors.white70,
                  Colors.black12,
                ]
              : [
                  themeColorLight.withOpacity(0.1),
                  Colors.black,
                ],
        ),
        boxShadow: day
            ? [
                BoxShadow(
                  color: const Color(0xff090010).withOpacity(0.6),
                  offset: const Offset(5, 5),
                  blurRadius: 10.0,
                  spreadRadius: 3.0,
                ),
                BoxShadow(
                  color: const Color(0xffb8b9bc).withOpacity(0.6),
                  offset: const Offset(-5, -5),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ]
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7),
                  offset: const Offset(5, 5),
                  blurRadius: 10.0,
                  spreadRadius: 3.0,
                ),
                BoxShadow(
                  color: themeColorLight.withOpacity(0.2),
                  offset: const Offset(-5, -5),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
              ],
      ),
      child: Center(
        child: Container(
          height: childRadius,
          width: childRadius,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: buttonGradient,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset(
                text,
                width: 11.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  final double buttonRadisus, childRadius;
  final String text;
  final bool day;

  const PlayButton({
    Key? key,
    required this.buttonRadisus,
    required this.childRadius,
    required this.text,
    required this.day,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonRadisus,
      width: buttonRadisus,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: day
              ? [
                  Colors.white70,
                  Colors.black12,
                ]
              : [
                  themeColorLight.withOpacity(0.050),
                  Colors.black,
                ],
        ),
        boxShadow: day
            ? [
                BoxShadow(
                  color: const Color(0xff090010).withOpacity(0.6),
                  offset: const Offset(8, 8),
                  blurRadius: 15.0,
                  spreadRadius: 3.0,
                ),
                BoxShadow(
                  color: const Color(0xffb8b9bc).withOpacity(0.6),
                  offset: const Offset(-8, -8),
                  blurRadius: 18.0,
                  spreadRadius: 3.0,
                ),
              ]
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.7),
                  offset: const Offset(8, 8),
                  blurRadius: 15.0,
                  spreadRadius: 3.0,
                ),
                BoxShadow(
                  color: themeColorLight.withOpacity(0.2),
                  offset: const Offset(-8, -8),
                  blurRadius: 15.0,
                  spreadRadius: 3.0,
                ),
              ],
      ),
      child: Center(
        child: Container(
          height: childRadius,
          width: childRadius,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: buttonGradient,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset(
                text,
                width: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
