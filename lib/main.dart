import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Erminio say'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
with SingleTickerProviderStateMixin {

   TabController _tabController;

    @override
    void initState() { 
      super.initState();
      _tabController = new TabController(vsync: this,initialIndex: 1, length: 4);
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.home), text: "Home"),
          Tab(icon: Icon(Icons.search), text: "Search"),
          Tab(icon: Icon(Icons.list), text: "More"),
        ],
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.white,
        indicatorColor: Colors.transparent,
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child: Text("Pagina 1")),
          Center(child: Text("Pagina 2")),
          Center(child: Text("Pagina 3"))
        ],
      ),
    );
  }
}
