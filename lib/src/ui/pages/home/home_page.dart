import 'package:flutter/material.dart';
import 'package:google_ads_example/src/ui/widgets/custom_banner_ad.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          if (index % 5 == 0.0 && index > 0) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomBannerAd(),
                Card(
                  child: ListTile(
                    title: Text(contacts[index]),
                  ),
                )
              ],
            );
          }
          return Card(
            child: ListTile(
              title: Text(contacts[index]),
            ),
          );
        },
      ),
    );
  }
}

const List<String> contacts = [
  'Abigail',
  'Alexandra',
  'Alison',
  'Amanda',
  'Amelia',
  'Amy',
  'Andrea',
  'Angela',
  'Anna',
  'Anne',
  'Audrey',
  'Ava',
  'Bella',
  'Bernadette',
  'Carol',
  'Caroline',
  'Carolyn',
  'Chloe',
  'Claire',
  'Deirdre',
  'Diana',
  'Diane',
  'Donna',
  'Dorothy',
  'Elizabeth',
  'Ella',
  'Emily',
  'Emma',
  'Faith',
  'Felicity',
  'Fiona',
  'Gabrielle',
  'Grace',
  'Hannah',
  'Heather',
  'Irene',
  'Jan',
  'Jane',
  'Jasmine',
  'Jennifer',
  'Jessica',
  'Joan',
  'Joanne',
  'Julia',
  'Karen',
  'Katherine',
  'Kimberly',
  'Kylie',
  'Lauren',
  'Leah',
  'Lillian',
  'Lily',
  'Lisa',
  'Madeleine',
  'Maria',
  'Mary',
  'Megan',
  'Melanie',
  'Michelle',
  'Molly',
  'Natalie',
  'Nicola',
  'Olivia',
  'Penelope',
  'Pippa',
  'Rachel',
  'Rebecca',
  'Rose',
  'Ruth',
  'Sally',
  'Samantha',
  'Sarah',
  'Sonia',
  'Sophie',
  'Stephanie',
  'Sue',
  'Theresa',
  'Tracey',
  'Una',
  'Vanessa',
  'Victoria',
  'Virginia',
  'Wanda',
  'Wendy',
  'Yvonne',
  'Zoe',
];
