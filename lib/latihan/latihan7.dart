import 'package:flutter/material.dart';
 final List<Map<String, dynamic>> pemain = [
    {'nama': 'Ambatukamm',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQSQLMaWiqLAwP3nc92koEwZi6pUwL7vTe8EtgFZZYWg&s=10'},
    {'nama': 'Musiala',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDu_W_szNxWrwEzUUIMuHW6GW061bbK9G7DO6yAS0U-Q&s=10'},
    {'nama': 'Messi',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtol8qB1g677cZ6RsN-D2gXRAzKVLSUqPMYjWtOE1uPw&s=10'},
    {'nama': 'Lamine Yamal', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-XqhUotUlnHnV-8J3D6UpFBYZrfXaQbohbiFesukbCw&s=10'},
    {'nama': 'Rapinha',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0KbkEa0a0_w8DZUtcWcBeKlVFUQ5p_4v_NQgvbZbc7WM3xbEEm7aKh48&s=10'},
    {'nama': '',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS5l7VSanv5tHK-s-JuqBGOz0OaR6BUorcLeejbBNJWQ&s'},
    {'nama': '',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS5l7VSanv5tHK-s-JuqBGOz0OaR6BUorcLeejbBNJWQ&s'},
    {'nama': '',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS5l7VSanv5tHK-s-JuqBGOz0OaR6BUorcLeejbBNJWQ&s'},
    
  
   ];
class Latihan7 extends StatelessWidget {
  const Latihan7({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: pemain.length ,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.8,
        ),
        itemBuilder: (context, index) {
          final data = pemain[index];
          return Container(
            width: 200,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(width: 1)
            ),
            child: Stack(
              children: [
                Positioned(child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(data['image']),
                    fit: BoxFit.cover
                    )
                  )
                )),
                Positioned(
                  top: 100,
                  left: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.5)
                    ),
                    child: Text(data['nama'],
                    style: TextStyle(
                      color: Colors.white
                    ),
                    )
                    )
                    )
              ],
            ),
          );
        },
    ) ;
  }
}