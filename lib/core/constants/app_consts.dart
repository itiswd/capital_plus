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
  'Mo': 200,
  'Tu': 250,
  'We': 300,
  'Th': 400,
  'Fr': 400,
  'Sa': 150,
  'Su': 100,
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

final Map<String, List<String>> vocabulary = {
  'title': [
    'Asset',
    'Diversification',
    'Liquidity',
    'Volatility',
    'Stock Market',
    'Index',
    'Share (Stock)',
    'Bond',
    'Dividends',
    'Bear Market',
    'Bull Market',
    'Portfolio',
    'Risk',
    'Risk\nManagement',
    'Market\nCapitalization',
    'Hedging',
    'IPO (Initial\nPublic Offering)',
    'ETF\n(Exchange-\nTraded Fund) ',
    'Duration',
    'Index Fund',
    'P/E Ratio\n(Price-to-\nEarnings Ratio)',
    'Dividend Yield',
    'Advance Taxes\n(Capital\nGains Tax)',
    'Book Value',
    'Margin Trading',
  ],
  'desc': [
    'A resource that is owned by a company or investor and has economic value. It can be cash, stocks, bonds, real estate and other forms of property.',
    'A strategy of allocating investments among different assets to reduce risk. Diversification reduces the likelihood of significant losses.',
    'The ability of an asset to be sold quickly. The ability of an asset to be sold or exchanged for cash quickly without significant loss of value. The higher the liquidity, the easier the asset can be sold.',
    'A measure of the fluctuations in the price of an asset over a period of time. High volatility indicates a greater degree of risk and the potential for large gains or losses.',
    'A platform for buying and selling shares of publicly traded companies. Includes exchanges such as the New York Stock Exchange (NYSE) and NASDAQ.',
    'A measure that reflects the average change in the price of a particular set of stocks or other assets. Examples include the S&P 500, Dow Jones, and NASDAQ Composite.',
    'An ownership interest in a company that entitles a share of its income and assets. The owner of the stock is a shareholder of the company.',
    'A debt instrument issued by a government or corporation to raise capital. Bonds provide for regular interest payments and return of face value at maturity.',
    'A portion of a company\'s profits distributed to shareholders. Payments may be regular or one-time.',
    'A situation in the stock market when prices of stocks or other assets are falling for an extended period of time. It usually indicates pessimism among investors.',
    'A period in the stock market when prices of stocks or other assets are rising for a long period of time. This indicates optimism among investors.',
    'A collection of all investments owned by one person or company. Includes stocks, bonds, real estate, and other assets.',
    'The probability that an investment will make a loss. Risk and return are usually in an inverse relationship: the higher the potential return, the higher the risk.',
    'The process of identifying, evaluating and taking action to reduce the risks associated with an investment. It includes diversification, hedging and insurance.',
    'The total value of all outstanding shares of a company\'s stock. Calculated as the price per share multiplied by the number of shares.',
    'A strategy to reduce risk by using derivative instruments such as options or futures to offset potential losses.',
    'The initial public offering of a company\'s shares on a stock exchange. It is the process by which a private company goes public by selling its shares to a wide range of investors.',
    'An exchange-traded fund that pools investors\' money to buy a set of assets such as stocks or bonds. An ETF is traded on an exchange like a regular stock.',
    'A measure of the sensitivity of a bond\'s value to changes in interest rates. The longer the duration, the greater the change in the value of the bond when the rate changes.',
    'An investment fund that seeks to replicate the composition and performance of a particular market index. It is a passive way of investing that reduces management costs.',
    'A financial ratio that is calculated as the ratio of a stock\'s market price to earnings per share. It is used to measure the value of a company.',
    'The percentage of annual dividends paid by a stock to its market price. It is a measure of the return investors receive from owning a stock.',
    'Taxes that are levied on gains from the sale of capital assets such as stocks or real estate. The amount of the tax depends on the length of time the asset is held and the tax rate.',
    'The value of a company based on its balance sheet. It includes the sum of all assets less liabilities. It is used to estimate the value of a company.',
    'The process of buying stocks using borrowed funds provided by a broker. Allows for increased purchasing power, but also increases the risk of loss.',
  ],
  'code': [
    "ˈæsɛt",
    "daɪˌvɜːsɪfɪˈkeɪʃᵊn",
    "lɪˈkwɪdəti",
    "ˌvɒləˈtɪləti",
    "stɒk ˈmɑːkɪt",
    "ˈɪndɛks",
    "ʃeə (stɒk)",
    "bɒnd",
    "ˈdɪvɪdɛndz",
    "beə ˈmɑːkɪt",
    "bʊl ˈmɑːkɪt",
    "ˌpɔːtˈfəʊliəʊ",
    "rɪsk",
    "rɪsk ˈmænɪʤmənt",
    "ˈmɑːkɪt\nˌkæpɪtᵊlaɪˈzeɪʃᵊn",
    "ˈhɛʤɪŋ",
    "aɪ-piː-əʊ (ɪˈnɪʃᵊl\nˈpʌblɪk ˈɒfᵊrɪŋ)",
    "iː-tiː-ɛf\n(ɪksˈʧeɪnʤ-\nˈtreɪdɪd fʌnd)",
    "djʊˈreɪʃᵊn",
    "ˈɪndɛks fʌnd",
    "piː/iː ˈreɪʃiəʊ\n(praɪs-tuː-\nˈɜːnɪŋz ˈreɪʃiəʊ)",
    "ˈdɪvɪdɛnd jiːld",
    "ədˈvɑːns\nˈtæksɪz (ˈkæpɪtᵊl\nɡeɪnz tæks)",
    "bʊk ˈvæljuː",
    "ˈmɑːʤɪn ˈtreɪdɪŋ",
  ],
};

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
