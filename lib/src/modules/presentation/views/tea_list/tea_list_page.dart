import 'package:chazen/src/modules/presentation/shared/components/custom_app_bar.dart';
import 'package:chazen/src/modules/presentation/views/tea_list/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/components/custom_card_product.dart';
import 'tea_list.dart';

class TeaListPage extends StatefulWidget {
  const TeaListPage({super.key});

  @override
  State<TeaListPage> createState() => _TeaListPageState();
}

class _TeaListPageState extends State<TeaListPage> {
  final viewModel = Modular.get<TeaViewModel>();
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    viewModel.getTeas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Buscar Chá',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTeaSearch(
            controller: controller,
            onChanged: (_) {},
          ),
          Text(
            '   Chás',
            style: TextStyle(
              color: Colors.green[400],
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          Expanded(
            child: AnimatedBuilder(
              animation: viewModel,
              builder: (context, state) {
                if (viewModel.value.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.builder(
                  itemCount: viewModel.value.teas.length,
                  itemBuilder: (context, index) {
                    final tea = viewModel.value.teas[index];
                    return CustomCardProduct(
                      id: tea.id,
                      title: tea.name,
                      time: tea.time,
                      image: tea.image,
                      isFavorite: tea.isFavorite,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
