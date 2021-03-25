import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../providers/horizontal_items.dart';
import '../providers/vertical_items.dart';

class Screen2 extends StatelessWidget {
  Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';

  var hor = HorizontalItemsProvider();
  var ver = VerticalItemsProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: (){
                        Navigator.pop(context);
                      }),

                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                      'Section 1 (' + hor.itemsCount.toString() + ')',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hor.itemsCount,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 5,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              width: MediaQuery.of(context).size.width - 40,
                              child: Center(
                                  child: Text(
                                    hor.itemAt(index),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                              ),
                            ),
                          );
                        }
                    ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                      'Section 2 (' + ver.itemsCount.toString() + ')',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*3/4,
                  width: MediaQuery.of(context).size.width - 40,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: hor.itemsCount,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          elevation: 5,
                          child: Container(
                            height: MediaQuery.of(context).size.height/4,
                            padding: EdgeInsets.all(20),
                            child: Center(
                                child: Text(
                                  ver.itemAt(index),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),
      ),
    );
  }

}
