import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  final String profileImage;
  final String profileName;
  final String usernameTag;
  final String tweetDescription;
  final String? tweetImage;

  const TweetCard({
    super.key,
    required this.profileImage,
    required this.profileName,
    required this.usernameTag,
    required this.tweetDescription,
    this.tweetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
      //Main Tweet Row
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Profile Image 
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(profileImage),
            radius: 25,
          ),
          const SizedBox(width: 10),
          Expanded(
            //For User handle and tweet description
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //to make make name and hnadle bold
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: profileName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: " $usernameTag",
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                //tweet description 
                Text(tweetDescription, style: const TextStyle(fontSize: 15)),
                //if tweet has image then display it
                if (tweetImage != null) ...[
                  const SizedBox(height: 8),
                  //to make the iamge container rounded
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(tweetImage!),
                  ),
                ],
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  //icons for tweet: share,post,like
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.chat_rounded, size: 18, color: Colors.grey),
                      Icon(Icons.repeat_sharp, size: 18, color: Colors.grey),
                      Icon(
                        Icons.favorite_border_sharp,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Icon(Icons.share_sharp, size: 18, color: Colors.grey),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
