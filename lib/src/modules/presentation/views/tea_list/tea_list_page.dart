import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../widgets/custom_card_product.dart';
import 'tea_list.dart';

class TeaListPage extends StatefulWidget {
  const TeaListPage({super.key});

  @override
  State<TeaListPage> createState() => _TeaListPageState();
}

class _TeaListPageState extends State<TeaListPage> {
  final viewModel = Modular.get<TeaViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.getTeas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: NavigatorBar(),
      appBar: AppBar(
        title: const Text('Tea'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 260,
                width: double.infinity,
                child: AnimatedBuilder(
                  animation: viewModel,
                  builder: (context, state) {
                    if (viewModel.value.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: viewModel.value.teas.length,
                      itemBuilder: (context, index) {
                        final tea = viewModel.value.teas[index];
                        return CustomCardProduct(
                          title: tea.name,
                          time: tea.time,
                          image: tea.image,
                        );
                      },
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
