import 'package:flutter/material.dart';
import 'package:twitter_ui/Widgets/tweetCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BuildAppBar(),
    );
  }
}

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 32, 158, 242),
        onPressed: () {},
        shape: CircleBorder(),
        child: Image.asset(
          "assets/addLogo.png",
          filterQuality: FilterQuality.high,
          fit: BoxFit.cover,
          width: 60,
          height: 60,
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            radius: 25,
            child: Image.network(
              'https://img.freepik.com/free-vector/smiling-redhaired-cartoon-boy_1308-174709.jpg?t=st=1743867043~exp=1743870643~hmac=60e47293e16496e5e0c5220c42b85cd9b1e256324e36e44453ea230f80972b89&w=740',
              width: 35,
              height: 35,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: CircleAvatar(
          radius: 22,
          child: Image.asset(
            'assets/twitter.png',
            width: 45,
            height: 45,
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.network(
                  'https://www.w3schools.com/howto/img_avatar.png',
                  width: 35,
                  height: 35,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: BuildFYPage(),
    );
  }
}

// This is the FYPage widget that will be used to build the body of the Scaffold.

class BuildFYPage extends StatelessWidget {
  const BuildFYPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Divider(height: 1, color: Colors.grey.shade300),
                TweetCard(
                  profileImage:
                      'https://randomuser.me/api/portraits/women/1.jpg',
                  profileName: 'Krinza Momin',
                  usernameTag: '@Krinzahere · 12m',
                  tweetDescription: "What was almond's impact on your grades?",
                ),
                Divider(height: 1, color: Colors.grey.shade300),
                TweetCard(
                  profileImage:
                      'https://cdn2.iconfinder.com/data/icons/popular-social-media-flat/48/Popular_Social_Media-10-512.png',
                  profileName: 'Twitter Business',
                  usernameTag: '@TwitterBusiness',
                  tweetDescription:
                      "Did you know that people spend 26% more time viewing ads on Twitter than on other leading platforms? \n\n Get in touch and we'll help you get started with advertising on Twitter.",
                  tweetImage:
                      'https://media.istockphoto.com/id/532058919/photo/young-indian-couple-using-smartphone-in-jodhpur.jpg?s=612x612&w=is&k=20&c=JoUw-5gcmAhW4YhCUJ4aq-NvJFUVU8NMsVHsMkooRyA=',
                ),
                Divider(height: 1, color: Colors.grey.shade300),
                TweetCard(
                  profileImage:
                      'https://randomuser.me/api/portraits/men/32.jpg',
                  profileName: 'Saad Hamid',
                  usernameTag: '@SaadGH · 39s',
                  tweetDescription:
                      'We made “Strawbiryani” at home today and I am curious to know what desi Twitter has to say about it.',
                  tweetImage:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg8yBwPmNRXiGxrX8JTT84Ts8oVMvXTimxoA&s',
                ),
                Divider(height: 1, color: Colors.grey.shade300),
                TweetCard(
                  profileImage:
                      'https://randomuser.me/api/portraits/women/1.jpg',
                  profileName: 'Miko',
                  usernameTag: '@thecodemiko · 1h',
                  tweetDescription: 'WORKIN HARD,A ND PREGNANT WITH...',
                  tweetImage:
                      'https://ih1.redbubble.net/image.4798260528.8053/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
                ),
                Divider(height: 1, color: Colors.grey.shade300),
                TweetCard(
                  profileImage:
                      'https://randomuser.me/api/portraits/men/32.jpg',
                  profileName: 'David Henrie',
                  usernameTag: '@DavidHenrie · 15h',
                  tweetDescription:
                      "Texas. If there's anyone out there with little kids who are suffering and can't afford a hotel please let me know , ym wife and i will take care of it. Praying for Texas. ",
                  tweetImage:
                      'https://ih1.redbubble.net/image.4798260528.8053/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
