import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_resources.dart';

const latoLight = TextStyle(
  fontFamily: 'Lato',
  fontWeight: FontWeight.w400,
);
const latoRegular = TextStyle(
  fontFamily: 'Lato',
  fontWeight: FontWeight.w500,
);
const latoBold = TextStyle(
  fontFamily: 'Lato',
  fontWeight: FontWeight.w700,
);
const latoBlack = TextStyle(
  fontFamily: 'Lato',
  fontWeight: FontWeight.w900,
);

TextStyle style = GoogleFonts.lato(
  textStyle: const TextStyle(
    color: ColorResources.COLOR_TEXT,
    fontSize: 30,
    fontWeight: FontWeight.w700,
  ),
);
TextStyle offerStyle = GoogleFonts.lato(
  textStyle: const TextStyle(
    color: ColorResources.COLOR_WHITE,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
);

TextStyle gridStyle = GoogleFonts.lato(
  textStyle: style.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
);
