import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  Box({required this.user, required this.post, required this.userImage});

  final String user;
  final String post;
  final String userImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          postBar(
            user: user,
            userImage: userImage,
          ),
          Image.network(post),
          like_Love_send(),
        ],
      ),
    );
  }
}

class like_Love_send extends StatelessWidget {
  const like_Love_send({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Image.asset(
                  'images/like.png',
                  height: 35,
                ),
                Image.asset(
                  'images/com.png',
                  height: 35,
                ),
                Image.asset(
                  'images/send.png',
                  height: 35,
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              'images/save.png',
              height: 35,
            ),
          ),
        ],
      ),
    );
  }
}

class postBar extends StatelessWidget {
  const postBar({required this.user, required this.userImage});

  final String user;
  final String userImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                CircleAvatar(
                    radius: 20, backgroundImage: NetworkImage(userImage)),
                SizedBox(
                  width: 20,
                ),
                Text(user),
              ],
            ),
          ),
          Expanded(child: Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
