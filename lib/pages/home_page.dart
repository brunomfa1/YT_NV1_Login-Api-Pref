import 'package:flutter/material.dart';
import 'package:yt_splash_login/controller/home_controller.dart';
import 'package:yt_splash_login/models/post_model.dart';
import 'package:yt_splash_login/repositories/home_repository_imp.dart';
import 'package:yt_splash_login/services/prefs_services.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {   
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          PrefdServices.logout();
          Navigator.of(context).pushNamedAndRemoveUntil('/login',(_)=> true);
        }, 
        icon: const Icon(Icons.logout)
      )
    ],
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ValueListenableBuilder<List<PostModel>>(
              valueListenable: _controller.posts,
              builder: (context, list,__){
                return ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder:(context, index)=>
                  ListTile(
                    leading: Text(list[index].id.toString()),
                    trailing: const Icon(Icons.arrow_forward),
                    title: Text(list[index].title),
                    onTap: () => Navigator.of(context).pushNamed(
                      '/details', arguments: list[index]
                    ),
                  ),
                  separatorBuilder: (context, index) => const Divider(),
                );
              }),
          ],
        ),
      ),   
    );
  }
}   
    
  

          
                   