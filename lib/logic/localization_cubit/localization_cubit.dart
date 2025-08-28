import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalizationCubit extends Cubit<String> {
  static const String _languageKey = 'language';
  LocalizationCubit() : super('en') {
    _loadLanguage();
  }

  void _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final lang = prefs.getString(_languageKey) ?? 'en';
    emit(lang);
  }

  void toggleLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final newLang = state == 'en' ? 'ar' : 'en';
    await prefs.setString(_languageKey, newLang);
    emit(newLang);
  }

  void setLanguage(String lang) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageKey, lang);
    emit(lang);
  }
}
