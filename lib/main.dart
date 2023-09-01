import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi Perfil'),
        ),
        body: ProfileBody(),
      ),
    );
  }
}


class ProfileBody extends StatefulWidget {
  @override
  /*
  _ProfileBodyState createState(){
    return _ProfileBodyState();
  }
*/
  _ProfileBodyState createState () => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {

String nombre = '';
bool esvisible = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('images/diego.jpg'),
          ),
          SizedBox(height: 16.0),
          Text(nombre),
          esvisible ? TextField(
            obscureText: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Nombre'),
                onSubmitted: (value) {
                  setState(() {
                    esvisible=false;
                    nombre=value;
                  });
                },
          ) : Container(),
          Text(
            'Desarrollador de Software',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          SizedBox(height: 16.0),
          Text(
            'Soy un apasionado desarrollador de software con experiencia en...',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.0),
          Wrap(
            spacing: 8.0,
            children: [
              Chip(label: Text('Flutter')),
              Chip(label: Text('Java')),
              Chip(label: Text('Ciberseguridad')),
             
            ],
          ),
          SizedBox(height: 24.0),
         
          ListTile(
            title: Text('Experiencia Laboral'),
            subtitle: Text('Estudiante de Ingenieria de sistemas'),
          ),
          
          ListTile(
            title: Text('Educación'),
            subtitle:
                Text('Universidad Jorge Tadeo Lozano - Ingeniería de sistemas'),
          ),
          SizedBox(height: 26.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.mail),
                onPressed: () {
                  // e+
                },
              ),
              IconButton(
                icon: Icon(Icons.link),
                onPressed: () {
                  // e+
                },
              ),
              // +
            ],
          ),
        ],
      ),
    );
  }
}
