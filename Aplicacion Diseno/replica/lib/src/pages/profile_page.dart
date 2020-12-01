import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          _containerHeader(),
          _photoProfile(context),

        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
      
      
    );
  }

  Widget _containerHeader() {
    return Stack(
      children: <Widget>[
        Container( 
          child: _profileTitle(),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(57, 171, 111, 1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)
            )
            //BorderRadius.all(Radius.circular(20.0))
          ),
        ),
      ],
    );
  }

  Widget _profileTitle() {
    return SafeArea(
      child: Container(
        height: 200,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(width: 10),
            Text('Your skin profile', style: TextStyle(color: Colors.white, fontSize: 23.0, fontWeight: FontWeight.bold,letterSpacing: 1.0)),
            Icon(Icons.share, size: 30.0,color: Colors.white),
            
          ],
        ),
      ),
    );
  }

  Widget _textoProfile(String textTitle, String textInfo){
    return  Column(
      children: <Widget>[
        Text(textTitle,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        SizedBox(height:8),
        Container(
          alignment: Alignment.center,
          width: 80,
          height: 40,
          child: Text(textInfo,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          decoration: BoxDecoration(
            color: Color.fromRGBO(235, 246, 238, 1),
            borderRadius: BorderRadius.circular(10)
          ),
        )
      ],
    );
  }


  Widget _photoProfile(BuildContext context){

    double width = MediaQuery.of(context).size.width - 70;
    double height = MediaQuery.of(context).size.height;

    final containProfile = Container(
        height: 170,
        width: width,
        // margin: EdgeInsets.symmetric(horizontal:40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(47, 167, 105, 0.2),//Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0,5)
            )
          ]
        ),
        child: Container(
          margin: EdgeInsets.fromLTRB(30, 60, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _textoProfile('Age','19 years'),
              _textoProfile('Skin Type','Normal')
            ]
          ) 
        )
      );

    final imageProfile = Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(57, 171, 111, 1),
          width: 6
        ),
        borderRadius: BorderRadius.circular(100),
        
      ),
      child: CircleAvatar(
          radius: 70.0,
          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXKI9RF1UHEfMoKfWDTl5LVrbNdpbAo-DAjw&usqp=CAU'),
          
      )
    );

    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Positioned(
          top: 153,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                containProfile
              ],
            ),
          )
        ),
        Positioned(
          top:90,
          child: imageProfile
        )
      ],
    );
  }

  Widget _bottomNavigationBar(BuildContext context){

    return Container(
      child: Theme(
        data: Theme.of(context).copyWith(
          //Color de fondo
          canvasColor: Colors.white  ,
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
          )
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
          selectedItemColor: Color.fromRGBO(45, 168, 105, 1.0),
          unselectedItemColor: Color.fromRGBO(51, 64, 109, 1.0),
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,size: 30.0),
              label: 'Hola'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_rounded,size: 30.0),
              label: 'asdf'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart ,size: 30.0),
              label: 'sdf'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle,size: 30.0),
              label: 'gdf'
            )
          ],
        ),
      ),
    );
  

  }

}