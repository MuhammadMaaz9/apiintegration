import 'package:apiintegration/model/user_model.dart';
import 'package:apiintegration/services/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<Welcome>? result;
  var isloaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    result = await ApiService().getdata();

    if (isloaded != null) {
      setState(() {
        isloaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Visibility(
      visible: isloaded,
      child: ListView.builder(
          itemCount: result?.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(result![index].title));
          }),
      replacement: Center(child: CircularProgressIndicator()),
    ));
  }
}
