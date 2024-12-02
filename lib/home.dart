import 'package:flutter/material.dart';
import 'package:tourisme/component/VilleVogue.dart';

// import 'package:tourisme/ExploreVille.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
              ),
              margin: EdgeInsets.only(bottom: 30),
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKRMVHCBAo7KzP7xYPYUddYjtiHhFpc7PkKg&s"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Text(
                "TropTrotter",
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 90,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.hotel,
                            color: Colors.white,
                          ),
                          Text(
                            "Hotel",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Icon(
                            Icons.hotel,
                            color: Colors.white,
                          ),
                          Text(
                            "Vol",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ]),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Destinations en Vogue",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.black,
                    size: 30,
                  ),
                ],
              ),
              Container(
                height: 250,
                // alignment: Alignment.center,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 220,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(96, 180, 209, 223),
                            borderRadius: BorderRadius.circular(20)),
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 5),
                        child: Column(
                          children: [
                            Container(
                                height: 170,
                                width: 190,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "NomVille",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 30,
                                        ),
                                      ),
                                      Text("NomPays",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 15))
                                    ])),
                            const Text(
                              "Ville",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explorer",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                      ),
                    ),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (contex) => VilleVogue(),
                      ),
                    );
                  },
                  child: Container(
                    height: 250,
                    // alignment: Alignment.center,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 220,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(96, 180, 209, 223),
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, top: 5),
                            child: Column(
                              children: [
                                Container(
                                    height: 170,
                                    width: 190,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            "NomVille",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 30,
                                            ),
                                          ),
                                          Text("NomPays",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 15))
                                        ])),
                                const Text(
                                  "A partir de prix",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          )
        ]),
      ),
      // Add your bottom navigation bar here
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_city_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.self_improvement), label: "")
        ],
      ),
    );
  }
}
