import 'package:flutter/material.dart';
import 'package:p1flutter/button.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String _id;
    String title = 'title';
    double price;
    String description = 'description';
    String unit = 'gram';
    double price_per_unit;
    List ingredients = [""];
    List images = ['images/DCB.png'];
    String category;
    double rating;
    double __v;


    return MaterialApp(
      home: Scaffold(

        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),

          child: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Handle back button press here
                Navigator.pop(context);
              },
            ),

          ),
        ),

        backgroundColor: Colors.black,


        body:


        Column(

          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      Align(
                        alignment: AlignmentDirectional(0.00,-1.00),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(images[0].toString(),
                                width: 130,
                                height: 111,
                                fit: BoxFit.cover,
                              ),

                            )
                          ],

                        ),
                      ),

                      Align(
                        alignment: AlignmentDirectional(-1.00,0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
                          child: Text(
                            title.toString(),
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      Align(
                        alignment: AlignmentDirectional(-1.00,0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 20),
                          child: Text(description.toString()),

                        ),
                      ),


                      Container(

                          height: 500,

                          child: WeightForm(),

                          decoration:BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),

                          )


                      ),

                    ],
                  ),
                ),

              ),

            )

          ],
        ),
      ),
    );
  }
}

class WeightForm extends StatefulWidget {
  @override
  _WeightFormState createState() => _WeightFormState();
}

class _WeightFormState extends State<WeightForm> {
  String? selectedWeight;
  int counter = 1;
  double price = 0;
  List<String> selectedOptions = ['Tomatoes', 'Onions', 'Lettuce', 'Sauce'];
  final ScrollController _scrollController = ScrollController();


  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,

        child:SingleChildScrollView(
          controller: _scrollController,

          child: Column(


              children: [

                Text('Total Price: ' , style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),),
                Text(price.toString(), style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),

                SizedBox(height: 30,),


                Text('Pick Beef Size',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),

                Image.asset('images/scale-size.png',
                  width:40 , height: 40, fit: BoxFit.contain,
                ),




                RadioListTile(
                  title: Text('100 grams',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize:20),),
                  value: '100 grams',
                  groupValue: selectedWeight,
                  onChanged: (value) {
                    setState(() {
                      selectedWeight = value as String?;
                    });
                  },
                  activeColor: Colors.orange,
                ),
                RadioListTile(
                  title: Text('150 grams',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize:20),),
                  value: '150 grams',
                  groupValue: selectedWeight,
                  onChanged: (value) {
                    setState(() {
                      selectedWeight = value as String?;
                    });
                  },
                  activeColor: Colors.orange,
                ),
                RadioListTile(
                  title: Text('300 grams',
                    style:
                    TextStyle(fontWeight: FontWeight.w400, fontSize:20),),
                  value: '300 grams',
                  groupValue: selectedWeight,
                  onChanged: (value) {
                    setState(() {
                      selectedWeight = value as String?;
                    });
                  },

                  activeColor: Colors.orange,
                ),



                SizedBox(height: 25.0),

                Text('Quantity', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                Container(
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              if (counter > 1) {
                                counter--;
                              }
                            });
                          },
                          child: Icon(Icons.remove),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Text(
                        counter.toString(),
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(width: 16.0),
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          },
                          child: Icon(Icons.add),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25.0),


                Text('Ingredients & Extras',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),

                CheckboxListTile(
                  title: Text('Tomatoes', style: TextStyle(fontWeight: FontWeight.w500)),
                  value: selectedOptions.contains('Tomatoes'),
                  onChanged: (value){
                    setState(() {
                      if (value != null && value) {
                        selectedOptions.add('Tomatoes');
                      } else { selectedOptions.remove('Tomatoes');}
                    });
                  },
                  activeColor: Colors.orange,

                ),
                CheckboxListTile(
                  title: Text('Extra Tomatoes'),
                  value: selectedOptions.contains('Extra Tomatoes'),
                  onChanged: (value){
                    setState(() {
                      if (value != null && value) {
                        selectedOptions.add('Extra Tomatoes');
                      } else { selectedOptions.remove('Extra Tomatoes');}
                    });
                  },
                  activeColor: Colors.orange,
                  subtitle: Text('(+5 EGP)'),
                ),
                CheckboxListTile(
                  title: Text('Onions',style: TextStyle(fontWeight: FontWeight.w500)),
                  value: selectedOptions.contains('Onions'),
                  onChanged: (value){
                    setState(() {
                      if (value != null && value) {
                        selectedOptions.add('Onions');
                      } else { selectedOptions.remove('Onions');}
                    });
                  },
                  activeColor: Colors.orange,
                ),
                CheckboxListTile(
                  title: Text('Extra Onions'),
                  value: selectedOptions.contains('Extra Onions'),
                  onChanged: (value){
                    setState(() {
                      if (value != null && value) {
                        selectedOptions.add('Extra Onions');
                      } else { selectedOptions.remove('Extra Onions');}
                    });
                  },
                  activeColor: Colors.orange,
                  subtitle: Text('(+5 EGP)'),
                ),
                CheckboxListTile(
                  title: Text('Lettuce',style: TextStyle(fontWeight: FontWeight.w500)),
                  value: selectedOptions.contains('Lettuce'),
                  onChanged: (value){
                    setState(() {
                      if (value != null && value) {
                        selectedOptions.add('Lettuce');
                      } else { selectedOptions.remove('Lettuce');}
                    });
                  },
                  activeColor: Colors.orange,
                ),
                CheckboxListTile(
                  title: Text('Extra Lettuce'),
                  value: selectedOptions.contains('Extra Lettuce'),
                  onChanged: (value){
                    setState(() {
                      if (value != null && value) {
                        selectedOptions.add('Extra Lettuce');
                      } else { selectedOptions.remove('Extra Lettuce');}
                    });
                  },
                  activeColor: Colors.orange,
                  subtitle: Text('(+5 EGP)'),
                ),
                CheckboxListTile(
                  title: Text('Sauce',style: TextStyle(fontWeight: FontWeight.w500)),
                  value: selectedOptions.contains('Sauce'),
                  onChanged: (value){
                    setState(() {
                      if (value != null && value) {
                        selectedOptions.add('Sauce');
                      } else { selectedOptions.remove('Sauce');}
                    });
                  },
                  activeColor: Colors.orange,
                ),
                CheckboxListTile(
                  title: Text('Special Sauce'),
                  value: selectedOptions.contains('Special Sauce'),
                  onChanged: (value){
                    setState(() {
                      if (value != null && value) {
                        selectedOptions.add('Special Sauce');
                      } else { selectedOptions.remove('Special Sauce');}
                    });
                  },
                  activeColor: Colors.orange,
                  subtitle: Text('(+10 EGP)'),
                ),
                CheckboxListTile(
                  title: Text('Extra Cheddar Cheesse'),
                  value: selectedOptions.contains('Extra Cheddar Cheesse'),
                  onChanged: (value){
                    setState(() {
                      if (value != null && value) {
                        selectedOptions.add('Extra Cheddar Cheesse');
                      } else { selectedOptions.remove('Extra Cheddar Cheesse');}
                    });
                  },
                  activeColor: Colors.orange,
                  subtitle: Text('(+10 EGP)'),
                ),

                ElevatedButton(
                  onPressed: () {
                    // Perform action when the confirm button is pressed
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, perform submit action
                      if (selectedWeight != null) {
                        print('Form submitted. Selected weight: $selectedWeight');
                        print('Counter value: $counter');
                        print('Selected options: $selectedOptions');
                      } else {
                        print('Please select a weight option.');
                      }
                    }
                  },
                  style: buttonPrimary,
                  child: Text('Add to Cart', style: TextStyle(fontSize:24 , fontWeight: FontWeight.w600 ),),
                ),
              ]
          ),

        ),

      ),
    );
  }
}