import 'package:flutter/material.dart';

class DetailHotel extends StatefulWidget {
  const DetailHotel({super.key});

  @override
  State<DetailHotel> createState() => _DetailHotelState();
}

class _DetailHotelState extends State<DetailHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 227, 229, 241),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 1.1,
          children: [
            GestureDetector(
              child: Container(
                margin: EdgeInsets.all(5),
                height: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.network(
                        "https://www.mews.com/hs-fs/hubfs/type%20de%20chambre%20par%20agencement.webp?width=800&height=600&name=type%20de%20chambre%20par%20agencement.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Chombre 1",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "100k / Nuit",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.network(
                        "https://www.mews.com/hs-fs/hubfs/type%20de%20chambre%20par%20agencement.webp?width=800&height=600&name=type%20de%20chambre%20par%20agencement.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      "Chombre 1",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "100k / Nuit",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
