import 'package:flutter/material.dart';


class ColorsTheme{
  static const Color primary = const Color(0xFFED3456);
  static const Color secondary = const Color(0xFF202426);

  static const Color backgroundLight = const Color(0xFFE5E5E5);
  static const Color backgroundDark = const Color(0xFF212529);

  static const Color warning = const Color(0xFFFFBB02);
  static const Color warningBG = const Color(0xFFFFFCF5);
  static const Color confirm = const Color(0xFF00CB77);
  static const Color confirmBG = const Color(0xFFEBFFF7);
  static const Color danger = const Color(0xFFFF1C16);
  static const Color dangerBG = const Color(0xFFFEECEB);

  static const MaterialColor shadesOfGray = const MaterialColor(
    0xFFF8F9FA,
    <int, Color>{
      50: Color(0xFFF8F9FA),
      100: Color(0xFFE9ECEF),
      200: Color(0xFFDEE2E6),
      300: Color(0xFFCED4DA),
      400: Color(0xFFADB5BD),
      500: Color(0xFF6C757C),
      600: Color(0xFF495057),
      700: Color(0xFF495057),
      800: Color(0xFF212529),
      900: Color(0xFF162024)
    },
  );
}



extension WallaceStringExtension on String {
  i18n({String lang = 'pt-br'}) {
    Map<String, Map<String, String>> dic = {
      "WELLCOME": {
        "pt-br": "Bem Vindo",
        "en-us": "Welcome",
        "es-mx": "Bien Venido"
      },
      "NOW": {
        "pt-br": "Agora",
        "en-us": "Now",
        "es-mx": "Ahora"
      }
    };
    return dic[this][lang];
  }
}





extension WallaceExtession on Text {


  Text h1({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.02,
      color: ColorsTheme.shadesOfGray[50],
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }






  Text h2({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      // fontFamily: 'Nunito_Sans',
      fontSize: 22,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      // height: 30,
      letterSpacing: -0.02,
      color: ColorsTheme.shadesOfGray[50],
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h3({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      // fontFamily: 'Lora',
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      // height: 24,
      color: ColorsTheme.shadesOfGray,
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h4({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      // fontFamily: 'Nunito_Sans',
      fontSize: 12,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      // height: 22,
      color: ColorsTheme.shadesOfGray[400],
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h5({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      // fontFamily: 'Nunito_Sans',
      fontSize: 18,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
      // height: 22,
      color: ColorsTheme.shadesOfGray[50],
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h6({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      // fontFamily: 'Nunito_Sans',
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
      // height: 22,
      color: ColorsTheme.shadesOfGray[500],
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h7({TextStyle style}) {
    TextStyle defaultStyle = TextStyle(
      // fontFamily: 'Nunito_Sans',
      fontSize: 13,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
      // height: 22,
      color: ColorsTheme.shadesOfGray[50],
    );
    return Text(this.data,
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }
}
