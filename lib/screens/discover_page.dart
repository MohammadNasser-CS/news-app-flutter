import 'package:flutter/material.dart';
import 'package:news_app/models/card_item.dart';
import 'package:news_app/widgets/card_items.dart';
import 'package:news_app/widgets/discover_field.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> titles = ["All", "Politic", "Education", "Game", "Weather"];
    return Scaffold(
      //AppBar Configuration
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        // padding here is to make as a container in a screen for the whole design to be in it .
        padding: const EdgeInsets.all(16),
        // Design Start here .
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox is for make a margin between widget , it's just take a space wthout ane effect shown in the screen.
            const SizedBox(height: 12),
            const Text(
              'Discover',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 1),
            const Text(
              'News from all around the world!',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 12),
            // here is the search (fake Search) Part .
            Container(
              //padding here is to make like a space between the Container border and Container content .
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              // double.infinity --> mean take the max width .
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                // BorderRadius.circular(30) --> to make the the container looks like circle .
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Row(
                // Row here is to put the container parts in Horizontal order .
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  Spacer(),
                  Image(image: AssetImage('assets/images/icons_slider.png')),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // here the Fields of Cards to be selected (fake) .
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // for (int index = 0; index < titles.length; index++)
                  //   Container(
                  //       margin: const EdgeInsets.only(right: 8),
                  //       child: DiscoverField(
                  //           title: titles[index], onClick: () {})),
                  /* 
                  the List.generate --> is same a the above commented for loop code , it's use te generate 
                  a widgets .
                  the 3 dots (...) before (List) mean --> destruct the generated Widget List here (Put them here).
                  we make a class with name (DiscoverField) --> to make our code more effecient and readabl ,
                  easily by design a single Discovery Field and call it more than one time as needed.
                  */
                  ...List.generate(
                      titles.length,
                      (index) => Container(
                          margin: const EdgeInsets.only(right: 8),
                          child: DiscoverField(
                              title: titles[index], onClick: () {})))
                ],
              ),
            ),
            const SizedBox(height: 12),
            // here is the cards .
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // same as the DiscoverField, we make a class named (NewsCardItems) .
                    ...List.generate(
                      10,
                      (index) => Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: NewsCardItems(
                          cardItem: CardItem(
                              image: 'assets/images/ship.jpg',
                              category: 'sport',
                              title:
                                  'What training do volleyball players need?',
                              ownerName: 'Mohammad',
                              ownerImage:
                                  'https://userstock.io/data/wp-content/uploads/2017/09/ilaya-raja-280339-1024x981.jpg',
                              createdAt: 'Fev 27,2023'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
