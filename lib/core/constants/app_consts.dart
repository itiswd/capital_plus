import 'package:intl/intl.dart';
import 'package:capital_plus/core/constants/app_assets.dart';

const String kIsOnBoardingView = 'isOnBoardingView';
const String kIsPrimium = 'isPrimium';
const String klistofCheckBox = 'listofCheckBox';
const double kHorizontalPadding = 16.0;
const String kInvestmentHiveBox = 'kInvestmentBox';
DateFormat dateFormat = DateFormat('dd-MM-yyyy');
String appFontMontserrat = 'Montserrat';
String appFontOutfit = 'Outfit';
Map<String, double> chartValues = {
  'Mo': 86,
  'Tu': 122,
  'We': 144,
  'Th': 152,
  'Fr': 132,
  'Sa': 66,
  'Su': 44,
};

final Map<String, String> investmentsIcons = {
  'Crypto Investment': Assets.iconsInvestmentCryptoIcon,
  'Cash Investment': Assets.iconsInvestmentCashIcon,
  'Stocks Investment': Assets.iconsInvestmentStocksIcon,
  'Bonds Investment': Assets.iconsInvestmentBondsIconicon,
  'Other Investment': Assets.iconsInvestmentOtherIcon,
};

final List<String> investmentCategories = [
  'Crypto Investment',
  'Cash Investment',
  'Stocks Investment',
  'Bonds Investment',
  'Other Investment'
];

final List<String> premiumList = [
  'A deeper definition of terms, examples from real practice.',
  'Access to original lessons from recognized financial market experts.',
  'Analytical reports to maintain desired asset ratio.',
];
final List<String> premiumActionTitles = [
  'Privacy Policy',
  'Restore',
  'Terms of Use',
];
