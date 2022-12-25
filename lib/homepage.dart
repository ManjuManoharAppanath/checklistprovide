import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'checklist_provider.dart';
import 'favoritepage.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items=['sayur','pisang','Roti','ubat','paneer','masala','puri','potridge'];
    final provider=Provider.of<ChecklistProvider>(context);
    return Scaffold(appBar: AppBar(title: Text('Groceries'),
    ),
    body: ListView.builder(itemCount:items.length,itemBuilder: (BuildContext context,int i) {
      return ListTile(leading: Text(items[i]),
        //   IconButton(onPressed:(){
        //     provider.checked(items[i]);
        //   },icon:provider.isexist(items[i])?
        //       Icon(Icons.check_box,color: Colors.green,):Icon(Icons.check_box_outline_blank,),
        //   ),
        // );
        trailing: Checkbox(
            value: provider.isexist(items[i]), onChanged: (value) {
          provider.checked(items[i]);
        }
        ),
      );
    },
    ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorite()));
      }, label: Text('favorite'),
      ),
    );
  }
}
