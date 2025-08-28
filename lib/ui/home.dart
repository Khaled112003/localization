import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes/generated/l10n.dart';
import 'package:themes/logic/localization_cubit/localization_cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).hello),
      ),
      body: BlocBuilder<LocalizationCubit, String>(
        builder: (context, state) {
          return Column(
            children: [
              Switch(
                  value: state == 'ar',
                  onChanged: (value) {
                    context.read<LocalizationCubit>().toggleLanguage();
                  }),
              Center(
                child: Text(S.of(context).welcome),
              ),
              ElevatedButton(
                  onPressed: () {}, child: Text(S.of(context).button))
            ],
          );
        },
      ),
    );
  }
}
