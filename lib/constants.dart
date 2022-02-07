import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ShowSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(content),
  ));
}

bool switchVal = false;

var kAppBarTheme = kLightAppBarTheme;
var kScaffoldbackgroundcolor = kLightBackgroundColor;
const kDarkBackgroundColor = Color(0xFF101010);
const kLightBackgroundColor = Color(0xFFFFFFFF);
const kLightAppBarTheme = AppBarTheme(
  toolbarHeight: 75,
  titleTextStyle: kAppbartitle,
  color: Color(0xFFFFFFFF),
);
const kDarkAppBarTheme = AppBarTheme(
  toolbarHeight: 75,
  titleTextStyle: kAppbartitle,
  color: Color(0xFF101010),
);

const kHomepageTextStyle = TextStyle(
  fontSize: 80,
  fontFamily: 'Lobster',
  color: Colors.cyan,
);
const kTextstyle = TextStyle(
  fontSize: 15,
  color: Color(0xFFA4A4A4),
);
const kAppbartitle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
);
const kBottomButtonStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const kGradientcolor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.topRight,
  colors: [Colors.red, Colors.blue],
);

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: kDarkBackgroundColor,
        child: Column(
          children: [
            Container(
              child: Center(
                  child: Text(
                'FCRIT Mart',
                style: kBottomButtonStyle.copyWith(
                  fontSize: 30,
                ),
              )),
              decoration: const BoxDecoration(gradient: kGradientcolor),
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profilepage');
              },
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.cart_fill),
              title: Text('My cart'),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}
