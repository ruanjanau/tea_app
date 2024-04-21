import 'package:chazen/src/modules/presentation/views/tea_list/tea_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/icons/core_icons.dart';
import '../../../widgets/custom_card_product.dart';
import 'components/carousel_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final viewModel = Modular.get<TeaViewModel>();

  @override
  void initState() {
    super.initState();
    viewModel.getTeas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CháZen',
          style: TextStyle(
            fontSize: 26.0,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: const Color(0xFF419F7D),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    CoreIcons.star,
                    color: Colors.green[400],
                    size: 30,
                  ),
                  const SizedBox(width: 6.0),
                  Text(
                    'Destaques',
                    style: TextStyle(
                      color: Colors.green[400],
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),

              const CarouselComponent(),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Icon(
                    CoreIcons.forYou,
                    color: Colors.green[400],
                    size: 30,
                  ),
                  const SizedBox(width: 6.0),
                  Text(
                    'Pra você',
                    style: TextStyle(
                      color: Colors.green[400],
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 30.0),
              SizedBox(
                height: 260.0,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    final teas = viewModel.value.teas[index];
                    return CustomCardProduct(
                      title: teas.name,
                      image: teas.image,
                      time: teas.time,
                    );
                  },
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
