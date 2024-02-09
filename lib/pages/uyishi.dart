import 'package:flutter/material.dart';
import 'package:ngdemo4/pages/uy_page.dart';
class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}
class _TaskPageState extends State<TaskPage> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  _doSignIn(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print("Welcome to home");
    }
  }
  PageController? _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("Instagram clon",style: TextStyle(color: Colors.white,fontSize: 30),)),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Container(
            child:ListView(
              children: [
                _itemList(title: "PDP online",image: "assets/img.png"),
                _itemList(title: "PDP online",image: "assets/img.png"),
                _itemList(title: "PDP online",image: "assets/img.png"),
              ],
            ),
          ),
          ///////////////
          Column(
            children: [
              SizedBox(height: 180,),
              Container(
                child: Center(child: Text("Instagram", style: TextStyle(fontSize: 28),),),
              ),
              Container(
                child: Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Email",
                              ),
                              validator:(input) => !input!.contains("@") ? "Please enter a valid email": null,
                              onSaved: (input) => _email = input,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Password",
                              ),
                              validator:(input) => input!.length<6 ? "Must be at least 6 characters": null,
                              onSaved: (input) => _password = input,
                              obscureText: true,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: 300,
                            child: MaterialButton(
                              onPressed: (){
                                _doSignIn();
                              },
                              textColor: Colors.white,
                              color: Colors.blue,
                              child: Text("Log In"),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 100,),
                              Center(
                                child: Container(
                                  child: Center(child: Text("Don't have an account?  ", style: TextStyle(fontSize: 12),),),
                                ),
                              ),
                              Center(
                                child: Container(
                                  child: MaterialButton(onPressed: () { Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>UyishiPage ())); },
                                  child: Center(child: Text("Log In  ", style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold,),),)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                ),
              ),
            ],
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text(
                "Page three",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", ),
          BottomNavigationBarItem(icon: Icon(Icons.attach_email), label: "email",),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined), label: "Video"),
        ],
        currentIndex: _selectedIndex,
        //iconlar yurganda rangini o'zgartiradi shu rangga
        selectedItemColor: Colors.deepPurple,
        // umumiy iconlar turgan joy rangi
        backgroundColor: Colors.blue,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _pageController!.animateToPage(index,
                duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
  Widget _itemList({title, image}){
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 180,
            width: 360,
            decoration:BoxDecoration(
              image: DecorationImage(
                image:AssetImage("assets/img.png"),
                // konenierni to'liq qoplavaladi
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ) ,
            child: Container(
              padding: EdgeInsets.only(left: 20),
             alignment: Alignment.bottomLeft,
             child: Text("PDP Online",style: TextStyle(color: Colors.white,fontSize:24 ),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                //   orqa foni ko'rinadi
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.5),
                  ],
                ),
              ),
            ),
          ),
        ],

      ),

    );

  }
}
