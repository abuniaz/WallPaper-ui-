import 'package:flutter/material.dart';
import 'package:wallpaper_ui/body/search.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.menu,
                        size: 25,
                      ),
                      Text('WallPapers',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      InkWell(
                        child: Icon(
                          Icons.favorite,
                          size: 25,
                        ),
                      )
                    ],
                  )),
              const SearchBar(),
              const TabBar(tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Trending',
                ),
                Tab(
                  text: 'feature',
                ),
                Tab(
                  text: 'Nature',
                ),
                Tab(
                  text: 'Sky',
                ),
                Tab(
                  text: 'See',
                )
              ]),
              Flexible(
                  child: Flexible(
                      flex: 1,
                      child: TabBarView(
                        children: [
                          Container(color: Colors.red),
                          Container(color: Colors.yellow),
                          Container(color: Colors.green),
                          Container(color: Colors.black),
                          Container(color: Colors.blue),
                          Container(color: Colors.indigo),
                        ],
                      )))
            ],
          )),
        ));
  }
}
