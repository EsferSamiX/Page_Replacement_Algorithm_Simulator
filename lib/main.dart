import 'package:dcdg/dcdg.dart';
import 'package:flutter/material.dart';
import 'dart:io';
//import 'package:file_picker/file_picker.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super. key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /* List<String> importedTxtFiles = [];
  bool fileImported = false;

  Future<void> importTxtFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['txt'],
    );

    if (result != null) {
      setState(() {
        importedTxtFiles.add(result.files.single.name);
        fileImported = true;
      });
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Choose an Algorithm:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            const SizedBox(height: 250),
            //if (fileImported)
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: EdgeInsets.only(top:5,bottom: 5,right: 10,left: 10)
                  ),

                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> FIFOScreen()));
                  },
                  child: Text('   FIFO   ', style: TextStyle(
                      fontSize: 24
                  ),
                  ),

                ),

                const SizedBox(height: 15,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,

                        padding: EdgeInsets.only(top:5,bottom: 5,right: 10,left: 10)

                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> OptimalScreen()));
                    },
                    child: Text('Optimal', style: TextStyle(
                        fontSize: 24
                    ),)
                ),
                const SizedBox(height: 15,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,

                        padding: EdgeInsets.only(top:5,bottom: 5,right: 10,left: 10)

                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> LRUScreen()));
                    },
                    child: Text('   LRU   ', style: TextStyle(
                        fontSize: 24
                    ),)
                ),
              ],
            ),
            const SizedBox(height: 15,),
            //  FileButton(
            // label: fileImported ? 'File Import Again' : 'File Import',
            // color: Colors.pinkAccent,

            //   onPressed: () {
            // importTxtFile();
            // },

            // ),

          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Virtual Memory Simulator", style: TextStyle(
                fontSize: 24,
                color: Colors.black,

              ),),
              decoration: BoxDecoration(
                color: Colors.green,

              ),
            ),
            ListTile(
              leading: Icon(Icons.adb_outlined),
              title: const Text(' About Project '),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> AboutScreen()));
              },
            ),
          ],
          //padding:  EdgeInsets.all(0),
          //DrawerHeader



        ),
      ),
    );


  }
}
//
class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key});

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Our Project'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'This is our Operating system course project. Here we are\n trying to '
                  'build a android app which can simulate three reknowned page replacement\n'
                  'algorithms like FIFO,Optimal and LRU.\n'

                  'Contributors:\n',

              style: TextStyle(
                fontSize: 24,
              ),
            ),

            Text(
                'Md Esfer Abdus Sami\n'
                 'Md Younus Nobi Shohan\n'
                'Sanowar Jahan Tasnim',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )

          ],),
      ),
    );
  }
}

//
class AlgorithmButton extends StatelessWidget {
  final String label;
  final Color color;
  final void Function() onPressed;

  AlgorithmButton({
    required this.label,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}

class FIFOScreen extends StatefulWidget {
  const FIFOScreen({ Key? key}) :super(key:key);

  @override
  _FIFOScreenState createState() => _FIFOScreenState();
}

class _FIFOScreenState extends State<FIFOScreen> {

  final _n=  TextEditingController();
  final _m=  TextEditingController();
  final _input=  TextEditingController();
//void dispose(){
  // _n.dispose();
//  super.dispose();
//}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First In First Out Algorithm'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField (
              controller: _n,
              decoration: InputDecoration(
                  labelText: 'Enter number of page',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )

              ),

            ),
            TextField(
              controller: _m,
              decoration: InputDecoration(
                  labelText: 'Enter number of frame',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )
              ),
            ),

            TextField(
              controller: _input,
              decoration: InputDecoration(
                  labelText: 'Enter the page reference string:',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )
              ),
            ),
            const SizedBox(height: 15,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> FIFO_simulate(n:_n.text,m: _m.text,input:_input.text,)));


              },

              child: Text(
                'Simulate FIFO',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptimalScreen extends StatefulWidget {
  const OptimalScreen({Key? key});

  @override
  _OptimalScreenState createState() => _OptimalScreenState();
}

class _OptimalScreenState extends State<OptimalScreen> {

  final _n= TextEditingController();
  final _m= TextEditingController();
  final _input= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Optimal Algorithm'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField (
              controller: _n,
              decoration: InputDecoration(
                  labelText: 'Enter number of page',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )

              ),

            ),
            TextField(
              controller: _m,
              decoration: InputDecoration(
                  labelText: 'Enter number of frame',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )
              ),
            ),

            TextField(
              controller: _input,
              decoration: InputDecoration(
                  labelText: 'Enter the page reference string:',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )
              ),
            ),
            const SizedBox(height: 15,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Optimal_simulate(n:_n.text,m: _m.text,input:_input.text,)));


              },

              child: Text(
                'Simulate Optimal',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





class LRUScreen extends StatefulWidget {
  const LRUScreen({Key? key});

  @override
  _LRUScreenState createState() => _LRUScreenState();
}

class _LRUScreenState extends State<LRUScreen> {

  final _n= TextEditingController();
  final _m= TextEditingController();
  final _input= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Least Recently Used Algorithm'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField (
              controller: _n,
              decoration: InputDecoration(
                  labelText: 'Enter number of page',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )

              ),

            ),
            TextField(
              controller: _m,
              decoration: InputDecoration(
                  labelText: 'Enter number of frame',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )
              ),
            ),

            TextField(
              controller: _input,
              decoration: InputDecoration(
                  labelText: 'Enter the page reference string:',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  )
              ),
            ),
            const SizedBox(height: 15,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=> LRU_simulate(n:_n.text,m: _m.text,input:_input.text,)));


              },

              child: Text(
                'Simulate LRU',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class FIFO_simulate extends StatefulWidget {
  FIFO_simulate({Key? key, required this.n, required this.m, required this.input})
      : super(key: key);

  final String n, m, input;
  List<int> pageReferences = [];
  int pageHit = 0;
  int pageFault = 0;
  double hitRatio = 0.0;
  double missRatio = 0.0;
  List<int> frames = [];

  @override
  _FIFO_simulateState createState() => _FIFO_simulateState();
}

class _FIFO_simulateState extends State<FIFO_simulate> {
  @override
  void initState() {
    super.initState();


    try {
      int totalPageNumber = int.parse(widget.n);
      int numberOfFrames = int.parse(widget.m);
      widget.pageReferences = widget.input.split(' ').map(int.parse).toList();

      for (int pageReference in widget.pageReferences) {
        if (widget.frames.length < numberOfFrames) {
          if (!widget.frames.contains(pageReference)) {
            widget.frames.add(pageReference);
            widget.pageFault++;
          }
        } else {
          if (!widget.frames.contains(pageReference)) {
            int replacedPage = widget.frames.removeAt(0);
            widget.frames.add(pageReference);
            widget.pageFault++;
          }
        }
      }

      widget.pageHit = widget.pageReferences.length - widget.pageFault;
      widget.hitRatio = widget.pageHit / widget.pageReferences.length;
      widget.missRatio = widget.pageFault / widget.pageReferences.length;
    } catch (e) {
      // Handle exceptions, e.g., invalid input format
      print('Error: $e');
    }

    setState(() {}); // Update the state to display the simulation results.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Simulation Result of FIFO'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Center(
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>
                [
                  Container(
                    margin: EdgeInsets.all(50),
                    child: Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      defaultColumnWidth: FixedColumnWidth(160.0),
                      border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2,
                          borderRadius: BorderRadius.circular(20.0)),
                      children: [
                        TableRow(children: [
                          Column(children: [
                            Text('\n  Total page \n'
                    '  number\n', style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [Text('${widget.n}', style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold))
                          ]),

                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('\n  Number of \n'
                                '  page Hit\n', style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.green,
                                fontWeight: FontWeight.bold))
                          ]),
                          Column(
                              children: [Text('${widget.pageHit}', style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold))
                              ]),

                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('\n  Number of \n'
                                '  page Fault\n', style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [
                            Text('${widget.pageFault}', style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold))
                          ]),

                        ]),
                        TableRow(children: [
                          Column(children: [Text('\nHit Ratio \n', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [Text('${widget.hitRatio.toStringAsFixed(
                              2)}', style: TextStyle(fontSize: 20.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold))
                          ]),

                        ]),
                        TableRow(children: [
                          Column(children: [Text('\n  Miss Ratio\n', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [Text('${widget.missRatio
                              .toStringAsFixed(2)}', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold))
                          ]),

                        ]),
                      ],
                    ),
                  ),
                ])
        ));
  }

}


class Optimal_simulate extends StatefulWidget {
  Optimal_simulate({Key? key, required this.n, required this.m, required this.input})
      : super(key: key);

  final String n, m, input;
  List<int> pageReferences = [];
  int pageHit = 0;
  int pageFault = 0;
  double hitRatio = 0.0;
  double missRatio = 0.0;
  List<int> frames = [];

  @override
  _Optimal_simulateState createState() => _Optimal_simulateState();
}

class _Optimal_simulateState extends State<Optimal_simulate> {
  @override
  void initState() {
    super.initState();

    try {
      int totalPageNumber = int.parse(widget.n);
      int numberOfFrames = int.parse(widget.m);
      widget.pageReferences = widget.input.split(' ').map(int.parse).toList();

      List<int> getPageReferencesRemaining(List<int> pageReferences, List<int> frames, int currentIndex) {
        List<int> remainingReferences = List.from(pageReferences.sublist(currentIndex + 1));
        remainingReferences.retainWhere((reference) => frames.contains(reference));
        return remainingReferences;
      }

      for (int i = 0; i < widget.pageReferences.length; i++) {
        int pageReference = widget.pageReferences[i];

        if (widget.frames.length < numberOfFrames) {
          if (!widget.frames.contains(pageReference)) {
            widget.frames.add(pageReference);
            widget.pageFault++;
          }
        } else {
          if (!widget.frames.contains(pageReference)) {
            int indexToReplace = -1;
            int farthestReferenceIndex = -1;
            List<int> remainingReferences = getPageReferencesRemaining(widget.pageReferences, widget.frames, i);

            for (int frameIndex = 0; frameIndex < widget.frames.length; frameIndex++) {
              int frame = widget.frames[frameIndex];
              if (!remainingReferences.contains(frame)) {
                indexToReplace = frameIndex;
                break;
              } else {
                int lastIndex = remainingReferences.indexOf(frame);
                if (lastIndex > farthestReferenceIndex) {
                  farthestReferenceIndex = lastIndex;
                  indexToReplace = frameIndex;
                }
              }
            }

            int replacedPage = widget.frames[indexToReplace];
            widget.frames[indexToReplace] = pageReference;
            widget.pageFault++;
          }
        }
      }

      widget.pageHit = widget.pageReferences.length - widget.pageFault;
      widget.hitRatio = widget.pageHit / widget.pageReferences.length;
      widget.missRatio = widget.pageFault / widget.pageReferences.length;
    } catch (e) {
      print('Error: $e');
    }

    setState(() {});
  }

  int findFarthestReferenceIndex(List<int> references, List<int> frames) {
    int farthest = -1;
    int index = 0;
    for (int i = 0; i < frames.length; i++) {
      int frame = frames[i];
      int futureIndex = references.indexOf(frame, index);
      if (futureIndex == -1) {
        return i;
      }
      if (futureIndex > farthest) {
        farthest = futureIndex;
        index = farthest;
      }
    }
    return farthest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Simulation Result of Optimal'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>
                [
                  Container(
                    margin: EdgeInsets.all(50),
                    child: Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      defaultColumnWidth: FixedColumnWidth(160.0),
                      border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2,
                          borderRadius: BorderRadius.circular(20.0)),
                      children: [
                        TableRow(children: [
                          Column(children: [
                            Text('\n  Total page \n'
                                '  number\n', style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [Text('${widget.n}', style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold))
                          ]),

                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('\n  Number of \n'
                                '  page Hit\n', style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.green,
                                fontWeight: FontWeight.bold))
                          ]),
                          Column(
                              children: [Text('${widget.pageHit}', style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold))
                              ]),

                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('\n  Number of \n'
                                '  page Fault\n', style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [
                            Text('${widget.pageFault}', style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold))
                          ]),

                        ]),
                        TableRow(children: [
                          Column(children: [Text('\nHit Ratio \n', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [Text('${widget.hitRatio.toStringAsFixed(
                              2)}', style: TextStyle(fontSize: 20.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold))
                          ]),

                        ]),
                        TableRow(children: [
                          Column(children: [Text('\n  Miss Ratio\n', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [Text('${widget.missRatio
                              .toStringAsFixed(2)}', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold))
                          ]),

                        ]),
                      ],
                    ),
                  ),
                ])
        ));
  }

}



class LRU_simulate extends StatefulWidget {
  LRU_simulate({Key? key, required this.n, required this.m, required this.input})
      : super(key: key);

  final String n, m, input;
  List<int> pageReferences = [];
  int pageHit = 0;
  int pageFault = 0;
  double hitRatio = 0.0;
  double missRatio = 0.0;
  List<int> frames = [];

  @override
  _LRU_simulateState createState() => _LRU_simulateState();
}

class _LRU_simulateState extends State<LRU_simulate> {
  @override
  void initState() {
    super.initState();

    try {
      int totalPageNumber = int.parse(widget.n);
      int numberOfFrames = int.parse(widget.m);
      widget.pageReferences = widget.input.split(' ').map(int.parse).toList();

      for (int i = 0; i < widget.pageReferences.length; i++) {
        int pageReference = widget.pageReferences[i];

        if (widget.frames.length < numberOfFrames) {
          if (!widget.frames.contains(pageReference)) {
            widget.frames.add(pageReference);
            widget.pageFault++;
          }
        } else {
          if (!widget.frames.contains(pageReference)) {
            int indexToReplace = 0;
            int leastRecentlyUsedIndex = widget.pageReferences
                .length; // Initialize to a large value

            for (int frameIndex = 0; frameIndex <
                widget.frames.length; frameIndex++) {
              int frame = widget.frames[frameIndex];
              int lastUsedIndex = widget.pageReferences.lastIndexOf(frame, i);

              if (lastUsedIndex < leastRecentlyUsedIndex) {
                leastRecentlyUsedIndex = lastUsedIndex;
                indexToReplace = frameIndex;
              }
            }

            int replacedPage = widget.frames[indexToReplace];
            widget.frames[indexToReplace] = pageReference;
            widget.pageFault++;
          } else {
            // If the page is already in the frames, update its usage index
            int indexInFrames = widget.frames.indexOf(pageReference);
            if (indexInFrames >= 0) {
              widget.frames.removeAt(indexInFrames);
              widget.frames.add(pageReference);
            }
          }
        }
      }

      widget.pageHit = widget.pageReferences.length - widget.pageFault;
      widget.hitRatio = widget.pageHit / widget.pageReferences.length;
      widget.missRatio = widget.pageFault / widget.pageReferences.length;
    } catch (e) {
      print('Error: $e');
    }

    setState(() {});
  }

  int findLeastRecentlyUsedIndex(List<int> frames) {
    int index = 0;
    int leastRecentlyUsed = frames[index];
    for (int i = 0; i < frames.length; i++) {
      if (frames[i] < leastRecentlyUsed) {
        leastRecentlyUsed = frames[i];
        index = i;
      }
    }
    return index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Simulation Result of LRU'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>
                [
                  Container(
                    margin: EdgeInsets.all(50),
                    child: Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      defaultColumnWidth: FixedColumnWidth(160.0),
                      border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2,
                          borderRadius: BorderRadius.circular(20.0)),
                      children: [
                        TableRow(children: [
                          Column(children: [
                            Text('\n  Total page \n'
                                '  number\n', style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [Text('${widget.n}', style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold))
                          ]),

                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('\n  Number of \n'
                                '  page Hit\n', style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.green,
                                fontWeight: FontWeight.bold))
                          ]),
                          Column(
                              children: [Text('${widget.pageHit}', style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold))
                              ]),

                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('\n  Number of \n'
                                '  page Fault\n', style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [
                            Text('${widget.pageFault}', style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold))
                          ]),

                        ]),
                        TableRow(children: [
                          Column(children: [Text('\nHit Ratio \n', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [Text('${widget.hitRatio.toStringAsFixed(
                              2)}', style: TextStyle(fontSize: 20.0,
                              color: Colors.green,
                              fontWeight: FontWeight.bold))
                          ]),

                        ]),
                        TableRow(children: [
                          Column(children: [Text('\n  Miss Ratio\n', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold))
                          ]),
                          Column(children: [Text('${widget.missRatio
                              .toStringAsFixed(2)}', style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold))
                          ]),

                        ]),
                      ],
                    ),
                  ),
                ])
        ));
  }
}