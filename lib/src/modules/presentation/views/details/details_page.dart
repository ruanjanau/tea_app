import 'package:chazen/src/modules/presentation/views/details/components/custom_revenue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/icons/icons.dart';
import '../tea_list/tea_list.dart';

class DetailsPage extends StatefulWidget {
  final int id;

  const DetailsPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late final viewModel = Modular.get<TeaViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.getTeas();
  }

  @override
  Widget build(BuildContext context) {
    final tea = viewModel.value.teas.firstWhere((tea) => tea.id == widget.id);

    return Scaffold(
      body: Container(
        color: Colors.green[300],
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => Modular.to.pop(),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          tea.isFavorite == true
                              ? GlobalIcons.favoriteActive
                              : GlobalIcons.favoriting,
                          color: tea.isFavorite == true
                              ? Colors.red
                              : Colors.white,
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 500.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomRevenue(
                    name: tea.name,
                    time: tea.time,
                    ingredients: tea.revenue,
                    preparation: tea.preparation,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 230.0),
                child: Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 3.0,
                    ),
                    image: DecorationImage(
                      image: NetworkImage(tea.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
