import 'package:flutter/material.dart';

class DashboardScreen
    extends StatelessWidget {

  const DashboardScreen({
    super.key,
  });

  Widget card(
      String titulo,
      String valor,
      IconData icone) {

    return Card(
      child: ListTile(
        leading: Icon(
          icone,
          color: Colors.purple,
        ),
        title: Text(titulo),
        subtitle: Text(
          valor,
          style: const TextStyle(
            fontSize: 20,
            fontWeight:
                FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Dashboard"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16),
        child: Column(
          children: [

            card(
              "Clientes",
              "0",
              Icons.people,
            ),

            card(
              "Eventos",
              "0",
              Icons.event,
            ),

            card(
              "Faturamento",
              "R\$ 0,00",
              Icons.attach_money,
            ),
          ],
        ),
      ),
    );
  }
}
