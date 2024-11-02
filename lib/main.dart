import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

@override
  Widget build (BuildContext context){
    return MaterialApp(
      home: const contador(),
    );
  }
}

class contador extends StatelessWidget{
  const contador({super.key});


@override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
       title :Text('Menu Example'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
                ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: (){
                Navigator.pop(context);
                print('You selected: Settings');

              },
            )
          ],
        )
        ),
      
      
      body: const Center(
        child: Text('Vamos Contar?'),
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        ),
     );
  }
}


