import 'package:chat_ui/model/call_modal/CallitemModal.dart';
import 'package:chat_ui/model/call_modal/call_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CallHelper.itemCount,
        itemBuilder: (context, index){
        CallItemModel callItemModel = CallHelper.getCallItem(index);
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(callItemModel.image),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(callItemModel.name, style: Theme.of(context).textTheme.headline6),
                            ],
                            ),
                            Padding(padding: EdgeInsets.only(top: 2),
                              child: Text(callItemModel.dateTime, style: Theme.of(context).textTheme.bodyText1),
                            ),
                          ],
                        ),
                        Icon(Icons.call, color: Colors.blue ),
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        );
    });
  }
}
