import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:checklistprovide/checklist_provider.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<ChecklistProvider>(context);
    final fav=provider.items;
    return Scaffold(appBar: AppBar(title: Text('Groceries'),
    ),
      body: ListView.builder(itemCount:fav.length,itemBuilder: (BuildContext context,int i)
      {
        return ListTile(leading: Text(fav[i]),

            trailing:Checkbox(value: provider.isexist(fav[i]), onChanged: (value){
              provider.checked(fav[i]);
            })
          // IconButton(onPressed:(){
          //   provider.checked(items[i]);
          // },icon:provider.isexist(items[i])?
          //     Icon(Icons.check_box,color: Colors.green,):Icon(Icons.check_box_outline_blank,),
          // ),
        );
      }),

    );
  }
}
