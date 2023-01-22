import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../components/app_drawer.dart';
import '../models/order_list.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Pedidos'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (context, index) {
          return Card(
            child: ExpansionTile(
              leading: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                child: Text(
                  DateFormat('dd/MM/yyyy').format(orders.items[index].date),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text('Pedido código: ${orders.items[index].id}'),
              subtitle: Text('Valor: R\$${orders.items[index].total}'),
              children: [
                ...orders.items[index].products.map((orderDetails) {
                  return ListTile(
                    title: Text(orderDetails.name),
                    leading: CircleAvatar(
                        child: Text('${orderDetails.quantity.toString()}x')),
                    trailing: Text(
                        'R\$${orderDetails.quantity * orderDetails.price}'),
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}
