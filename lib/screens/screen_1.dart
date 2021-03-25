import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {

  Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  var text1 = 'Lorem ipsum dolor sit amet, cinsectetur adispiscing elit. Duis convallis justo non nisi placerat maximus';
  var text2 = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis, elit a bibendum sagittis, risus justo suscipit justo, non posuere dolor leo vitae diam. Phasellus et nisi sit amet erat aliquet congue sed vel dui. In tincidunt maximus eros, vitae euismod leo facilisis id. Mauris tempus eget ex non feugiat. Morbi ac consequat enim, vel commodo massa. Quisque et dapibus metus. Praesent ultrices eu massa ac sagittis. Nullam placerat leo tempus dui lacinia, id aliquam magna feugiat. Aenean vel venenatis purus. Integer cursus vel dolor vel dapibus. Nulla facilisi. Suspendisse non justo in diam ullamcorper vulputate. Proin condimentum sapien at diam rhoncus, non accumsan turpis aliquet. Sed vel aliquam lorem, in faucibus felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus nec lectus ut arcu vulputate ultricies.\n\nPraesent nibh augue, fermentum vel dictum a, feugiat in leo. Donec scelerisque placerat felis vel interdum. Etiam interdum mauris id euismod maximus. Mauris ultricies, elit eget consequat efficitur, orci purus tincidunt nibh, eu blandit augue tellus et dui. Vestibulum non sem pharetra sem gravida feugiat ac sed arcu. Vestibulum ut dignissim massa. Nulla pellentesque nibh a varius rhoncus. Nunc egestas facilisis elit, vitae malesuada arcu mattis ut. Suspendisse odio ligula, aliquam at felis sit amet, consequat viverra quam.\n\nSed laoreet odio vulputate libero aliquet, a elementum diam rhoncus. Sed non consectetur enim. Pellentesque posuere, lorem dictum pharetra mollis, orci est scelerisque neque, quis pharetra augue ante vitae lorem. Donec velit dui, sagittis vel faucibus in, mollis a metus. Nullam sed mauris vitae lorem pharetra porttitor sed id orci. Etiam sollicitudin iaculis massa non rutrum. Aenean congue et elit in tempor. Aenean ut egestas sapien. Pellentesque nibh ex, congue vel quam nec, aliquam efficitur diam.\n\nDonec lacus nibh, porta a orci a, semper accumsan justo. Nunc metus tellus, pellentesque luctus velit vel, tempus cursus lectus. Fusce fringilla sem hendrerit, volutpat diam vitae, lacinia lectus. Sed placerat felis a nibh iaculis pellentesque. Mauris turpis ligula, ultricies id metus sed, luctus elementum enim. Mauris sapien quam, ullamcorper ut dignissim in, malesuada quis nisi. Vestibulum vel vestibulum augue, eu varius velit.\n\nSuspendisse sed euismod ante, eu cursus ligula. Quisque eu dapibus mauris. Suspendisse gravida eleifend velit, in eleifend libero egestas eget. Morbi justo enim, laoreet et rutrum et, volutpat non purus. Fusce vestibulum turpis at ligula mattis, eu consequat neque malesuada. Phasellus consequat arcu id porttitor rutrum. Quisque sodales diam metus, ut sollicitudin felis viverra ac. Aenean vitae turpis sagittis, aliquet erat in, maximus nibh. Mauris faucibus mi purus, at scelerisque nibh vestibulum vel. Praesent posuere nulla vel elit tincidunt varius. Sed pretium libero a facilisis blandit. Vivamus felis elit, pellentesque quis massa in, egestas varius neque. Quisque non nunc sit amet nibh feugiat dignissim nec in diam.';

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xffa6a6a6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    color: Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(Icons.clear, color: Colors.white,),
                            onPressed: null),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Title', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                          ),),
                        ),
                        IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: (){
                              Navigator.pop(context);
                            })
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(text1, style: TextStyle(
                          color: Colors.black
                      ),),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Color(0xffc7c6c6),
                constraints: BoxConstraints(
                    maxHeight: 400),
                child: Scrollbar(
                    child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        text2,
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
                isAlwaysShown: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
                  color: Color(0xffffffff),
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffcf00ff),
                        shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      ),
                      child: Text('TEST BUTTON'),
                      onPressed: (){

                      },
                    ),
                  ),
                )
              ),

            ],
          ),
        )
      );
}
