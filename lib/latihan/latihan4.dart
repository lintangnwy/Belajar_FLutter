import 'package:flutter/material.dart';

class Latihan4 extends StatelessWidget {
  Latihan4({super.key});

  final List<Map<String , dynamic>> gallery = [
  {
  'title': 'Harry Potter',
  'description': 
  'Harry Potter adalah serial film Inggris Amerika berdasarkan novel-novel Harry Potter karya penulis J. K. Rowling. Seri ini didistribusikan oleh Warner Bros. dan terdiri dari delapan film fantasi, dimulai dengan Harry Potter dan Batu Bertuah (2001) dan diakhiri dengan Harry Potter dan Relikui Kematian – Bagian 2 (2011).',
  'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3b60AvprlL-k2GddMpwWxO-88jC5UEJhfa-yx2Lt2Lw&s=10',
  'duration':'240'
  },

  {
  'title': 'Se7en',
  'description': 
  'Harry Potter adalah serial film Inggris Amerika berdasarkan novel-novel Harry Potter karya penulis J. K. Rowling. Seri ini didistribusikan oleh Warner Bros. dan terdiri dari delapan film fantasi, dimulai dengan Harry Potter dan Batu Bertuah (2001) dan diakhiri dengan Harry Potter dan Relikui Kematian – Bagian 2 (2011).',
  'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDZKvCEDMf1S8oxbS5b-d2HQcfjoocG-rkeJguLUWDbw&s=10',
  'duration':'240'
  },

  {
  'title': 'The Lord Of The Rings',
  'description': 
  'Harry Potter adalah serial film Inggris Amerika berdasarkan novel-novel Harry Potter karya penulis J. K. Rowling. Seri ini didistribusikan oleh Warner Bros. dan terdiri dari delapan film fantasi, dimulai dengan Harry Potter dan Batu Bertuah (2001) dan diakhiri dengan Harry Potter dan Relikui Kematian – Bagian 2 (2011).',
  'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUmbJ7xU_RGhg8gGADptc2qeK_1jfLCQURvmYbyjGw8w&s=10',
  'duration':'240'
  },

  {
  'title': 'The Lord Of The Rings',
  'description': 
  'Harry Potter adalah serial film Inggris Amerika berdasarkan novel-novel Harry Potter karya penulis J. K. Rowling. Seri ini didistribusikan oleh Warner Bros. dan terdiri dari delapan film fantasi, dimulai dengan Harry Potter dan Batu Bertuah (2001) dan diakhiri dengan Harry Potter dan Relikui Kematian – Bagian 2 (2011).',
  'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUmbJ7xU_RGhg8gGADptc2qeK_1jfLCQURvmYbyjGw8w&s=10',
  'duration':'240'
 },

 {
  'title': 'The Lord Of The Rings',
  'description': 
  'Harry Potter adalah serial film Inggris Amerika berdasarkan novel-novel Harry Potter karya penulis J. K. Rowling. Seri ini didistribusikan oleh Warner Bros. dan terdiri dari delapan film fantasi, dimulai dengan Harry Potter dan Batu Bertuah (2001) dan diakhiri dengan Harry Potter dan Relikui Kematian – Bagian 2 (2011).',
  'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUmbJ7xU_RGhg8gGADptc2qeK_1jfLCQURvmYbyjGw8w&s=10',
  'duration':'240'
  },   

  {
  'title': 'The Lord Of The Rings',
  'description': 
  'Harry Potter adalah serial film Inggris Amerika berdasarkan novel-novel Harry Potter karya penulis J. K. Rowling. Seri ini didistribusikan oleh Warner Bros. dan terdiri dari delapan film fantasi, dimulai dengan Harry Potter dan Batu Bertuah (2001) dan diakhiri dengan Harry Potter dan Relikui Kematian – Bagian 2 (2011).',
  'cover': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUmbJ7xU_RGhg8gGADptc2qeK_1jfLCQURvmYbyjGw8w&s=10',
  'duration':'240'
  },
  
];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: gallery.length,
                itemBuilder: (context, index) {
                  final data = gallery[index];
                  return Container(
                    width: double.infinity,
                    height: 300,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(data['cover']),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 8,
                          child: Container(
                            child: Text(
                              data['title'],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          left: 8,
                          right: 8,
                          child: Container(
                            color: Colors.black54,
                            padding: EdgeInsets.all(8),
                            child: Text(
                              data['description'],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            color: Colors.black54,
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 4),
                            child: Text(
                              "${data['duration']} min",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: gallery.length,
                itemBuilder: (context, index) {
                  final data = gallery[index];
                  return Container(
                    width: 100,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(data['cover']),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        color: Colors.black54,
                        padding: EdgeInsets.all(4),
                        child: Text(
                          data['title'].toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}