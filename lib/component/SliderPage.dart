// import 'package:flutter/material.dart';
// import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';

// void main() {
//   runApp(const Sliderpage());
// }

// class Sliderpage extends StatelessWidget {
//   const Sliderpage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   static const List<String> sampleImages = [
//     'https://img.freepik.com/free-photo/lovely-woman-vintage-outfit-expressing-interest-outdoor-shot-glamorous-happy-girl-sunglasses_197531-11312.jpg',
//     'https://img.freepik.com/free-photo/shapely-woman-vintage-dress-touching-her-glasses-outdoor-shot-interested-relaxed-girl-brown-outfit_197531-11308.jpg',
//     'https://img.freepik.com/premium-photo/cheerful-lady-brown-outfit-looking-around-outdoor-portrait-fashionable-caucasian-model-with-short-wavy-hairstyle_197531-25791.jpg',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Expanded(
//         child: Column(
//           children: [
//             const Text(
//               'FanCarouselImageSlider Type1:',
//               style: TextStyle(fontSize: 20),
//             ),
//             FanCarouselImageSlider.sliderType1(
//               imagesLink: sampleImages,
//               isAssets: false,
//               autoPlay: true,
//               sliderHeight: 300,
//               imageFitMode: BoxFit.cover,
//               showIndicator: false,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




// // const Text(
// //               'FanCarouselImageSlider Type2:',
// //               style: TextStyle(fontSize: 20),
// //             ),
// //             FanCarouselImageSlider.sliderType2(
// //               imagesLink: sampleImages,
// //               isAssets: false,
// //               autoPlay: false,
// //               sliderHeight: 300,
// //               currentItemShadow: const [],
// //               sliderDuration: const Duration(milliseconds: 200),
// //               imageRadius: 0,
// //               slideViewportFraction: 1.2,
// //             ),
// //             const SizedBox(
// //               height: 50,
// //             ),



//  drawer: Drawer(
//             child: ListView(padding: EdgeInsets.zero, children: <Widget>[
//           const UserAccountsDrawerHeader(
//             accountName: Text('Nom de l\'Utilisateur'),
//             accountEmail: Text('email@example.com'),
//             currentAccountPicture: CircleAvatar(
//               backgroundImage: AssetImage(
//                 "assets/image.png",
//               ),
//             ),
//             decoration: BoxDecoration(
//               color: Colors.indigoAccent,
//             ),
//           ),
//           ListTile(
//             leading: const Icon(Icons.home),
//             title: const Text('Accueil'),
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const Exploreville()));
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.person),
//             title: const Text('Profil'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.settings),
//             title: const Text('Paramètres'),
//             onTap: () {
//               Navigator.pop(context);
//             },
//           ),
//           ListTile(
//               leading: const Icon(Icons.logout),
//               title: const Text('Déconnexion'),
//               onTap: () {
//                 Navigator.pop(context);
//               }),
//         ])),
        
        
        