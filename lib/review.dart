// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//               backgroundColor: Colors.black,
//               foregroundColor: Colors.white,
//               title: const Text("My First Mobile App")),
//           body: const FirstScreen()),
//     );
//   }
// }

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.black, foregroundColor: Colors.white),
//           onPressed: () => Navigator.of(context)
//               .push(MaterialPageRoute(builder: (context) => const NewScreen())),
//           child: const Text("Move to next screen",
//               style: TextStyle(color: Colors.white)),
//         ),
//       ),
//     );
//   }
// }

// class NewScreen extends StatefulWidget {
//   const NewScreen({super.key});

//   @override
//   State<NewScreen> createState() => _NewScreenState();
// }

// class _NewScreenState extends State<NewScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Fundamental Of Mobile Development"),
//         backgroundColor: Colors.black,
//         foregroundColor: Colors.white
//       ),
//       body: Container(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: Container(child: Text("User Interface Changed!"))
//           )
//         )
//       )
//     );
//   }
// }

import 'package:flutter/material.dart';

/// Flutter code sample for [ElevatedButton].

void main() => runApp(const ElevatedButtonExampleApp());

class ElevatedButtonExampleApp extends StatelessWidget {
  const ElevatedButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('ElevatedButton Sample')),
        body: const ElevatedButtonExample(),
      ),
    );
  }
}

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({super.key});

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('Disabled'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}