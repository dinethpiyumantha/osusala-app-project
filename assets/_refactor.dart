// class Homescreen extends StatelessWidget {

//   late AnimationController animController;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appBar(),
//       body: Container(
//         margin: EdgeInsets.all(0),
//         child: new StaggeredGridView.count(
//           crossAxisCount: 2,
//           staggeredTiles: const <StaggeredTile>[
//             StaggeredTile.fit(2),
//             StaggeredTile.extent(2, 50),
//             StaggeredTile.extent(1, 140),
//             StaggeredTile.extent(1, 140),
//             StaggeredTile.extent(1, 140),
//             StaggeredTile.extent(1, 140),
//             StaggeredTile.extent(1, 140),
//             StaggeredTile.extent(1, 140),
//           ],
//           children: <Widget>[
//             Container(
//               child: Image.asset('assets/images/testslide.png'),
//             ),
//             Center(
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.asset(
//                     'assets/icons/dark-logo.png',
//                     height: 100,
//                     fit: BoxFit.fitHeight,
//                   ),
//                   SizedBox(
//                     width: 8.0,
//                   ),
//                   Text(
//                     'ALL SERVICES',
//                     style: TextStyle(
//                         color: oPrimaryColor,
//                         fontSize: 18,
//                         fontFamily: 'BioSans',
//                         fontStyle: FontStyle.normal),
//                   ),
//                 ],
//               ),
//             ),
//             Align(
//                 alignment: Alignment.centerRight,
//                 child: CardButton('capsules.png', 'Products')),
//             Align(
//                 alignment: Alignment.centerLeft,
//                 child: CardButton('cartplus.png', 'Orders')),
//             Align(
//                 alignment: Alignment.centerRight,
//                 child: CardButton('chat.png', 'Chat')),
//             Align(
//                 alignment: Alignment.centerLeft,
//                 child: CardButton('tag.png', 'Offers')),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushNamed(context, '/location');
//               },
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: CardButton('location.png', 'Locations'),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushNamed(context, '/location');
//               },
//               child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: CardButton('userscog.png', 'Profile')),
//             ),
//           ],
//           mainAxisSpacing: 4.0,
//           crossAxisSpacing: 4.0,
//         ),
//       ),
//     );
//   }

//   AppBar appBar() {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       backgroundColor: oLightColor.withOpacity(0),
//       toolbarHeight: 100,
//       elevation: 0,
//       flexibleSpace: SafeArea(
//         child: Center(
//           child: Container(
//             child: IconButton(
//               color: oWhiteColor,
//               icon: AnimatedIcon(
//                 icon: AnimatedIcons.close_menu,
//                 progress: animController,
//               ),
//               onPressed: () {
//                 print('Clicked: Menu Button');
//               },
//             ),
//             decoration: BoxDecoration(
//               color: oPrimaryColor,
//               borderRadius: BorderRadius.circular(50),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
