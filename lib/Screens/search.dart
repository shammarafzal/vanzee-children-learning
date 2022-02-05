import 'package:flutter/material.dart';
import 'package:vanzee/Settings/SizeConfig.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final _searchProduct = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Theme(
                data: new ThemeData(
                  primaryColor: Colors.green,
                  primaryColorDark: Colors.black,
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: _searchProduct,
                  textInputAction: TextInputAction.search,
                  onSubmitted: (value) async {

                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: Color.fromRGBO(235,159,73, 1)),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(25.0),
                      ),
                    ),
                    labelText: 'Search',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.safeBlockHorizontal * 5),
                    suffixIcon: IconButton(
                      onPressed: () => _searchProduct.clear(),
                      icon: Icon(
                        Icons.search,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Expanded(
            //   child: ListView(
            //     children: [
            //       Container(
            //         child: Card(
            //           elevation: 0,
            //           child: FutureBuilder<GetProducts>(
            //             future: Utils().fetchProductsBySearch(_searchProduct.text),
            //             builder: (context, snapshot) {
            //               if (snapshot.hasData) {
            //                 return ListView.builder(
            //                   itemCount: snapshot.data?.data?.length,
            //                   shrinkWrap: true,
            //                   itemBuilder: (BuildContext context, index) {
            //                     return Product(
            //                       productId:  snapshot.data?.data?[index].id ?? 1,
            //                       productName: snapshot.data?.data?[index].modelName ?? "",
            //                       description: snapshot.data?.data?[index].description ?? "",
            //                       price:  snapshot.data?.data?[index].salePrice ?? "",
            //                       image_location: image_base_url+'${snapshot.data?.data?[index].productGalleries[0].productImage}',
            //                       productBrand: snapshot.data?.data?[index].company.companyName ?? "",
            //                     );
            //                   },
            //                 );
            //               }
            //               return Center(
            //                 // child: CircularProgressIndicator(
            //                 //   valueColor: new AlwaysStoppedAnimation(Colors.red),
            //                 // ),
            //               );
            //             },
            //           ),
            //         ),
            //       )
            //     ],
            //   ),)
          ],
        ),),
    );
  }
}
