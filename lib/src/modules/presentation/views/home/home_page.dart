import 'package:chazen/src/modules/presentation/shared/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../shared/components/custom_card_product.dart';
import '../../shared/icons/global_icons.dart';
import '../navigator/navigator.dart';
import '../tea_list/tea_list.dart';
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
      backgroundColor: const Color.fromARGB(255, 255, 251, 251),
      appBar: const CustomAppBar(title: 'CháZen'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    GlobalIcons.star,
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
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Icon(
                    GlobalIcons.forYou,
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
              SizedBox(
                  height: 260.0,
                  width: double.infinity,
                  child: AnimatedBuilder(
                      animation: viewModel,
                      builder: (context, state) {
                        if (viewModel.value.isLoading) {
                          return Center(
                            child: LoadingAnimationWidget.hexagonDots(
                              color: Colors.green[400]!,
                              size: 40,
                            ),
                          );
                        }
                        return ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            final teas = viewModel.value.teas[index];
                            return CustomCardProduct(
                              id: teas.id,
                              title: teas.name,
                              image: teas.image,
                              time: teas.time,
                              isFavorite: teas.isFavorite,
                            );
                          },
                        );
                      })),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Modular.to.push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const NavigatorBar(initialIndex: 1),
                        ),
                      );
                    },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
