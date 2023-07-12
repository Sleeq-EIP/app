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
    'yjm0b1dl': {
      'en': 'Grid View',
      'es': 'Vista en cuadrícula',
      'fr': 'Vue Grille',
    },
    'xbzplc4s': {
      'en': 'Home',
      'es': 'Casa',
      'fr': 'Acceuil',
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
    '8bi0er89': {
      'en': 'Settings',
      'es': 'Ajustes',
      'fr': 'Paramètres',
    },
    '7ehz86gs': {
      'en': 'Profile',
      'es': 'Perfil',
      'fr': 'Profil',
    },
    '9rby2k2i': {
      'en': 'Account',
      'es': 'Cuenta',
      'fr': 'Compte',
    },
    '9z09qn2f': {
      'en': 'About Sleeq',
      'es': 'Acerca de Sleeq',
      'fr': 'À propos de Sleeq',
    },
    'wurg3p18': {
      'en': 'Home',
      'es': 'Casa',
      'fr': 'Acceuil',
    },
  },
  // folders
  {
    'w9d5ah2c': {
      'en': 'Grid View',
      'es': 'Vista en cuadrícula',
      'fr': 'Vue Grille',
    },
    'n0ze2vmk': {
      'en': 'Home',
      'es': 'Casa',
      'fr': 'Acceuil',
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
  // TestOnBoarding
  {
    'izm7zh7t': {
      'en': 'Store documents',
      'es': 'Almacene sus documentos',
      'fr': 'Stockez vos documents',
    },
    'fr6bdly0': {
      'en': 'A way to store any type of your documents.',
      'es': 'Una forma de almacenar todo tipo de documentos.',
      'fr': 'Un moyen de stocker tout type de documents.',
    },
    'l6t1c76m': {
      'en': 'Retrieve Documents',
      'es': 'Acceda a sus documentos',
      'fr': 'Accédez à vos documents',
    },
    'g3lblqub': {
      'en': 'access to all your documents anywhere and on any devices.',
      'es': 'Acceda a sus documentos desde cualquier lugar y dispositivo.',
      'fr': 'Accédez à vos documents partout et sur tout vos appareils.',
    },
    '583of6kn': {
      'en': 'For any situation',
      'es': 'En todas las situaciones',
      'fr': 'Dans toutes les situations',
    },
    'fq1sirxh': {
      'en':
          'Retrieve your documents for your travels, your payments, your mobility, and more!',
      'es':
          'Acceda a sus documentos de viaje, para pagos, movilidad y mucho más.',
      'fr':
          'Accéder à vos documents de voyage, pour vos paiements, votre mobilité et autres!',
    },
    'f6g0wm12': {
      'en': 'Continue',
      'es': 'Continuar',
      'fr': 'Continuer',
    },
  },
  // Account
  {
    'cqkkoltm': {
      'en': 'Account',
      'es': 'Cuenta',
      'fr': 'Compte',
    },
    'py7rjozc': {
      'en': 'Storage',
      'es': 'Almacenamiento',
      'fr': 'Stockage',
    },
    'kxhmi35j': {
      'en': '0 MB / 250 MB',
      'es': '0 MB / 250 MB',
      'fr': '0 Mo / 250 Mo',
    },
    'eakvdt9z': {
      'en': 'Subscription plan',
      'es': 'plan de suscripción',
      'fr': 'Formule d\'abonnement',
    },
    'vo5wj9ol': {
      'en': 'Delete account',
      'es': 'Borrar cuenta',
      'fr': 'Supprimer le compte',
    },
    '4ffv07yn': {
      'en': 'Reset password',
      'es': 'Restablecer la contraseña',
      'fr': 'Réinitialiser le mot de passe',
    },
    'nc10hive': {
      'en': 'Send feedback',
      'es': 'Enviar comentarios',
      'fr': 'Envoyer des commentaires',
    },
    '75lt2syf': {
      'en': 'Report a bug',
      'es': 'Enviar comentarios',
      'fr': 'Envoyer des commentaires',
    },
    'zp5l6n6u': {
      'en': 'Settings',
      'es': 'Ajustes',
      'fr': 'Paramètres',
    },
  },
  // Profile
  {
    'ny0ab5ej': {
      'en': 'Profile',
      'es': 'Perfil',
      'fr': 'Profil',
    },
    'r5sbc1ic': {
      'en': 'Your Name',
      'es': 'Tu nombre',
      'fr': 'votre nom',
    },
    'zcqg28jj': {
      'en': 'Change photo',
      'es': 'Cambiar foto',
      'fr': 'Changer la photo',
    },
    'zldhyf21': {
      'en': 'Save Changes',
      'es': 'Guardar cambios',
      'fr': 'Sauvegarder',
    },
    '8z9vjqdr': {
      'en': 'Logout',
      'es': 'Cerrar sesión',
      'fr': 'Se déconnecter',
    },
    'r41az8sf': {
      'en': 'Settings',
      'es': 'Casa',
      'fr': 'Acceuil',
    },
  },
  // PlanSelection
  {
    'tq6yi8cb': {
      'en': 'Subscribe',
      'es': 'Suscribir',
      'fr': 'S\'abonner',
    },
    'etkn3ot2': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Memo
  {
    '87ckfjne': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // AboutSleeq
  {
    'ywfrk2c5': {
      'en': 'About Sleeq',
      'es': 'Perfil',
      'fr': 'Profil',
    },
    'qojrk86o': {
      'en': 'Our Project',
      'es': 'Nuestro proyecto',
      'fr': 'Notre projet',
    },
    '0filyxh2': {
      'en':
          'We are a team of 9 developers incubated at EPITECH (Paris Graduate School of Digital Innovation).\nSleeq originated within our Masters program and has been continiously in development since November 2021.\nThe pandemic taught us our world is getting increasingly digital out of need.\n\nWe at Sleeq want that change to be as simple as digitalizing the full contents of your wallet while ensuring you retain the safety and comfort feeling of having everything everywhere with you.\n\nSleek. Reliable. Secure.\nSleeq replace the physical wallet with a digital wallet which can store all the document you want in one place or several place like in your phone or your computer\nThanks to Sleeq it is possible to transfer your documents securely and quickly between devices of different platforms.',
      'es':
          'Somos un equipo de 9 desarrolladores incubados en EPITECH (Escuela Superior de Innovación Digital de París).\nSleeq se originó dentro de nuestro programa de Maestría y ha estado en desarrollo continuo desde noviembre de 2021.\nLa pandemia nos enseñó que nuestro mundo se está volviendo cada vez más digital por necesidad.\n\nEn Sleeq queremos que ese cambio sea tan simple como digitalizar todo el contenido de su billetera y al mismo tiempo garantizarle la sensación de seguridad y comodidad de tener todo con usted en todas partes.\n\nPulcro. Confiable. Seguro.\nSleeq reemplaza la billetera física con una billetera digital que puede almacenar todos los documentos que desee en un lugar o en varios lugares, como en su teléfono o computadora.\nGracias a Sleeq es posible transferir tus documentos de forma segura y rápida entre dispositivos de diferentes plataformas.',
      'fr':
          'Nous sommes une équipe de 9 développeurs incubés à l\'EPITECH (Paris Graduate School of Digital Innovation).\nSleeq est né au sein de notre programme de maîtrise et est en développement continu depuis novembre 2021.\nLa pandémie nous a appris que notre monde devient de plus en plus numérique par nécessité.\n\nChez Sleeq, nous voulons que ce changement soit aussi simple que de numériser tout le contenu de votre portefeuille tout en vous assurant de conserver le sentiment de sécurité et de confort d\'avoir tout partout avec vous.\n\nLisse. Fiable. Sécurisé.\nSleeq remplace le portefeuille physique par un portefeuille numérique qui peut stocker tous les documents que vous voulez à un ou plusieurs endroits comme dans votre téléphone ou votre ordinateur\nGrâce à Sleeq, il est possible de transférer vos documents en toute sécurité et rapidement entre des appareils de différentes plateformes.',
    },
    'j7x640he': {
      'en': 'Our Team',
      'es': 'Nuestro equipo',
      'fr': 'Notre équipe',
    },
    'uwy1pkya': {
      'en': 'Mathieu\nBretrandy',
      'es': 'Mathieu\nBretrandy',
      'fr': 'Matthieu\nBretagne',
    },
    '2sht2n2s': {
      'en': 'Ilan\nBenarroche',
      'es': 'Ilán\nBenarroche',
      'fr': 'Ilan\nBénarroche',
    },
    'gdigf6jw': {
      'en': 'Julien\nFumey',
      'es': 'julián\nFumey',
      'fr': 'Julien\nFumée',
    },
    'owqht94o': {
      'en': 'Arsene\nMathieu',
      'es': 'Arsenio\nMathieu',
      'fr': 'Arsène\nMatthieu',
    },
    'a0gj0cad': {
      'en': 'Hugo\nDomingues',
      'es': 'Hugo\ndomingos',
      'fr': 'Hugo\nDomingues',
    },
    '1dft3co8': {
      'en': 'Titouan\nLoeb',
      'es': 'Tituán\nLoeb',
      'fr': 'Titouan\nLoeb',
    },
    'muka298r': {
      'en': 'Thomas\nCamlong',
      'es': 'Tomás\ncamlong',
      'fr': 'Thomas\nCamlong',
    },
    '3dp7q37p': {
      'en': 'Vasco\nRibeiro',
      'es': 'vasco\nRibeiro',
      'fr': 'Vasco\nRibeiro',
    },
    'j9gng7ma': {
      'en': 'Settings',
      'es': 'Casa',
      'fr': 'Acceuil',
    },
  },
  // fileInformations
  {
    '90d8n39p': {
      'en': 'Informations',
      'es': 'Informaciones',
      'fr': 'Informations',
    },
    'a1iqw8rl': {
      'en': 'Name :',
      'es': 'Nombre :',
      'fr': 'Nom :',
    },
    'cqydfgnk': {
      'en': 'File Name',
      'es': 'Nombre del archivo',
      'fr': 'Nom de fichier',
    },
    'uiuo94s4': {
      'en': 'Type :',
      'es': 'Tipo :',
      'fr': 'Taper :',
    },
    '1nb12l3g': {
      'en': '.pdf',
      'es': '.pdf',
      'fr': '.pdf',
    },
    '3uh5ik4j': {
      'en': 'Size :',
      'es': 'Tamaño :',
      'fr': 'Taille :',
    },
    '0hsomtgg': {
      'en': '20 MB',
      'es': '20 MB',
      'fr': '20 Mo',
    },
    'vn5bzht6': {
      'en': 'Creation Date',
      'es': 'Fecha de creación',
      'fr': 'Date de création',
    },
    'ycbwmqug': {
      'en': 'May 23, 2023 - 14:33',
      'es': '23 mayo 2023 - 14:33',
      'fr': '23 mai 2023 - 14:33',
    },
    'otyglnx0': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // successfulPayment
  {
    'osa4t63e': {
      'en': 'Payment successful',
      'es': 'Pago exitoso',
      'fr': 'Paiement réussi',
    },
    'gi4un8ri': {
      'en': 'Go back to home page',
      'es': 'Volver a la página principal',
      'fr': 'Retournez à la page d\'accueil',
    },
    'qgnp7enp': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // cancelPayment
  {
    'yrbqd3sp': {
      'en': 'Operation canceled',
      'es': 'Operación cancelada',
      'fr': 'Opération annulée',
    },
    'izx9kxnr': {
      'en': 'Try again',
      'es': 'Intentar otra vez',
      'fr': 'Essayer à nouveau',
    },
    'vamm422r': {
      'en': 'Go back to home page',
      'es': 'Volver a la página principal',
      'fr': 'Retournez à la page d\'accueil',
    },
    'rqlcinw0': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // feedback
  {
    'wwoo368v': {
      'en': 'Feedback Form',
      'es': 'Formulario de comentarios',
      'fr': 'Formulaire de commentaires',
    },
    '13ywdpbd': {
      'en': 'Please provide your feedback on the Sleeq beta program.',
      'es': 'Envíe sus comentarios sobre el programa beta de Sleeq.',
      'fr':
          'Veuillez nous faire part de vos commentaires sur le programme bêta de Sleeq.',
    },
    '3udtpuuu': {
      'en': 'Rate the following points:',
      'es': 'Califica los siguientes puntos:',
      'fr': 'Évaluez les points suivants :',
    },
    'uix9u6au': {
      'en': 'Ease of Use',
      'es': 'Facilidad de uso',
      'fr': 'Facilité d\'utilisation',
    },
    'fyczl56s': {
      'en': 'Quality of Features',
      'es': 'Calidad de las características',
      'fr': 'Qualité des fonctionnalités',
    },
    'g5ceztgx': {
      'en': 'Bug-Free App',
      'es': 'Aplicación sin errores',
      'fr': 'Application sans bogue',
    },
    '8ffs53fz': {
      'en': 'Price of Subscription Models',
      'es': 'Precio de los modelos de suscripción',
      'fr': 'Prix ​​des modèles d\'abonnement',
    },
    'xe1lwdot': {
      'en': 'Have you considered paying for premium?',
      'es': '¿Ha considerado pagar la prima?',
      'fr': 'Avez-vous pensé à payer une prime ?',
    },
    'bri2xpoq': {
      'en': 'Reason for not considering premium',
      'es': 'Razón para no considerar la prima',
      'fr': 'Raison de ne pas considérer la prime',
    },
    '5085jd2h': {
      'en': 'Enter reason here...',
      'es': 'Introduzca el motivo aquí...',
      'fr': 'Entrez la raison ici...',
    },
    'gxykgt96': {
      'en': 'Other Comments',
      'es': 'Otros comentarios',
      'fr': 'Autres commentaires',
    },
    'ycq6iivk': {
      'en': 'Enter any additional comments here...',
      'es': 'Ingrese cualquier comentario adicional aquí...',
      'fr': 'Entrez tout commentaire supplémentaire ici...',
    },
    'mc303noe': {
      'en': 'Submit',
      'es': 'Entregar',
      'fr': 'Soumettre',
    },
  },
  // bugReport
  {
    'zezqvldl': {
      'en': 'Feedback Form',
      'es': 'Formulario de comentarios',
      'fr': 'Formulaire de commentaires',
    },
    'erdj4jbq': {
      'en': 'Enter title',
      'es': '',
      'fr': '',
    },
    'wl5uf2lq': {
      'en': 'Bug Description',
      'es': '',
      'fr': '',
    },
    'k8tedie9': {
      'en': 'Enter bug description...',
      'es': '',
      'fr': '',
    },
    '6c4ciizb': {
      'en': 'Steps to reproduce',
      'es': '',
      'fr': '',
    },
    'v6lw567x': {
      'en': '1 - Open the app\n2 - Upload a file\n3 - Phone explodes',
      'es': '',
      'fr': '',
    },
    'vllvxz5x': {
      'en': 'Upload Screenshot',
      'es': '',
      'fr': '',
    },
    '20sof0wn': {
      'en': 'Priority',
      'es': '',
      'fr': '',
    },
    'ggp205ok': {
      'en': 'Low',
      'es': '',
      'fr': '',
    },
    'vntu8mgq': {
      'en': 'Medium',
      'es': '',
      'fr': '',
    },
    'tk73g4je': {
      'en': 'High',
      'es': '',
      'fr': '',
    },
    'h8naaiqh': {
      'en': 'Notify me of bug fixing progress',
      'es': '',
      'fr': '',
    },
    'enbd6m6b': {
      'en': 'Submit',
      'es': 'Entregar',
      'fr': 'Soumettre',
    },
    'atdb69tb': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    '3od8gfyn': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    '7r1d999l': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'd4ilnoo4': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
    's9imrmll': {
      'en': 'Field is required',
      'es': '',
      'fr': '',
    },
    'xwghkbbc': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
      'fr': '',
    },
  },
  // newnav
  {
    '6dt9sj2x': {
      'en': 'Home',
      'es': 'Casa',
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
      'fr': 'Fichier',
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
  // RenameFolderDialog
  {
    'qhcwqbb9': {
      'en': 'change folder name',
      'es': 'cambiar el nombre de la carpeta',
      'fr': 'changer le nom du dossier',
    },
    'kds0ysdx': {
      'en': 'Confirm',
      'es': 'Confirmar',
      'fr': 'Confirmer',
    },
  },
  // resetPasswordPopup
  {
    '6yzjenu9': {
      'en':
          'You are going to reset your password. You will reveive a link to your email address to define a new password. Are you sure you wan tot continue?',
      'es':
          'Vas a restablecer tu contraseña. Recibirá un enlace a su dirección de correo electrónico para definir una nueva contraseña. ¿Estás seguro de que quieres continuar?',
      'fr':
          'Vous êtes sur le point de réinitialiser votre mot de passe. Vous recevrez un lien vers votre adresse email pour définir un nouveau mot de passe. Voulez-vous vraiment continuer ?',
    },
    't9ut0v9p': {
      'en': 'Confirm',
      'es': 'Confirmar',
      'fr': 'Confirmer',
    },
    'zommix2i': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'fr': 'Annuler',
    },
  },
  // deleteAccountPopup
  {
    'u1s9gb89': {
      'en':
          'You are going to delete your account. You will loose every document saved on this account. Are you sure you wan tot continue?',
      'es':
          'Vas a eliminar tu cuenta. Perderá todos los documentos guardados en esta cuenta. ¿Estás seguro de que quieres continuar?',
      'fr':
          'Vous êtes sur le point de supprimer votre compte. Vous perdrez tous les documents enregistrés sur ce compte. Voulez-vous vraiment continuer ?',
    },
    '8k8mcj7g': {
      'en': 'Confirm',
      'es': 'Confirmar',
      'fr': 'Confirmer',
    },
    '20zuwi5m': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'fr': 'Annuler',
    },
  },
  // PremiumPlanWidget
  {
    'wszriotl': {
      'en': 'Sleeq Starter',
      'es': 'Arrancador elegante',
      'fr': 'Démarreur élégant',
    },
    '4rajon4b': {
      'en': 'To discover Sleeq',
      'es': 'Para descubrir Sleeq',
      'fr': 'Pour découvrir Sleeq',
    },
    '8t5z5mb2': {
      'en': 'Free',
      'es': 'Gratis',
      'fr': 'Gratuit',
    },
    'o6ckrkk7': {
      'en': 'Category',
      'es': 'Categoría',
      'fr': 'Catégorie',
    },
    'lfwhoe3f': {
      'en': 'Included documents',
      'es': 'Documentos incluidos',
      'fr': 'Documents inclus',
    },
    'sad5z4i4': {
      'en': 'You can store up to 50 documents',
      'es': 'Puede almacenar hasta 50 documentos',
      'fr': 'Vous pouvez stocker jusqu\'à 50 documents',
    },
    '68clqyq9': {
      'en': '50',
      'es': '50',
      'fr': '50',
    },
    '8w5xedmx': {
      'en': 'Max document size',
      'es': 'Tamaño máximo de documento',
      'fr': 'Taille maximale du document',
    },
    'yb9wz2vc': {
      'en': 'Your documents can weigh up to 5 MB each',
      'es': 'Tus documentos pueden pesar hasta 5 MB cada uno',
      'fr': 'Vos documents peuvent peser jusqu\'à 5 Mo chacun',
    },
    'd0v2otpl': {
      'en': 'Access from',
      'es': 'Acceso desde',
      'fr': 'Accès depuis',
    },
    '4x4gjabo': {
      'en': 'Smartphone',
      'es': 'teléfono inteligente',
      'fr': 'Téléphone intelligent',
    },
    'e9v9j74e': {
      'en': 'Access and upload you documents from a smartphone',
      'es': 'Acceda y cargue sus documentos desde un teléfono inteligente',
      'fr': 'Accéder et télécharger vos documents depuis un smartphone',
    },
    '10p2rw7v': {
      'en': '5 MD',
      'es': '5 MD',
      'fr': '5 MD',
    },
    'pic8v1y0': {
      'en': 'Computer',
      'es': 'Computadora',
      'fr': 'Ordinateur',
    },
    '9anzvjk1': {
      'en': 'Access and upload you documents from a computer',
      'es': 'Acceda y cargue sus documentos desde una computadora',
      'fr': 'Accéder et télécharger vos documents depuis un ordinateur',
    },
    '29is3om7': {
      'en': 'Import from',
      'es': 'Importar de',
      'fr': 'Importer de',
    },
    'fpboc445': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    'ieu222cg': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'p5mm061p': {
      'en': 'Camera',
      'es': 'Cámara',
      'fr': 'Caméra',
    },
    'b5m39m8j': {
      'en': 'Import documents using the camera',
      'es': 'Importar documentos usando la cámara',
      'fr': 'Importer des documents à l\'aide de l\'appareil photo',
    },
    'xzt8xhue': {
      'en': 'Optical Character Recognition ',
      'es': 'Reconocimiento óptico de caracteres',
      'fr': 'Reconnaissance optique de caractères',
    },
    'eebhi0sm': {
      'en': 'Apply optical character recognition on your documents ',
      'es': 'Aplique el reconocimiento óptico de caracteres en sus documentos',
      'fr':
          'Appliquez la reconnaissance optique des caractères sur vos documents',
    },
    '2wtmltbr': {
      'en': 'Export to',
      'es': 'Exportar a',
      'fr': 'Exporter vers',
    },
    'mlb6waad': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    'vqhzst3f': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'a29pwlsz': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    'xcjxosiq': {
      'en': 'Export documents to your emails',
      'es': 'Exportar documentos a sus correos electrónicos',
      'fr': 'Exportez des documents vers vos e-mails',
    },
    'y2qj1noi': {
      'en': 'Calender ',
      'es': 'Calandrar',
      'fr': 'Calandre',
    },
    'nyykm8u8': {
      'en': 'Export your documents to your calender',
      'es': 'Exporta tus documentos a tu calendario',
      'fr': 'Exportez vos documents vers votre calendrier',
    },
    'qufqp7tj': {
      'en': 'Wallet',
      'es': 'Billetera',
      'fr': 'Portefeuille',
    },
    'io0mi4cj': {
      'en': 'Export your documents to your wallet',
      'es': 'Exporta tus documentos a tu monedero',
      'fr': 'Exportez vos documents vers votre portefeuille',
    },
    'bpbbm6wl': {
      'en': 'Personalization',
      'es': 'Personalización',
      'fr': 'Personnalisation',
    },
    'x1brjyyg': {
      'en': 'Document Categories',
      'es': 'Categorías de documentos',
      'fr': 'Catégories de documents',
    },
    'd5hauf5b': {
      'en': 'You only have access to the default categories',
      'es': 'Solo tienes acceso a las categorías predeterminadas',
      'fr': 'Vous n\'avez accès qu\'aux catégories par défaut',
    },
    'jlc4kmb0': {
      'en': 'Default',
      'es': 'Por defecto',
      'fr': 'Défaut',
    },
    '59gdkv6i': {
      'en': 'Customization',
      'es': 'personalización',
      'fr': 'Personnalisation',
    },
    '0jf6bl68': {
      'en': 'You can customize and organize your folder as desired',
      'es': 'Puede personalizar y organizar su carpeta como desee',
      'fr':
          'Vous pouvez personnaliser et organiser votre dossier comme vous le souhaitez',
    },
    '89az1hd7': {
      'en': 'Widget',
      'es': 'Widget',
      'fr': 'Widget',
    },
    'tjmhlsuw': {
      'en': 'You get Sleeq widget for your home screen',
      'es': 'Obtienes el widget Sleeq para tu pantalla de inicio',
      'fr': 'Vous obtenez le widget Sleeq pour votre écran d\'accueil',
    },
  },
  // PlanStarter
  {
    'fp935rcz': {
      'en': 'Sleeq Starter',
      'es': 'Arrancador elegante',
      'fr': 'Démarreur élégant',
    },
    'dg89lsg2': {
      'en': 'To discover Sleeq',
      'es': 'Para descubrir Sleeq',
      'fr': 'Pour découvrir Sleeq',
    },
    'ic1dy8nm': {
      'en': 'Free',
      'es': 'Gratis',
      'fr': 'Gratuit',
    },
    'ughm3d26': {
      'en': 'Category',
      'es': 'Categoría',
      'fr': 'Catégorie',
    },
    'v1l58n13': {
      'en': 'Included documents',
      'es': 'Documentos incluidos',
      'fr': 'Documents inclus',
    },
    'qx0f5cez': {
      'en': 'You can store up to 50 documents',
      'es': 'Puede almacenar hasta 50 documentos',
      'fr': 'Vous pouvez stocker jusqu\'à 50 documents',
    },
    'efwqajeu': {
      'en': '50',
      'es': '50',
      'fr': '50',
    },
    's3b57yn8': {
      'en': 'Max document size',
      'es': 'Tamaño máximo de documento',
      'fr': 'Taille maximale du document',
    },
    'oat9dg9z': {
      'en': 'Your documents can weigh up to 5 MB each',
      'es': 'Tus documentos pueden pesar hasta 5 MB cada uno',
      'fr': 'Vos documents peuvent peser jusqu\'à 5 Mo chacun',
    },
    'kcqdjcow': {
      'en': 'Access from',
      'es': 'Acceso desde',
      'fr': 'Accès depuis',
    },
    'pfm33szy': {
      'en': 'Smartphone',
      'es': 'teléfono inteligente',
      'fr': 'Téléphone intelligent',
    },
    'b20kcrn9': {
      'en': 'Access and upload you documents from a smartphone',
      'es': 'Acceda y cargue sus documentos desde un teléfono inteligente',
      'fr': 'Accéder et télécharger vos documents depuis un smartphone',
    },
    'lm3gfmhr': {
      'en': '5 MD',
      'es': '5 MD',
      'fr': '5 MD',
    },
    '5qq2fp7e': {
      'en': 'Computer',
      'es': 'Computadora',
      'fr': 'Ordinateur',
    },
    '2719e7v5': {
      'en': 'Access and upload you documents from a computer',
      'es': 'Acceda y cargue sus documentos desde una computadora',
      'fr': 'Accéder et télécharger vos documents depuis un ordinateur',
    },
    'v4kfhhbg': {
      'en': 'Import from',
      'es': 'Importar de',
      'fr': 'Importer de',
    },
    'isjwh9iw': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    '94k6qg9i': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'hz1h1il8': {
      'en': 'Camera',
      'es': 'Cámara',
      'fr': 'Caméra',
    },
    '9y3y4dz4': {
      'en': 'Import documents using the camera',
      'es': 'Importar documentos usando la cámara',
      'fr': 'Importer des documents à l\'aide de l\'appareil photo',
    },
    '79vvaz6t': {
      'en': 'Optical Character Recognition ',
      'es': 'Reconocimiento óptico de caracteres',
      'fr': 'Reconnaissance optique de caractères',
    },
    'd256rrvh': {
      'en': 'Apply optical character recognition on your documents ',
      'es': 'Aplique el reconocimiento óptico de caracteres en sus documentos',
      'fr':
          'Appliquez la reconnaissance optique des caractères sur vos documents',
    },
    'nujgw3s8': {
      'en': 'Export to',
      'es': 'Exportar a',
      'fr': 'Exporter vers',
    },
    'wg6ohby7': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    'w2siv5ep': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'jfxwhvz6': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    'pf68lbmm': {
      'en': 'Export documents to your emails',
      'es': 'Exportar documentos a sus correos electrónicos',
      'fr': 'Exportez des documents vers vos e-mails',
    },
    'qoo51h08': {
      'en': 'Calender ',
      'es': 'Calandrar',
      'fr': 'Calandre',
    },
    'gi13s1g6': {
      'en': 'Export your documents to your calender',
      'es': 'Exporta tus documentos a tu calendario',
      'fr': 'Exportez vos documents vers votre calendrier',
    },
    'a3a3w3oa': {
      'en': 'Wallet',
      'es': 'Billetera',
      'fr': 'Portefeuille',
    },
    'wn1wsesm': {
      'en': 'Export your documents to your wallet',
      'es': 'Exporta tus documentos a tu monedero',
      'fr': 'Exportez vos documents vers votre portefeuille',
    },
    '4aw39xdb': {
      'en': 'Personalization',
      'es': 'Personalización',
      'fr': 'Personnalisation',
    },
    'drhhlq0t': {
      'en': 'Document Categories',
      'es': 'Categorías de documentos',
      'fr': 'Catégories de documents',
    },
    '35skgmd7': {
      'en': 'You only have access to the default categories',
      'es': 'Solo tienes acceso a las categorías predeterminadas',
      'fr': 'Vous n\'avez accès qu\'aux catégories par défaut',
    },
    '5x0ddgo9': {
      'en': 'Default',
      'es': 'Por defecto',
      'fr': 'Défaut',
    },
    'a4bhykzt': {
      'en': 'Customization',
      'es': 'personalización',
      'fr': 'Personnalisation',
    },
    'ebfjw0sy': {
      'en': 'You can customize and organize your folder as desired',
      'es': 'Puede personalizar y organizar su carpeta como desee',
      'fr':
          'Vous pouvez personnaliser et organiser votre dossier comme vous le souhaitez',
    },
    'q0pgfmx4': {
      'en': 'Widget',
      'es': 'Widget',
      'fr': 'Widget',
    },
    'w7hr1p51': {
      'en': 'You get Sleeq widget for your home screen',
      'es': 'Obtienes el widget Sleeq para tu pantalla de inicio',
      'fr': 'Vous obtenez le widget Sleeq pour votre écran d\'accueil',
    },
  },
  // PlanOpen
  {
    'b4jn9bha': {
      'en': 'Sleeq Open',
      'es': 'Elegante abierto',
      'fr': 'Sleeq ouvert',
    },
    '61mzqpdg': {
      'en': 'Unlock the full experience',
      'es': 'Desbloquea la experiencia completa',
      'fr': 'Débloquez l\'expérience complète',
    },
    'zk9xb0w0': {
      'en': '14.99 € per month',
      'es': '14,99 € al mes',
      'fr': '14,99 € par mois',
    },
    'pvdrd7ch': {
      'en': 'Category',
      'es': 'Categoría',
      'fr': 'Catégorie',
    },
    'dka100fn': {
      'en': 'Included documents',
      'es': 'Documentos incluidos',
      'fr': 'Documents inclus',
    },
    'obbaumkr': {
      'en': 'You can store as many documents as desired',
      'es': 'Puede almacenar tantos documentos como desee',
      'fr': 'Vous pouvez stocker autant de documents que vous le souhaitez',
    },
    'hj77cnkj': {
      'en': '∞',
      'es': '∞',
      'fr': '∞',
    },
    '58x4vrlf': {
      'en': 'Max document size',
      'es': 'Tamaño máximo de documento',
      'fr': 'Taille maximale du document',
    },
    '4pa4hi28': {
      'en': 'Your documents can weigh up to 100 MB each',
      'es': 'Tus documentos pueden pesar hasta 100 MB cada uno',
      'fr': 'Vos documents peuvent peser jusqu\'à 100 Mo chacun',
    },
    'bz0f9xv9': {
      'en': 'Access from',
      'es': 'Acceso desde',
      'fr': 'Accès depuis',
    },
    'gie9ruzr': {
      'en': 'Smartphone',
      'es': 'teléfono inteligente',
      'fr': 'Téléphone intelligent',
    },
    'b6gvdeb4': {
      'en': 'Access and upload you documents from a smartphone',
      'es': 'Acceda y cargue sus documentos desde un teléfono inteligente',
      'fr': 'Accéder et télécharger vos documents depuis un smartphone',
    },
    'duzazgdm': {
      'en': '5 MD',
      'es': '5 MD',
      'fr': '5 MD',
    },
    'bzyoln4t': {
      'en': 'Computer',
      'es': 'Computadora',
      'fr': 'Ordinateur',
    },
    'd3b2k42e': {
      'en': 'Access and upload you documents from a computer',
      'es': 'Acceda y cargue sus documentos desde una computadora',
      'fr': 'Accéder et télécharger vos documents depuis un ordinateur',
    },
    'l4yfa6xk': {
      'en': 'Import from',
      'es': 'Importar de',
      'fr': 'Importer de',
    },
    'k0lf19cl': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    'vl2i1l17': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'ngqru57y': {
      'en': 'Camera',
      'es': 'Cámara',
      'fr': 'Caméra',
    },
    'mo327zsy': {
      'en': 'Import documents using the camera',
      'es': 'Importar documentos usando la cámara',
      'fr': 'Importer des documents à l\'aide de l\'appareil photo',
    },
    '5kfiiclg': {
      'en': 'Optical Character Recognition ',
      'es': 'Reconocimiento óptico de caracteres',
      'fr': 'Reconnaissance optique de caractères',
    },
    '8w9e2tv8': {
      'en': 'Apply optical character recognition on your documents ',
      'es': 'Aplique el reconocimiento óptico de caracteres en sus documentos',
      'fr':
          'Appliquez la reconnaissance optique des caractères sur vos documents',
    },
    '2ja7c6ur': {
      'en': 'Export to',
      'es': 'Exportar a',
      'fr': 'Exporter vers',
    },
    '1vfv7yth': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    '9hdefl1j': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'xxf0kc0t': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    '8ve2ka4m': {
      'en': 'Export documents to your emails',
      'es': 'Exportar documentos a sus correos electrónicos',
      'fr': 'Exportez des documents vers vos e-mails',
    },
    'hshs3fv2': {
      'en': 'Calender ',
      'es': 'Calandrar',
      'fr': 'Calandre',
    },
    'y0mwige5': {
      'en': 'Export your documents to your calender',
      'es': 'Exporta tus documentos a tu calendario',
      'fr': 'Exportez vos documents vers votre calendrier',
    },
    'rf73hlkl': {
      'en': 'Wallet',
      'es': 'Billetera',
      'fr': 'Portefeuille',
    },
    'w4mrohhg': {
      'en': 'Export your documents to your wallet',
      'es': 'Exporta tus documentos a tu monedero',
      'fr': 'Exportez vos documents vers votre portefeuille',
    },
    '1bbj009t': {
      'en': 'Personalization',
      'es': 'Personalización',
      'fr': 'Personnalisation',
    },
    'pym4d8ws': {
      'en': 'Document Categories',
      'es': 'Categorías de documentos',
      'fr': 'Catégories de documents',
    },
    'gljwxayp': {
      'en':
          'You have access to the default categories and you can create unlimited custom categories',
      'es':
          'Tiene acceso a las categorías predeterminadas y puede crear categorías personalizadas ilimitadas',
      'fr':
          'Vous avez accès aux catégories par défaut et vous pouvez créer un nombre illimité de catégories personnalisées',
    },
    '7cg9f2xu': {
      'en': '∞ Custom',
      'es': '∞ Personalizado',
      'fr': '∞ Personnalisé',
    },
    'yongpki4': {
      'en': 'Customization',
      'es': 'personalización',
      'fr': 'Personnalisation',
    },
    'jiupgtt5': {
      'en': 'You can customize and organize your folder as desired',
      'es': 'Puede personalizar y organizar su carpeta como desee',
      'fr':
          'Vous pouvez personnaliser et organiser votre dossier comme vous le souhaitez',
    },
    '63gpveu4': {
      'en': 'Widget',
      'es': 'Widget',
      'fr': 'Widget',
    },
    'hdhbyr9w': {
      'en': 'You get Sleeq widget for your home screen',
      'es': 'Obtienes el widget Sleeq para tu pantalla de inicio',
      'fr': 'Vous obtenez le widget Sleeq pour votre écran d\'accueil',
    },
  },
  // PlanFamily
  {
    'bo4f0xl2': {
      'en': 'Sleeq Family',
      'es': 'Familia elegante',
      'fr': 'Famille Sleeq',
    },
    '5cp455ub': {
      'en': 'For 4 members of the family',
      'es': 'Para 4 miembros de la familia',
      'fr': 'Pour 4 membres de la famille',
    },
    'lj5paxa8': {
      'en': '19.99 € per month',
      'es': '19,99 € al mes',
      'fr': '19,99 € par mois',
    },
    '1a9x2awl': {
      'en': 'Category',
      'es': 'Categoría',
      'fr': 'Catégorie',
    },
    '9zxh3k8s': {
      'en': 'Included documents',
      'es': 'Documentos incluidos',
      'fr': 'Documents inclus',
    },
    '8dpf80z4': {
      'en': 'Each member can store 75 documents',
      'es': 'Cada miembro puede almacenar 75 documentos',
      'fr': 'Chaque membre peut stocker 75 documents',
    },
    '56wdwv00': {
      'en': '75 x 4 ',
      'es': '75x4',
      'fr': '75 × 4',
    },
    '2bbuugnk': {
      'en': 'Max document size',
      'es': 'Tamaño máximo de documento',
      'fr': 'Taille maximale du document',
    },
    'av9dkv0f': {
      'en': 'Your documents can weigh up to 5 MB each',
      'es': 'Tus documentos pueden pesar hasta 5 MB cada uno',
      'fr': 'Vos documents peuvent peser jusqu\'à 5 Mo chacun',
    },
    'jr29we1u': {
      'en': 'Access from',
      'es': 'Acceso desde',
      'fr': 'Accès depuis',
    },
    'powwvta6': {
      'en': 'Smartphone',
      'es': 'teléfono inteligente',
      'fr': 'Téléphone intelligent',
    },
    '4k3zq5gk': {
      'en': 'Access and upload you documents from a smartphone',
      'es': 'Acceda y cargue sus documentos desde un teléfono inteligente',
      'fr': 'Accéder et télécharger vos documents depuis un smartphone',
    },
    '5ugj395m': {
      'en': '5 MD',
      'es': '5 MD',
      'fr': '5 MD',
    },
    'rv928oc3': {
      'en': 'Computer',
      'es': 'Computadora',
      'fr': 'Ordinateur',
    },
    'kexupvum': {
      'en': 'Access and upload you documents from a computer',
      'es': 'Acceda y cargue sus documentos desde una computadora',
      'fr': 'Accéder et télécharger vos documents depuis un ordinateur',
    },
    'czfx1lv6': {
      'en': 'Import from',
      'es': 'Importar de',
      'fr': 'Importer de',
    },
    'qgb1hmcj': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    '56gywn16': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'jgd99lpe': {
      'en': 'Camera',
      'es': 'Cámara',
      'fr': 'Caméra',
    },
    'm323y3vi': {
      'en': 'Import documents using the camera',
      'es': 'Importar documentos usando la cámara',
      'fr': 'Importer des documents à l\'aide de l\'appareil photo',
    },
    'kjlr1k0c': {
      'en': 'Optical Character Recognition ',
      'es': 'Reconocimiento óptico de caracteres',
      'fr': 'Reconnaissance optique de caractères',
    },
    'cbhqgow9': {
      'en': 'Apply optical character recognition on your documents ',
      'es': 'Aplique el reconocimiento óptico de caracteres en sus documentos',
      'fr':
          'Appliquez la reconnaissance optique des caractères sur vos documents',
    },
    'jcvzav3q': {
      'en': 'Export to',
      'es': 'Exportar a',
      'fr': 'Exporter vers',
    },
    'kdcja81a': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    'rbhvua7o': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'jw7rayt2': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    'csbvace6': {
      'en': 'Export documents to your emails',
      'es': 'Exportar documentos a sus correos electrónicos',
      'fr': 'Exportez des documents vers vos e-mails',
    },
    '53wn8d6j': {
      'en': 'Calender ',
      'es': 'Calandrar',
      'fr': 'Calandre',
    },
    'f0w3tscc': {
      'en': 'Export your documents to your calender',
      'es': 'Exporta tus documentos a tu calendario',
      'fr': 'Exportez vos documents vers votre calendrier',
    },
    'm5wqqpj8': {
      'en': 'Wallet',
      'es': 'Billetera',
      'fr': 'Portefeuille',
    },
    'cx25aiuy': {
      'en': 'Export your documents to your wallet',
      'es': 'Exporta tus documentos a tu monedero',
      'fr': 'Exportez vos documents vers votre portefeuille',
    },
    '7d4qwul7': {
      'en': 'Personalization',
      'es': 'Personalización',
      'fr': 'Personnalisation',
    },
    '3pv97cg1': {
      'en': 'Document Categories',
      'es': 'Categorías de documentos',
      'fr': 'Catégories de documents',
    },
    'r6f36kww': {
      'en':
          'You have access to the default categories and you can create unlimited custom categories',
      'es':
          'Tiene acceso a las categorías predeterminadas y puede crear categorías personalizadas ilimitadas',
      'fr':
          'Vous avez accès aux catégories par défaut et vous pouvez créer un nombre illimité de catégories personnalisées',
    },
    'gg5wwb31': {
      'en': '∞ Custom',
      'es': '∞ Personalizado',
      'fr': '∞ Personnalisé',
    },
    '0xjtg3gk': {
      'en': 'Customization',
      'es': 'personalización',
      'fr': 'Personnalisation',
    },
    '1gu2ypr8': {
      'en': 'You can customize and organize your folder as desired',
      'es': 'Puede personalizar y organizar su carpeta como desee',
      'fr':
          'Vous pouvez personnaliser et organiser votre dossier comme vous le souhaitez',
    },
    'gflz1pwh': {
      'en': 'Widget',
      'es': 'Widget',
      'fr': 'Widget',
    },
    'c0tpfyn5': {
      'en': 'You get Sleeq widget for your home screen',
      'es': 'Obtienes el widget Sleeq para tu pantalla de inicio',
      'fr': 'Vous obtenez le widget Sleeq pour votre écran d\'accueil',
    },
  },
  // PlanPlus
  {
    '3bmwaqdo': {
      'en': 'Sleeq Plus',
      'es': 'elegante más',
      'fr': 'Sleeq Plus',
    },
    'un4s5v2h': {
      'en': 'For storage fans',
      'es': 'Para ventiladores de almacenamiento',
      'fr': 'Pour les ventilateurs de stockage',
    },
    'hwl466l9': {
      'en': '10.99 € per month',
      'es': '10,99 € al mes',
      'fr': '10,99 € par mois',
    },
    'c7sw9r7d': {
      'en': 'Category',
      'es': 'Categoría',
      'fr': 'Catégorie',
    },
    'y1jfj8f2': {
      'en': 'Included documents',
      'es': 'Documentos incluidos',
      'fr': 'Documents inclus',
    },
    'xgbxty2i': {
      'en': 'You can store as many documents as desired',
      'es': 'Puede almacenar tantos documentos como desee',
      'fr': 'Vous pouvez stocker autant de documents que vous le souhaitez',
    },
    'xyhqlqp4': {
      'en': '∞',
      'es': '∞',
      'fr': '∞',
    },
    'zojsbwug': {
      'en': 'Max document size',
      'es': 'Tamaño máximo de documento',
      'fr': 'Taille maximale du document',
    },
    'fzp2waka': {
      'en': 'Your documents can weigh up to 50 MB each',
      'es': 'Tus documentos pueden pesar hasta 50 MB cada uno',
      'fr': 'Vos documents peuvent peser jusqu\'à 50 Mo chacun',
    },
    'u6enclmq': {
      'en': 'Access from',
      'es': 'Acceso desde',
      'fr': 'Accès depuis',
    },
    '5h3a9jj2': {
      'en': 'Smartphone',
      'es': 'teléfono inteligente',
      'fr': 'Téléphone intelligent',
    },
    'pevy9qwl': {
      'en': 'Access and upload you documents from a smartphone',
      'es': 'Acceda y cargue sus documentos desde un teléfono inteligente',
      'fr': 'Accéder et télécharger vos documents depuis un smartphone',
    },
    '6rgevgae': {
      'en': '5 MD',
      'es': '5 MD',
      'fr': '5 MD',
    },
    'ndemd64w': {
      'en': 'Computer',
      'es': 'Computadora',
      'fr': 'Ordinateur',
    },
    '1bp1m3aj': {
      'en': 'Access and upload you documents from a computer',
      'es': 'Acceda y cargue sus documentos desde una computadora',
      'fr': 'Accéder et télécharger vos documents depuis un ordinateur',
    },
    '5f4v1b7g': {
      'en': 'Import from',
      'es': 'Importar de',
      'fr': 'Importer de',
    },
    'x7mlky96': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    'o20ryzgf': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'qbords3x': {
      'en': 'Camera',
      'es': 'Cámara',
      'fr': 'Caméra',
    },
    '9ehfx6qs': {
      'en': 'Import documents using the camera',
      'es': 'Importar documentos usando la cámara',
      'fr': 'Importer des documents à l\'aide de l\'appareil photo',
    },
    '04j6sacv': {
      'en': 'Optical Character Recognition ',
      'es': 'Reconocimiento óptico de caracteres',
      'fr': 'Reconnaissance optique de caractères',
    },
    '3yzb3g7m': {
      'en': 'Apply optical character recognition on your documents ',
      'es': 'Aplique el reconocimiento óptico de caracteres en sus documentos',
      'fr':
          'Appliquez la reconnaissance optique des caractères sur vos documents',
    },
    'an9ij6vt': {
      'en': 'Export to',
      'es': 'Exportar a',
      'fr': 'Exporter vers',
    },
    'zhfb9fuj': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    '7slc315w': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    '7jds73k6': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    'yjp7honc': {
      'en': 'Export documents to your emails',
      'es': 'Exportar documentos a sus correos electrónicos',
      'fr': 'Exportez des documents vers vos e-mails',
    },
    '719sr3dv': {
      'en': 'Calender ',
      'es': 'Calandrar',
      'fr': 'Calandre',
    },
    'rpog2rsf': {
      'en': 'Export your documents to your calender',
      'es': 'Exporta tus documentos a tu calendario',
      'fr': 'Exportez vos documents vers votre calendrier',
    },
    'va46hbu0': {
      'en': 'Wallet',
      'es': 'Billetera',
      'fr': 'Portefeuille',
    },
    'px1f63ym': {
      'en': 'Export your documents to your wallet',
      'es': 'Exporta tus documentos a tu monedero',
      'fr': 'Exportez vos documents vers votre portefeuille',
    },
    '23fdnpjv': {
      'en': 'Personalization',
      'es': 'Personalización',
      'fr': 'Personnalisation',
    },
    '5mo9tety': {
      'en': 'Document Categories',
      'es': 'Categorías de documentos',
      'fr': 'Catégories de documents',
    },
    'tkdvz9vq': {
      'en':
          'You have access to the default categories and you can create unlimited custom categories',
      'es':
          'Tiene acceso a las categorías predeterminadas y puede crear categorías personalizadas ilimitadas',
      'fr':
          'Vous avez accès aux catégories par défaut et vous pouvez créer un nombre illimité de catégories personnalisées',
    },
    'escze8pn': {
      'en': '∞ Custom',
      'es': '∞ Personalizado',
      'fr': '∞ Personnalisé',
    },
    'rh95gb3q': {
      'en': 'Customization',
      'es': 'personalización',
      'fr': 'Personnalisation',
    },
    'ospfoqvv': {
      'en': 'You can customize and organize your folder as desired',
      'es': 'Puede personalizar y organizar su carpeta como desee',
      'fr':
          'Vous pouvez personnaliser et organiser votre dossier comme vous le souhaitez',
    },
    'brss592u': {
      'en': 'Widget',
      'es': 'Widget',
      'fr': 'Widget',
    },
    '6bojlfsb': {
      'en': 'You get Sleeq widget for your home screen',
      'es': 'Obtienes el widget Sleeq para tu pantalla de inicio',
      'fr': 'Vous obtenez le widget Sleeq pour votre écran d\'accueil',
    },
  },
  // PlanArchive
  {
    're3qvhr4': {
      'en': 'Sleeq Archive',
      'es': 'Archivo Sleeq',
      'fr': 'Archives Sleeq',
    },
    'r5g5f2lz': {
      'en': 'Decent storage for a small price',
      'es': 'Almacenamiento decente por un pequeño precio',
      'fr': 'Stockage décent pour un petit prix',
    },
    '2b1lz4ye': {
      'en': '4.99 € per month',
      'es': '4,99 € al mes',
      'fr': '4,99 € par mois',
    },
    'vj8fbnmz': {
      'en': 'Category',
      'es': 'Categoría',
      'fr': 'Catégorie',
    },
    'ug3oa3jk': {
      'en': 'Included documents',
      'es': 'Documentos incluidos',
      'fr': 'Documents inclus',
    },
    'drjdhz61': {
      'en': 'You can store up to 75 documents',
      'es': 'Puede almacenar hasta 75 documentos',
      'fr': 'Vous pouvez stocker jusqu\'à 75 documents',
    },
    'l44xqb9s': {
      'en': '75',
      'es': '75',
      'fr': '75',
    },
    '0zsr1nrw': {
      'en': 'Max document size',
      'es': 'Tamaño máximo de documento',
      'fr': 'Taille maximale du document',
    },
    '5croalt7': {
      'en': 'Your documents can weigh up to 20 MB each',
      'es': 'Tus documentos pueden pesar hasta 20 MB cada uno',
      'fr': 'Vos documents peuvent peser jusqu\'à 20 Mo chacun',
    },
    'vgwduac3': {
      'en': 'Access from',
      'es': 'Acceso desde',
      'fr': 'Accès depuis',
    },
    'jbk7glc8': {
      'en': 'Smartphone',
      'es': 'teléfono inteligente',
      'fr': 'Téléphone intelligent',
    },
    'euze2v5a': {
      'en': 'Access and upload you documents from a smartphone',
      'es': 'Acceda y cargue sus documentos desde un teléfono inteligente',
      'fr': 'Accéder et télécharger vos documents depuis un smartphone',
    },
    'ks70ydqf': {
      'en': '5 MD',
      'es': '5 MD',
      'fr': '5 MD',
    },
    '3azx0u2x': {
      'en': 'Computer',
      'es': 'Computadora',
      'fr': 'Ordinateur',
    },
    '0s0wclvb': {
      'en': 'Access and upload you documents from a computer',
      'es': 'Acceda y cargue sus documentos desde una computadora',
      'fr': 'Accéder et télécharger vos documents depuis un ordinateur',
    },
    '92fnqc1f': {
      'en': 'Import from',
      'es': 'Importar de',
      'fr': 'Importer de',
    },
    'm3z6fclk': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    '2jnbi3st': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'ncmbarke': {
      'en': 'Camera',
      'es': 'Cámara',
      'fr': 'Caméra',
    },
    'p7a79qcz': {
      'en': 'Import documents using the camera',
      'es': 'Importar documentos usando la cámara',
      'fr': 'Importer des documents à l\'aide de l\'appareil photo',
    },
    'avnxvq63': {
      'en': 'Optical Character Recognition ',
      'es': 'Reconocimiento óptico de caracteres',
      'fr': 'Reconnaissance optique de caractères',
    },
    'dv9f17rt': {
      'en': 'Apply optical character recognition on your documents ',
      'es': 'Aplique el reconocimiento óptico de caracteres en sus documentos',
      'fr':
          'Appliquez la reconnaissance optique des caractères sur vos documents',
    },
    '5bk7nrji': {
      'en': 'Export to',
      'es': 'Exportar a',
      'fr': 'Exporter vers',
    },
    'v4xbu2xt': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    'lvwe4utf': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    'cuefj49n': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    'wvpv9n67': {
      'en': 'Export documents to your emails',
      'es': 'Exportar documentos a sus correos electrónicos',
      'fr': 'Exportez des documents vers vos e-mails',
    },
    '77qnp8cg': {
      'en': 'Calender ',
      'es': 'Calandrar',
      'fr': 'Calandre',
    },
    'my5st8f4': {
      'en': 'Export your documents to your calender',
      'es': 'Exporta tus documentos a tu calendario',
      'fr': 'Exportez vos documents vers votre calendrier',
    },
    'iqllvw56': {
      'en': 'Wallet',
      'es': 'Billetera',
      'fr': 'Portefeuille',
    },
    'kddue9ok': {
      'en': 'Export your documents to your wallet',
      'es': 'Exporta tus documentos a tu monedero',
      'fr': 'Exportez vos documents vers votre portefeuille',
    },
    '43izaoi3': {
      'en': 'Personalization',
      'es': 'Personalización',
      'fr': 'Personnalisation',
    },
    '7b7e09j6': {
      'en': 'Document Categories',
      'es': 'Categorías de documentos',
      'fr': 'Catégories de documents',
    },
    '0c6q1mfe': {
      'en':
          'You have access to the default categories and you can create 5 custom categories',
      'es':
          'Tiene acceso a las categorías predeterminadas y puede crear 5 categorías personalizadas',
      'fr':
          'Vous avez accès aux catégories par défaut et vous pouvez créer 5 catégories personnalisées',
    },
    'zg1fj66z': {
      'en': '5 Customs',
      'es': '5 Aduanas',
      'fr': '5 Douanes',
    },
    'xttatbp2': {
      'en': 'Customization',
      'es': 'personalización',
      'fr': 'Personnalisation',
    },
    'yrhf8jfc': {
      'en': 'You can customize and organize your folder as desired',
      'es': 'Puede personalizar y organizar su carpeta como desee',
      'fr':
          'Vous pouvez personnaliser et organiser votre dossier comme vous le souhaitez',
    },
    '6wzoo91e': {
      'en': 'Widget',
      'es': 'Widget',
      'fr': 'Widget',
    },
    '11awx8jd': {
      'en': 'You get Sleeq widget for your home screen',
      'es': 'Obtienes el widget Sleeq para tu pantalla de inicio',
      'fr': 'Vous obtenez le widget Sleeq pour votre écran d\'accueil',
    },
  },
  // PlanStudent
  {
    'bb7id06n': {
      'en': 'Sleeq Student',
      'es': 'estudiante elegante',
      'fr': 'Étudiant élégant',
    },
    'c31nowtx': {
      'en': 'Many features for a small price',
      'es': 'Muchas características por un pequeño precio',
      'fr': 'De nombreuses fonctionnalités pour un petit prix',
    },
    '5tex9jfw': {
      'en': '14.99 € per month',
      'es': '14,99 € al mes',
      'fr': '14,99 € par mois',
    },
    'mxwifify': {
      'en': 'Category',
      'es': 'Categoría',
      'fr': 'Catégorie',
    },
    'd9b1odoq': {
      'en': 'Included documents',
      'es': 'Documentos incluidos',
      'fr': 'Documents inclus',
    },
    '7vil3t1d': {
      'en': 'You can store up to 100 documents',
      'es': 'Puede almacenar hasta 100 documentos',
      'fr': 'Vous pouvez stocker jusqu\'à 100 documents',
    },
    'yqf4zs3l': {
      'en': '100',
      'es': '100',
      'fr': '100',
    },
    'k9lumfq7': {
      'en': 'Max document size',
      'es': 'Tamaño máximo de documento',
      'fr': 'Taille maximale du document',
    },
    '0anlw2m2': {
      'en': 'Your documents can weigh up to 5 MB each',
      'es': 'Tus documentos pueden pesar hasta 5 MB cada uno',
      'fr': 'Vos documents peuvent peser jusqu\'à 5 Mo chacun',
    },
    '7yt49vaz': {
      'en': 'Access from',
      'es': 'Acceso desde',
      'fr': 'Accès depuis',
    },
    '4wkelm0f': {
      'en': 'Smartphone',
      'es': 'teléfono inteligente',
      'fr': 'Téléphone intelligent',
    },
    'pbeh9iii': {
      'en': 'Access and upload you documents from a smartphone',
      'es': 'Acceda y cargue sus documentos desde un teléfono inteligente',
      'fr': 'Accéder et télécharger vos documents depuis un smartphone',
    },
    'ebv8n144': {
      'en': '5 MD',
      'es': '5 MD',
      'fr': '5 MD',
    },
    '6cgo24rs': {
      'en': 'Computer',
      'es': 'Computadora',
      'fr': 'Ordinateur',
    },
    '7sovou5s': {
      'en': 'Access and upload you documents from a computer',
      'es': 'Acceda y cargue sus documentos desde una computadora',
      'fr': 'Accéder et télécharger vos documents depuis un ordinateur',
    },
    'k5ag7fe4': {
      'en': 'Import from',
      'es': 'Importar de',
      'fr': 'Importer de',
    },
    'rllvs78e': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    '1m2xj6oh': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    '1gglv62l': {
      'en': 'Camera',
      'es': 'Cámara',
      'fr': 'Caméra',
    },
    'vtx2ue6m': {
      'en': 'Import documents using the camera',
      'es': 'Importar documentos usando la cámara',
      'fr': 'Importer des documents à l\'aide de l\'appareil photo',
    },
    'kf8jmc47': {
      'en': 'Optical Character Recognition ',
      'es': 'Reconocimiento óptico de caracteres',
      'fr': 'Reconnaissance optique de caractères',
    },
    's4wqv3pq': {
      'en': 'Apply optical character recognition on your documents ',
      'es': 'Aplique el reconocimiento óptico de caracteres en sus documentos',
      'fr':
          'Appliquez la reconnaissance optique des caractères sur vos documents',
    },
    '5uaipt2p': {
      'en': 'Export to',
      'es': 'Exportar a',
      'fr': 'Exporter vers',
    },
    '74uaefdp': {
      'en': 'Folder',
      'es': 'Carpeta',
      'fr': 'Dossier',
    },
    'fceqwbsp': {
      'en': 'Import documents from your folder',
      'es': 'Importa documentos desde tu carpeta',
      'fr': 'Importer des documents depuis votre dossier',
    },
    '3fxzcrbv': {
      'en': 'Email',
      'es': 'Correo electrónico',
      'fr': 'E-mail',
    },
    '56rz3w7u': {
      'en': 'Export documents to your emails',
      'es': 'Exportar documentos a sus correos electrónicos',
      'fr': 'Exportez des documents vers vos e-mails',
    },
    'ts1o86nv': {
      'en': 'Calender ',
      'es': 'Calandrar',
      'fr': 'Calandre',
    },
    '97wruv5e': {
      'en': 'Export your documents to your calender',
      'es': 'Exporta tus documentos a tu calendario',
      'fr': 'Exportez vos documents vers votre calendrier',
    },
    '8uhhwx1v': {
      'en': 'Wallet',
      'es': 'Billetera',
      'fr': 'Portefeuille',
    },
    '5gep6hdl': {
      'en': 'Export your documents to your wallet',
      'es': 'Exporta tus documentos a tu monedero',
      'fr': 'Exportez vos documents vers votre portefeuille',
    },
    'myngt3bx': {
      'en': 'Personalization',
      'es': 'Personalización',
      'fr': 'Personnalisation',
    },
    'ojswo6eu': {
      'en': 'Document Categories',
      'es': 'Categorías de documentos',
      'fr': 'Catégories de documents',
    },
    '6t59bewu': {
      'en':
          'You have access to the default categories and you can create 5 custom categories',
      'es':
          'Tiene acceso a las categorías predeterminadas y puede crear 5 categorías personalizadas',
      'fr':
          'Vous avez accès aux catégories par défaut et vous pouvez créer 5 catégories personnalisées',
    },
    'g1li076p': {
      'en': '5 Customs',
      'es': '5 Aduanas',
      'fr': '5 Douanes',
    },
    'ifwb6dya': {
      'en': 'Customization',
      'es': 'personalización',
      'fr': 'Personnalisation',
    },
    'v1c2kqpt': {
      'en': 'You can customize and organize your folder as desired',
      'es': 'Puede personalizar y organizar su carpeta como desee',
      'fr':
          'Vous pouvez personnaliser et organiser votre dossier comme vous le souhaitez',
    },
    'kyu1zfnx': {
      'en': 'Widget',
      'es': 'Widget',
      'fr': 'Widget',
    },
    'etldstjk': {
      'en': 'You get Sleeq widget for your home screen',
      'es': 'Obtienes el widget Sleeq para tu pantalla de inicio',
      'fr': 'Vous obtenez le widget Sleeq pour votre écran d\'accueil',
    },
  },
  // newButton
  {
    'x90ppz22': {
      'en': 'New',
      'es': 'Nuevo',
      'fr': 'Nouveau',
    },
  },
  // NavigationTree
  {
    'qzt8poeb': {
      'en': 'Select a folder',
      'es': 'Seleccione una carpeta',
      'fr': 'Sélectionnez un dossier',
    },
    'dhzgkq27': {
      'en': 'path',
      'es': 'camino',
      'fr': 'chemin',
    },
    'mwjwax1v': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'fr': 'Annuler',
    },
    '9chr0yeh': {
      'en': 'Select',
      'es': 'Seleccionar',
      'fr': 'Sélectionner',
    },
  },
  // Miscellaneous
  {
    'j2dxl22u': {
      'en': 'Label here...',
      'es': '',
      'fr': '',
    },
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
    'v8sb7u0m': {
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
