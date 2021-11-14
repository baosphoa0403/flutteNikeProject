import 'package:demo/Model/Entity/product.dart';
import 'package:demo/Model/Repositories/Implement/product_repository_implement.dart';
import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("hello");
    ProductRepositoryImplement productRepositoryImplement =
        ProductRepositoryImplement();
    return Scaffold(
        appBar: AppBar(
          title: const Text("hello world"),
          actions: [
            ElevatedButton(
              onPressed: () {
                print("hello bảo");
              },
              child: const Text(
                "Chào Bảo",
                style: TextStyle(color: Colors.amber),
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FutureBuilder<List<Product>>(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var a = snapshot.data;
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(snapshot.data![index].name.toString()),
                        );
                      });
                }
                if (snapshot.hasError) {
                  return const Text("error");
                }
                return Text("no data");
              },
              future: productRepositoryImplement.getALLProduct(),
            )
          ],
        ));
  }
}
