import 'package:bloc_event_test/bloc/test/test_bloc.dart';
import 'package:flutter/material.dart';

import 'injection_container.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final testBloc = sl<TestBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                debugPrint("page 2 hashcode : ${testBloc.hashCode}");
              },
              child: Text(
                'Print bloc hashcode',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
