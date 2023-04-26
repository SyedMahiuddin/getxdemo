
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:getxdemo/module/screens/test_page.dart';
import 'package:getxdemo/routes.dart';

import '../controller/album_controller.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  final getx = GetConnect();
  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();
    return Scaffold(
      body: Column(
        children: [
          Obx(
                () => _controller.isLoading.value
                ? const CircularProgressIndicator()
                : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('AlbumID: ${_controller.photoList[0].albumId}'),
                  Text('ID: ${_controller.photoList[0].id}'),
                  Text('title:${_controller.photoList[0].title}'),
                  Image.network(_controller.photoList[0].thumbnailUrl),
                ],
              ),
            ),
          ),
          ElevatedButton(onPressed: (){fetchData();
         Get.toNamed(RouteClass.gettestRoute());
          }, child:const Text('Post Data'))
        ],
      ),
    );
  }
  void fetchData() async {
    final data = {"username": "Hasbi", "password": "123456"};
    final response = getx.post("http://konuect.texonltd.com/api/v1/register/",
        data);
    if(kDebugMode){
      response.then((value) => {print('Postedddddddddddddddddddddddddddddddd')});
    }}
}