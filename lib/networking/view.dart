import 'package:flutter/material.dart';
import 'package:ui/networking/api.dart';
import 'package:ui/networking/user.dart';

class HomeNetwork extends StatefulWidget {
  const HomeNetwork({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeNetwork> {
  final DioClient _client = DioClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Info'),
      ),
      body: Center(
        child: FutureBuilder<User?>(
          future: _client.createUser(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              User? userInfo = snapshot.data;
              if (userInfo != null) {
                User userData = userInfo;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(userData.avatar),
                    const SizedBox(height: 8.0),
                    Text(
                      '${userInfo.firstName} ${userInfo.lastName}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      userData.email,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ],
                );
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
