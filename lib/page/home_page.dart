import 'package:belajar_networking/services/user_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future fetchData;

  @override
  void initState() {
    super.initState();
    fetchData = UserServices.getListUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting ||
                snapshot.data == null) {
              return const CircularProgressIndicator();
            }
            List listUser = snapshot.data['data'];
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(listUser[index]['avatar']),
                  ),
                  title: Text('Email: ${listUser[index]['email']}'),
                );
              },
              itemCount: listUser.length,
            );
            // return ListView.builder(itemBuilder: , itemCount: snapshot.data.length,)
          },
        ),
      ),
    );
  }
}
