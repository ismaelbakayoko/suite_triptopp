import 'package:flutter/material.dart';
import 'package:tourisme/DetailHotel.dart';

class Exploreville extends StatefulWidget {
  const Exploreville({super.key});

  @override
  State<Exploreville> createState() => _ExplorevilleState();
}

class _ExplorevilleState extends State<Exploreville> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Hotel",
              ),
              Tab(
                text: "Activité",
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          Column(children: [
            Container(
              padding: const EdgeInsets.only(top: 150),
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image copy.png"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  const Text(
                    "Abidjan est une ville du littoral  Atlantique sud de la Côte d'Ivoire",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailHotel(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotel",
                  style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Voir +",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  padding:
                      EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0),
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailHotel(),
                            ));
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.only(bottom: 10),
                        height: 130,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/ivoire.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Hotel Ivoire",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              backgroundColor:
                                  const Color.fromARGB(138, 189, 189, 189)),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(bottom: 10),
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/ivoire.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Hotel Ivoire",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            backgroundColor:
                                const Color.fromARGB(138, 189, 189, 189)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(bottom: 10),
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/ivoire.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Hotel Ivoire",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            backgroundColor:
                                const Color.fromARGB(138, 189, 189, 189)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(bottom: 10),
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/ivoire.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Hotel Ivoire",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            backgroundColor:
                                const Color.fromARGB(138, 189, 189, 189)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.only(bottom: 10),
                      height: 130,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/ivoire.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Hotel Ivoire",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            backgroundColor:
                                const Color.fromARGB(138, 189, 189, 189)),
                      ),
                    ),
                  ]),
            ),
          ]),
          SizedBox(
            child: Text("Moi aussi"),
          )
        ]),
      ),
    );
  }
}
