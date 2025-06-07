// import 'package:ecommerceapp/widgets/constants.dart';
// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image.asset(
//             "assets/images/Portrait.jpg",
//             // "assets/images/profile3.jpg",
//             fit: BoxFit.cover,
//             height: size.height,
//             width: size.width,
//           ),
//           Padding(
//             // ignore: prefer_const_constructors
//             padding: EdgeInsets.symmetric(horizontal: 9, vertical: 9),
//             child: Align(
//               alignment: Alignment.bottomCenter,
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: Container(
//                   height: size.height * 0.5,
//                   padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 8, vertical: 15),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Stack(
//                                   children: [
//                                     Image.asset(
//                                       "assets/images/profil.png",
//                                       height: 70,
//                                       width: 70,
//                                     ),
//                                     Positioned(
//                                       bottom: 0,
//                                       right: 0,
//                                       child: Container(
//                                         height: 25,
//                                         width: 25,
//                                         decoration: BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color:
//                                               Color.fromARGB(255, 95, 255, 99),
//                                         ),
//                                         child: Icon(
//                                           Icons.check,
//                                           color: Colors.white,
//                                           size: 20,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Row(
//                                   children: [
//                                     Container(
//                                       decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(20),
//                                           border: Border.all(
//                                               color: Colors.black54)),
//                                       padding: EdgeInsets.symmetric(
//                                           vertical: 9, horizontal: 12),
//                                       child: Text(
//                                         "ADD FRIEND",
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 15,
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 8,
//                                     ),
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(20),
//                                         color: kprimarytColor,
//                                         //  color: Colors.pink,
//                                       ),
//                                       padding: EdgeInsets.symmetric(
//                                           horizontal: 12, vertical: 8),
//                                       child: Text(
//                                         "Follow",
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 16,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Text(
//                               "DINA SALEH",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w800,
//                                 fontSize: 35,
//                               ),
//                             ),
//                             Text(
//                               "Flutter Developer",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w800,
//                                 fontSize: 16,
//                                 color: Colors.black45,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 15,
//                             ),
//                             Text(
//                               "Flutter developer skills are a group of technical and soft skills that help you develop,",
//                               style: TextStyle(
//                                 fontSize: 16,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Spacer(),
//                       Divider(
//                         color: Colors.black12,
//                       ),
//                       SizedBox(
//                         height: 65,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             friendAndMore("FRIENDS", "2318"),
//                             friendAndMore("FOLLOWING", "364"),
//                             friendAndMore("FOLLWER", "175"),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   SizedBox friendAndMore(title, nuber) {
//     return SizedBox(
//       width: 110,
//       child: Column(
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 14,
//               color: Colors.black26,
//             ),
//           ),
//           Text(
//             nuber,
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final paddingValue = size.width * 0.025;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Portrait.jpg",
            fit: BoxFit.cover,
            height: size.height,
            width: size.width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: paddingValue, vertical: paddingValue),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: size.height * 0.5,
                  padding: EdgeInsets.symmetric(horizontal: paddingValue, vertical: paddingValue * 2),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: paddingValue, vertical: paddingValue),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/profil.png",
                                      height: size.width * 0.18,
                                      width: size.width * 0.18,
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: size.width * 0.07,
                                        width: size.width * 0.07,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color.fromARGB(255, 95, 255, 99),
                                        ),
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: size.width * 0.045,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.black54),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: size.height * 0.01,
                                        horizontal: size.width * 0.03,
                                      ),
                                      child: Text(
                                        "ADD FRIEND",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.035,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: kprimarytColor,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: size.width * 0.035,
                                        vertical: size.height * 0.01,
                                      ),
                                      child: Text(
                                        "Follow",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: size.width * 0.04,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.015),
                            Text(
                              "DINA SALEH",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: size.width * 0.08,
                              ),
                            ),
                            Text(
                              "Flutter Developer",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: size.width * 0.04,
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(height: size.height * 0.015),
                            Text(
                              "Flutter developer skills are a group of technical and soft skills that help you develop,",
                              style: TextStyle(
                                fontSize: size.width * 0.038,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Divider(color: Colors.black12),
                      SizedBox(
                        height: size.height * 0.08,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            friendAndMore("FRIENDS", "2318", size),
                            friendAndMore("FOLLOWING", "364", size),
                            friendAndMore("FOLLOWER", "175", size),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget friendAndMore(String title, String number, Size size) {
    return SizedBox(
      width: size.width * 0.28,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width * 0.035,
              color: Colors.black26,
            ),
          ),
          Text(
            number,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width * 0.06,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}