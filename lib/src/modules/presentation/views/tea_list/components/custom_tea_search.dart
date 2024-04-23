import 'package:flutter/material.dart';

class CustomTeaSearch extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  const CustomTeaSearch({
    Key? key,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green[400],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: 300,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.grey[200],
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: Colors.grey),
              const SizedBox(width: 10.0),
              Expanded(
                child: TextFormField(
                  controller: controller,
                  onChanged: onChanged,
                  decoration: const InputDecoration(
                    hintText: 'Pesquisar',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // return Container(
    //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(8.0),
    //     color: Colors.grey[200],
    //   ),
    //   child: Row(
    //     children: [
    //       const Icon(Icons.search, color: Colors.grey),
    //       const SizedBox(width: 10.0),
    //       Expanded(
    //         child: TextFormField(
    //           controller: controller,
    //           onChanged: onChanged,
    //           decoration: const InputDecoration(
    //             hintText: 'Pesquisar',
    //             border: InputBorder.none,
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
