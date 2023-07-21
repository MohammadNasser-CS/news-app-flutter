import 'package:flutter/material.dart';
import 'package:news_app/models/card_item.dart';

class NewsCardItems extends StatelessWidget {
  const NewsCardItems({
    super.key,
    required this.cardItem,
  });
  // CardItem --> is i model class we make it to Contain all needed data and information .
  // we make import for it , so that we can use it .
  final CardItem cardItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.width * 0.35,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15)),
            child: Image.asset(
              cardItem.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardItem.category,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  cardItem.title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  //maxLines: 2 --> this to detect for this text that ever never expand more than 2 lines at all .
                  maxLines: 2,
                  // TextOverflow.ellipsis --> if the Text is larger than the width of it's Parent width
                  // put (...) to inform user that there is more .
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        cardItem.ownerImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      cardItem.ownerName,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      cardItem.createdAt,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
