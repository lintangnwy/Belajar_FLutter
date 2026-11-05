import 'package:flutter/material.dart';
 final List<Map<String, dynamic>> pemain = [
    {'nama': 'Skibidi Toilet',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo7yh3kgYoENU35vH2dJeU5kb2dfq--ER_GN6wzF1vrQ&s=10'},
    {'nama': 'Musiala',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDu_W_szNxWrwEzUUIMuHW6GW061bbK9G7DO6yAS0U-Q&s=10'},
    {'nama': 'Harry Kane',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS5l7VSanv5tHK-s-JuqBGOz0OaR6BUorcLeejbBNJWQ&s'},
    {'nama': 'Harry Kane',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS5l7VSanv5tHK-s-JuqBGOz0OaR6BUorcLeejbBNJWQ&s'},
    {'nama': 'Harry Kane',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS5l7VSanv5tHK-s-JuqBGOz0OaR6BUorcLeejbBNJWQ&s'},
    {'nama': 'Harry Kane',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS5l7VSanv5tHK-s-JuqBGOz0OaR6BUorcLeejbBNJWQ&s'},
    {'nama': 'Harry Kane',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS5l7VSanv5tHK-s-JuqBGOz0OaR6BUorcLeejbBNJWQ&s'},
    {'nama': 'Harry Kane',  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS5l7VSanv5tHK-s-JuqBGOz0OaR6BUorcLeejbBNJWQ&s'},
    
  
   ];
class Latihan5 extends StatelessWidget {
  const Latihan5({super.key});

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
                  bottom: 5,
                  child: Text(data['nama']))
              ],
            ),
          );
        },
    ) ;
  }
}