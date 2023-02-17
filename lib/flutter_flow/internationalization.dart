import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? esText = '',
  }) =>
      [enText, frText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '48yqj92v': {
      'en': 'New',
      'es': 'Nuevo',
      'fr': 'Nouveau',
    },
    'xbzplc4s': {
      'en': 'Home',
      'es': 'Casa',
      'fr': 'Domicile',
    },
  },
  // Login
  {
    'hagyvfdy': {
      'en': 'Sign In',
      'es': 'Registrarse',
      'fr': 'S\'identifier',
    },
    'otvb196v': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'fr': 'S\'inscrire',
    },
    'fqk9zngp': {
      'en': 'Use the form below, to access your account.',
      'es': 'Utilice el siguiente formulario para acceder a su cuenta.',
      'fr': 'Utilisez le formulaire ci-dessous, pour accéder à votre compte.',
    },
    'dhggjgkl': {
      'en': 'Your email address',
      'es': 'Su dirección de correo electrónico',
      'fr': 'Votre adresse e-mail',
    },
    'pbytomsf': {
      'en': 'Password',
      'es': 'Contraseña',
      'fr': 'Mot de passe',
    },
    '3xzw8qo5': {
      'en': 'Forgot Password?',
      'es': '¿Has olvidado tu contraseña?',
      'fr': 'Mot de passe oublié?',
    },
    'xt2b21lg': {
      'en': 'Login',
      'es': 'Acceso',
      'fr': 'Connexion',
    },
    '0oxsulyr': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'fr': 'Champ requis',
    },
    'q8d3ybbp': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    '2heekiw9': {
      'en': 'Field is required',
      'es': 'Se requiere campo',
      'fr': 'Champ requis',
    },
    'mjtse7a3': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor, elija una opción del menú desplegable',
      'fr': 'Veuillez choisir une option dans la liste déroulante',
    },
    'ijynuzje': {
      'en': 'Profile',
      'es': 'Perfil',
      'fr': 'Profil',
    },
  },
  // SignUp
  {
    'mcquk0sa': {
      'en': 'Sign In',
      'es': 'Registrarse',
      'fr': 'S\'identifier',
    },
    '3a46tknc': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'fr': 'S\'inscrire',
    },
    '0ufzn822': {
      'en': 'Get started by creating an account below.',
      'es': 'Comience creando una cuenta a continuación.',
      'fr': 'Commencez par créer un compte ci-dessous.',
    },
    'sh35p1k7': {
      'en': 'Your email address',
      'es': 'Su dirección de correo electrónico',
      'fr': 'Votre adresse e-mail',
    },
    's3mww27o': {
      'en': 'Password',
      'es': 'Contraseña',
      'fr': 'Mot de passe',
    },
    'hii8oza0': {
      'en': 'Sign up',
      'es': 'Regístrate',
      'fr': 'S\'inscrire',
    },
    'owvuefar': {
      'en': 'Profile',
      'es': 'Perfil',
      'fr': 'Profil',
    },
  },
  // ForgotPassword
  {
    'm9ktobmr': {
      'en': 'Forgot password',
      'es': 'Se te olvidó tu contraseña',
      'fr': 'Mot de passe oublié',
    },
    'sjof3rcv': {
      'en': 'You forgot your password ? Shame.',
      'es': '¿Olvidaste tu contraseña? Verguenza.',
      'fr': 'Vous avez oublié votre mot de passe ? Honte.',
    },
    'dwpe9xab': {
      'en': 'Your email address',
      'es': 'Su dirección de correo electrónico',
      'fr': 'Votre adresse e-mail',
    },
    '5r67e7rs': {
      'en': 'Send password reset email',
      'es': 'Enviar correo electrónico de restablecimiento de contraseña',
      'fr': 'Envoyer un e-mail de réinitialisation du mot de passe',
    },
    'om06q9t1': {
      'en': 'Back to login',
      'es': 'Atrás para iniciar sesión',
      'fr': 'Retour connexion',
    },
    'rj6wygs2': {
      'en': 'Profile',
      'es': 'Perfil',
      'fr': 'Profil',
    },
  },
  // Settings
  {
    'suy6bmps': {
      'en': 'Your Name',
      'es': 'Tu nombre',
      'fr': 'votre nom',
    },
    'oppsunbl': {
      'en': 'Change photo',
      'es': 'Cambiar foto',
      'fr': 'Changer la photo',
    },
    'nak4cbrl': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'fr': 'Sauvegarder',
    },
    'szqzn9xp': {
      'en': 'Logout',
      'es': 'Cerrar sesión',
      'fr': 'Se déconnecter',
    },
    'wurg3p18': {
      'en': 'Home',
      'es': 'Casa',
      'fr': 'Domicile',
    },
  },
  // folders
  {
    '7kml26ln': {
      'en': 'New',
      'es': 'Nuevo',
      'fr': 'Nouveau',
    },
    'n0ze2vmk': {
      'en': 'Home',
      'es': 'Casa',
      'fr': 'Domicile',
    },
  },
  // examplePage
  {
    'rc9x2s09': {
      'en': 'Home',
      'es': 'Casa',
      'fr': 'Domicile',
    },
  },
  // file
  {
    'frc8wftl': {
      'en': 'Home',
      'es': 'Casa',
      'fr': 'Domicile',
    },
  },
  // DemoPage
  {
    'i8577mwi': {
      'en': 'Home',
      'es': 'Casa',
      'fr': 'Domicile',
    },
  },
  // newnav
  {
    '6dt9sj2x': {
      'en': 'Home',
      'es': '',
      'fr': 'Acceuil',
    },
    'rdg8q5en': {
      'en': 'Settings',
      'es': 'Ajustes',
      'fr': 'Paramètres',
    },
    'joolq3hb': {
      'en': 'Upload a file',
      'es': 'Cargar un archivo',
      'fr': 'Télécharger un fichier',
    },
    'wzfdn71s': {
      'en': 'Light Mode',
      'es': 'Modo de luz',
      'fr': 'Mode lumière',
    },
    'b82qzcwq': {
      'en': 'Dark Mode',
      'es': 'Modo oscuro',
      'fr': 'Mode sombre',
    },
    'ho44eh4t': {
      'en': 'Logout',
      'es': 'Cerrar sesión',
      'fr': 'Se déconnecter',
    },
  },
  // newButton
  {
    'ggrfcuui': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    'rzjrnhhh': {
      'en': 'File',
      'es': 'Archivo',
      'fr': 'Dossier',
    },
    'blyhydr0': {
      'en': 'New',
      'es': 'Nuevo',
      'fr': 'Nouveau',
    },
  },
  // addModal
  {
    'fqrx409d': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    'pzkk6o4a': {
      'en': 'File',
      'es': 'Archivo',
      'fr': 'Dossier',
    },
    'sn3q0avy': {
      'en': 'Folder name',
      'es': 'Nombre de la carpeta',
      'fr': 'Nom de dossier',
    },
    'r4n3gt7h': {
      'en': '[folder name]',
      'es': '[nombre de la carpeta]',
      'fr': '[nom de dossier]',
    },
    'vb8p8k2k': {
      'en': 'File name',
      'es': 'Nombre del archivo',
      'fr': 'Nom de fichier',
    },
    't1jrn4o0': {
      'en': '[file.pdf]',
      'es': '[archivo.pdf]',
      'fr': '[fichier.pdf]',
    },
    'j7nwknqr': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'fr': 'Annuler',
    },
  },
  // Miscellaneous
  {
    '7sgbm13u': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'ryi4f0pr': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'p2hrahkk': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'vr7e5fdp': {
      'en': '',
      'es': '',
      'fr': '',
    },
    't8lau5zg': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '7teyqrg6': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'rfujsja4': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'a5lp0z09': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'h4b5z8jl': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '3j3qnrq1': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'jf8fqx26': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '1ctxw08p': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'qvjng9ig': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'gmre537q': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'ukk3b9if': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'e7hu7n1v': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'nrvg4k7n': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'huz9seem': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'nj6nqooq': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '5cscvx4q': {
      'en': '',
      'es': '',
      'fr': '',
    },
    '6w7mrlwr': {
      'en': '',
      'es': '',
      'fr': '',
    },
    'iusbi5eg': {
      'en': '',
      'es': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
