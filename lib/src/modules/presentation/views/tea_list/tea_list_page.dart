import 'package:chazen/src/modules/presentation/shared/widgets/custom_app_bar.dart';
import 'package:chazen/src/modules/presentation/views/tea_list/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/widgets/custom_card_product.dart';
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
        children: [
          CustomTeaSearch(
            controller: controller,
            onChanged: (_) {},
          ),
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
    );
  }
}
