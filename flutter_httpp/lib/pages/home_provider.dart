import 'package:flutter/material.dart';
import '../models/http_provider.dart';
import 'package:provider/provider.dart';

class HomeProvider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HttpProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("POST - PROVIDER"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<HttpProvider>(
              builder: (context, value, child) => Text(
                (value.data["id"] == null)
                    ? "ID : Belum ada data"
                    : "ID : ${value.data["id"]}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Name : ", style: TextStyle(fontSize: 20)),
            Consumer<HttpProvider>(
              builder: (context, value, child) => Text(
                (value.data["name"] == null)
                    ? "Belum ada data"
                    : "${value.data["name"]}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            const Text("job : ", style: TextStyle(fontSize: 20)),
            Consumer<HttpProvider>(
              builder: (context, value, child) => Text(
                (value.data["job"] == null)
                    ? "Belum ada data"
                    : "${value.data["job"]}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Created At : ", style: TextStyle(fontSize: 20)),
            Consumer<HttpProvider>(
              builder: (context, value, child) => Text(
                (value.data["createdAt"] == null)
                    ? "Belum ada data"
                    : "${value.data["createdAt"]}",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 100),
            OutlinedButton(onPressed: () {
              dataProvider.connectAPI("Aceng Satoru", "Developer");
            }, 
            child: const Text(
              "POST DATA",
              style: TextStyle(
                fontSize: 25,
              ),
            ), 
            ),
          ],
        ),
      ),
    );
  }
}