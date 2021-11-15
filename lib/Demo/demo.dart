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
        body: DefaultTextStyle(
          style: Theme.of(context).textTheme.headline2!,
          textAlign: TextAlign.center,
          child: FutureBuilder<List<Product>>(
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          //itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            Product product=snapshot.data![index];
                            return new ListTile(
                              title: Text(product.name.toString()),
                            );
                          });
                    }
                    if (snapshot.hasError) {
                      return const Text("error");
                    }
                    return Text("no data");
                  },
                  future: productRepositoryImplement.getALLProduct(),
                ),)
        );
  }
}
