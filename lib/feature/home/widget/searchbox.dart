import 'package:flutter/material.dart';

class SearchBoxs extends StatelessWidget {
  const SearchBoxs({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    TextEditingController controller=TextEditingController();
    return   SearchAnchor(builder: (context,controller ){
      return SizedBox(
        width: mediaQueryData.size.width*0.9,
        height: mediaQueryData.size.height*0.07,
        child: const SearchBar(
          hintText: "Search your dream car...",
          leading: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Icon(Icons.search, color: Colors.black,),
          ),
          trailing: [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.tune_outlined,color: Colors.black,),
            )
          ],
        ),
      );
    }, suggestionsBuilder: (context, controller)=>{

    });
  }
}
