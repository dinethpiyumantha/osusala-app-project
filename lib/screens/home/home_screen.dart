import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:osusala/constraints.dart';
import 'package:osusala/screens/home/components/card_button.dart';

// Statefull Home
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;
  bool isMenuExpanded = false;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  void changeMenuIcon() {
    isMenuExpanded = isMenuExpanded ? false : true;
    if (isMenuExpanded) {
      animController.forward();
    } else {
      animController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: oLightColor.withOpacity(0),
        toolbarHeight: 100,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Center(
            child: Container(
              child: IconButton(
                color: oWhiteColor,
                icon: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  progress: animController,
                ),
                onPressed: () {
                  changeMenuIcon();
                },
              ),
              decoration: BoxDecoration(
                color: oPrimaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        child: new StaggeredGridView.count(
          crossAxisCount: 2,
          staggeredTiles: const <StaggeredTile>[
            StaggeredTile.fit(2),
            StaggeredTile.extent(2, 50),
            StaggeredTile.extent(1, 140),
            StaggeredTile.extent(1, 140),
            StaggeredTile.extent(1, 140),
            StaggeredTile.extent(1, 140),
            StaggeredTile.extent(1, 140),
            StaggeredTile.extent(1, 140),
            StaggeredTile.extent(2, 20),
          ],
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/testslide.png'),
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/icons/dark-logo.png',
                    height: 100,
                    fit: BoxFit.fitHeight,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'ALL SERVICES',
                    style: TextStyle(
                        color: oPrimaryColor,
                        fontSize: 18,
                        fontFamily: 'BioSans',
                        fontStyle: FontStyle.normal),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: CardButton('capsules.png', 'Products')),
            Align(
                alignment: Alignment.centerLeft,
                child: CardButton('cartplus.png', 'Orders')),
            Align(
                alignment: Alignment.centerRight,
                child: CardButton('chat.png', 'Chat')),
            Align(
                alignment: Alignment.centerLeft,
                child: CardButton('tag.png', 'Offers')),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/location');
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: CardButton('location.png', 'Locations'),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/location');
              },
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: CardButton('userscog.png', 'Profile')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '2021 Developed by Team DevAlgo',
                  style: TextStyle(
                    color: oSecondaryColor,
                    fontFamily: defaltFontFamily,
                    fontSize: 10,
                  ),
                ),
              ],
            )
          ],
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
