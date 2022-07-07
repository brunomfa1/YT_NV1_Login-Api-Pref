import 'package:flutter/material.dart';
import 'package:yt_splash_login/models/post_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;
    
    return Scaffold(
      appBar: AppBar(
        title:  Text(args.title),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(args.title, style: const TextStyle( 
              fontSize: 22, 
              fontWeight: FontWeight.bold, 
              fontStyle: FontStyle.italic
            )),
            const SizedBox(height: 24,),
            Text(args.body, style: const TextStyle(
              fontSize: 16
              ),
            ),
          ],
        ),
      ),
    );
  }
}