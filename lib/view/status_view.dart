import 'package:chat_ui/model/status_model/StatusHelper.dart';
import 'package:chat_ui/model/status_model/StatusItemModel.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: StatusHelper.itemCount,
        itemBuilder: (context, position){
          StatusItemModel statusItemModel = StatusHelper.getStatusItemModel(position);
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5, left: 20),
            child: Text("Recent Update", style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 15),),
          ),
          Divider(),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(statusItemModel.image),
              ),
            ),
            title: Text(
              statusItemModel.name,
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(statusItemModel.name +" "+ statusItemModel.dateTime, style: Theme.of(context).textTheme.bodyText1,),
          ),
        ],
      );
    });
  }
}
