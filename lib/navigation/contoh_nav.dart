import 'package:flutter/material.dart';
import 'package:flutter_lintang/navigation/about_page.dart';

class ContohNav extends StatelessWidget {
  const ContohNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
           child: Column(
            children: [
                  ElevatedButton(
                onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context){
                                return AboutPage(
                                    nama: "Lintang Ganteng",
                                    kelas: "XII RPL 3",
                                    umur: 18,
                                );
                            },
                            ),
                     );
                }, 
                child: Text("Pindah Alamat Ke Halaman About"),
                 ),

                 ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/GridView');
                    },
                  child: Text("Latihan Grid"),
                  ),

                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/list_widget');
                    },
                  child: Text("Latihan List"),
                  ),

                  
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/sized_expanded_stack');
                    },
                  child: Text("Latihan Expanded"),
                  ),

                  
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/row_column');
                    },
                  child: Text("Latihan Row Column"),
                  ),


                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/container_widget');
                    },
                  child: Text("Latihan Container"),
                  ),

                  
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/latihan');
                    },
                  child: Text("Latihan 1"),
                  ),

                  
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/Latihan2fix');
                    },
                  child: Text("Latihan 2"),
                  ),

                  
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/Latihan3');
                    },
                  child: Text("Latihan 3"),
                  ),

                  
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/Latihan4');
                    },
                  child: Text("Latihan 4"),
                  ),

                  
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/Latihan5');
                    },
                  child: Text("Latihan 5"),
                  ),
                  
                  ElevatedButton(
                    onPressed: () {
                        Navigator.pushNamed(context,'/Latihan7');
                    },
                  child: Text("Latihan 7"),
                  ),


            ],
           ),
        ),
    );
  }
}