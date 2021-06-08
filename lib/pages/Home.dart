import 'package:ecommerce_app/pages/cartpage.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:scoped_model/scoped_model.dart';
import '../widgets/cartModel.dart';
import '../pages/userProfile.dart';
import '../pages/Login.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<Product> _products = [
    Product(
        id: 1,
        title: "Huawei",
        price: 20.0,
        imgUrl:
            "data:image/jpeg;base64,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",
        qty: 1),
    Product(
        id: 2,
        title: "Apple",
        price: 40.0,
        imgUrl:
            "data:image/png;base64,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",
        qty: 1),
    Product(
        id: 3,
        title: "Android",
        price: 20.0,
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGK-WcUuU8p3Tr8TmevhFbhBKD3uX6NpGj_w&usqp=CAU",
        qty: 1),
    Product(
        id: 4,
        title: "Windows",
        price: 40.0,
        imgUrl:
            "https://qph.fs.quoracdn.net/main-qimg-4853ed168f953c6da45b80d26c25e811",
        qty: 1),
    Product(
        id: 5,
        title: "Linux",
        price: 25.0,
        imgUrl:
            "data:image/png;base64,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",
        qty: 1),
    Product(
        id: 6,
        title: "oppo",
        price: 25.0,
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaB0nPiRs95PDu0rt5qilJPkVh5SPSfUgZWQ&usqp=CAU",
        qty: 1),
    Product(
        id: 7,
        title: "iPhone",
        price: 25.0,
        imgUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKLxagptgOM3uATC25Jd2TASdyZ_pucOIhS0cTa2Bvmt93q7lAvB8Fn2PkL8yGqoXpOJg&usqp=CAU",
        qty: 1),
    Product(
        id: 8,
        title: "Samsung",
        price: 25.0,
        imgUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Samsung_Logo.svg/2560px-Samsung_Logo.svg.png",
        qty: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Home"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartPage())))
        ],
      ),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[800],
              ),
              child: Column(children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/userProfilePic.png'),
                ),
                Text(
                  "Waqar Zaqa Crypto ",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blueGrey[600],
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Source Sans Pro"),
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));

                // Then close the drawer
                //   Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('User Profile'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserProfileView()));

                // Then close the drawer
                //     Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('History'),
              onTap: () {
                // Update the state of the app
                // ...
                Navigator.pop(context);
                // Then close the drawer
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
            ),
            ListTile(
              title: Text('Setting'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Sign Out'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.8),
        itemBuilder: (context, index) {
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            return Card(
                color: Colors.blue[100],
                child: Column(children: <Widget>[
                  Image.network(
                    _products[index].imgUrl,
                    height: 120,
                    width: 120,
                  ),
                  Text(
                    _products[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.blue,
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '5.0',
                        ),
                        Icon(Icons.star, color: Colors.orange),
                        Text("(25 Review)"),
                      ],
                    ),
                  ),
                  Text("\$" + _products[index].price.toString()),
                  MaterialButton(
                      color: Colors.white70,
                      child: Text(
                        "Add",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pacifico",
                        ),
                      ),
                      onPressed: () => model.addProduct(_products[index]))
                ]));
          });
        },
      ),

      // ListView.builder(
      //   itemExtent: 80,
      //   itemCount: _products.length,
      //   itemBuilder: (context, index) {
      //     return ScopedModelDescendant<CartModel>(
      //         builder: (context, child, model) {
      //       return ListTile(
      //           leading: Image.network(_products[index].imgUrl),
      //           title: Text(_products[index].title),
      //           subtitle: Text("\$"+_products[index].price.toString()),
      //           trailing: OutlineButton(
      //               child: Text("Add"),
      //               onPressed: () => model.addProduct(_products[index])));
      //     });
      //   },
      // ),
    );
  }
}
