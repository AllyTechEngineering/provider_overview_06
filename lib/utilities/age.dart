import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_overview_06/models/dog.dart';

class Age extends StatelessWidget {
  const Age({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '- age: ${context.select<Dog, int>((Dog dog) => dog.age)}',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () => context.read<Dog>().grow(),
          child: Text(
            'data',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ],
    );
  }
}
