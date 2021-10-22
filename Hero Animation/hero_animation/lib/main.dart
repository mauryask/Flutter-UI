import 'package:flutter/material.dart';
import './details.dart';
import './my_detail.dart';

void main() => runApp(const MaterialApp(
      home: HeroAnimation(),
    ));

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  List<Details> cardData = [
    Details('images/img1.jpg', 'Lorem Ipsum is a dumy text',
        'Over the past decade, ownership of dogs, cats and other pets has increased multifold owing to rising disposable income majorly in the middle-class bracket, rapid urbanization and rising nuclear families. Further, in recent times'),
    Details('images/img2.jpg', 'Lorem Ipsum is a dumy text',
        'Over the past decade, ownership of dogs, cats and other pets has increased multifold owing to rising disposable income majorly in the middle-class bracket, rapid urbanization and rising nuclear families. Further, in recent times'),
    Details('images/img3.jpg', 'Lorem Ipsum is a dumy text',
        'Over the past decade, ownership of dogs, cats and other pets has increased multifold owing to rising disposable income majorly in the middle-class bracket, rapid urbanization and rising nuclear families. Further, in recent times'),
    Details('images/img4.jpg', 'Lorem Ipsum is a dumy text',
        'Over the past decade, ownership of dogs, cats and other pets has increased multifold owing to rising disposable income majorly in the middle-class bracket, rapid urbanization and rising nuclear families. Further, in recent times'),
    Details('images/img5.jpg', 'Lorem Ipsum is a dumy text',
        'Over the past decade, ownership of dogs, cats and other pets has increased multifold owing to rising disposable income majorly in the middle-class bracket, rapid urbanization and rising nuclear families. Further, in recent times'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hero Animation',
        ),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < 5; i++) buildCards(context, i),
        ],
      ),
    );
  }

  Widget buildCards(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyDetail(detail: cardData[index]),
          ),
        );
      },
      child: Card(
        elevation: 5.0,
        margin: const EdgeInsets.all(12.0),
        child: Container(
          height: 85.0,
          width: 232.0,
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Hero(
                tag: cardData[index],
                child: Image.asset(cardData[index].image),
              ),
              const SizedBox(width: 20.0),
              Text(cardData[index].heading),
            ],
          ),
        ),
      ),
    );
  }
}
