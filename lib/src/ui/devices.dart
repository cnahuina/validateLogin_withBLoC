import 'package:flutter/cupertino.dart';

class Devices extends StatelessWidget {
  Widget cupertinoPageScaffold() => CupertinoPageScaffold(
      child: Center(
        child: Text("Hello cupertino iOs"),
      ),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.destructiveRed,
        middle: Text("Cupertino") ,
        trailing: Icon(CupertinoIcons.mic,color: CupertinoColors.white),
      ),
    );

  Widget cupertinoTabNavigation() => CupertinoTabScaffold(
      tabBuilder: (context,i) => CupertinoPageScaffold(
          child: Center(
            child: i == 0 ? Text("Phone"): Text("Chat"),
          ),
        ),
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.phone),
            title: Text("Phone")),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.conversation_bubble),
            title: Text("Chat")),
        ],
      ),
    );

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Chats"),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text("Whatsapp"),
            ),
          )
        ],
      ),
    );
  }
}