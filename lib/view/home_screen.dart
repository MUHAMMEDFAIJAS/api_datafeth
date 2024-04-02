import 'package:api_test_1/controller/provider_functions.dart';
import 'package:api_test_1/view/male_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderFunctions>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                provider.fetchMaleUsers();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MaleScreen(),
                  ),
                );
              },
              child: const Text('Male Users'),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
