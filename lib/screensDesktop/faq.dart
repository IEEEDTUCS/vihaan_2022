import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:vihaan_2022/data/images.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  _Faq createState() => _Faq();
}

class _Faq extends State<Faq> {
  Widget makeUI(
      {required Color color,
      required String question,
      required String answer}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: ExpansionTileCard(
        expandedColor: color,
        baseColor: color,
        title: Text(
          question,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17.0,
          ),
        ),
        children: <Widget>[
          const Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.black54,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 12.0,
              ),
              child: Text(
                answer,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    var faqList = <Widget>[
      makeUI(
          color: Colors.purple,
          question: 'What is Vihaan?',
          answer:
              'Vihaan is a national level hackathon to challenge your creative potential and build innovative solutions to existing problems.'),
      makeUI(
          color: Colors.redAccent,
          question: 'Hackathon? What’s that?',
          answer:
              'In general, it is a 2-3 days long competition which makes you come up with a technical solution to an existing problem under the topics provided. The purpose of a hackathon is for a group of programmers to work together on a collaboration project. In a hackathon, you have to code during the event although you can come up with ideas for how to proceed beforehand.'),
      makeUI(
          color: Colors.indigoAccent,
          question:
              'Wait so am I required to know coding? I don’t know if I’m skilled enough.',
          answer:
              'Participation is the essential part, learning is the goal. You might need a basic idea of coding though on the development side.'),
      // makeUI(
      //     color: Colors.orange,
      //     question: 'Is there any need for me to come to campus for this?',
      //     answer:
      //         'No, Vihaan this year is on a completely online platform. You may compete in the comfort of your home.'),
      makeUI(
          color: Colors.green,
          question: 'Am I required to pay anything?',
          answer:
              'No, it’s totally free. We only require your knowledge and enthusiasm.'),
      makeUI(
          color: Colors.amber,
          question: 'I’m interested, How do I register?',
          answer:
              'Registration links are active on the website. And the Google forms must have reached you already. There is no requirement of money to register.'),
      makeUI(
          color: Colors.deepPurple,
          question:
              'What’s the prize if you end up winning? Give me some incentive.',
          answer:
              'There is a butt load of a cash prize and swags up for grabs. Further details will be released soon. Although, last year the cash prize were around 1.5 lakhs and swags worth 5 lakhs of rupees.'),
      makeUI(
          color: Colors.indigo,
          question:
              'Are there any prerequisites for participating? Am I required to have any form of tools?',
          answer:
              'You’ll just need your trusty laptop and a sufficient bandwidth internet connection.'),
      makeUI(
          color: Colors.lightBlueAccent,
          question: 'Is it a team competition, can’t I participate alone?',
          answer:
              'Yes, Vihaan is a team based hackathon competition and you’ll need to form or be a part of a team to participate. Teaming up will help you socialize and increase your reach.'),
      makeUI(
          color: Colors.black,
          question:
              'So what’s the participation criteria for me and my teammates?',
          answer:
              'There is only one, you must be at least above 13 and are a college undergraduate or a high school student.'),
      makeUI(
          color: Colors.brown,
          question: 'That’s great! Any other major thing I need to know?',
          answer: 'Nope, you’re all set. Rev your engines up!'),
    ];
    return Container(
      color: Colors.black54,
      padding: const EdgeInsets.all(8.0),
      child: (width >= 800)
          ? Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Image.network(
                        sectionImages['images/faq.png'].toString()),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: faqList,
                    ),
                  ),
                ),
              ],
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 250,
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            sectionImages["images/faq.png"].toString()),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: faqList,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
