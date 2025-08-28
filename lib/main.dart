import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:themes/generated/l10n.dart';
import 'package:themes/global/themes/themes_light.dart';
import 'package:themes/logic/localization_cubit/localization_cubit.dart';
import 'package:themes/ui/home.dart';

final String initialLanguage = 'en';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalizationCubit(),
      child: BlocBuilder<LocalizationCubit, String>(
        builder: (context, state) {
          return MaterialApp(
            locale: Locale(state),
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            title: 'Flutter Demo',
            theme: lightTheme,
            home: const MyHomePage(),
          );
        },
      ),
    );
  }
}
