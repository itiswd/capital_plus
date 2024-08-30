import '../models/company_information_model.dart';
import 'package:capital_plus/features/cards/data/models/trailing_model.dart';
import 'package:capital_plus/features/cards/data/models/company_data_model.dart';

List<CompanyDataModel> companyData = [
  CompanyDataModel(
      companyInformationModel: CompanyInformationModel(
        subtitle:
            "Apple Inc. - is an American multinational corporation that develops and sells consumer electronics, software, and online services. The company is best known for its products such as the iPhone, iPad, Mac, Apple Watch, and Apple TV. Apple also provides software, including iOS, macOS operating systems, and services such as Apple Music, iCloud, and the App Store. The company is headquartered in Cupertino, California",
        fullTimeEmployees: "161,000",
        sector: "Technology",
      ),
      companyHistory:
          "Apple was founded in 1976 by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company's first product, the Apple I, came in the form of a computer that was sold as an assembly kit. In 1980, Apple became a publicly traded company, and since then it has experienced many ups and downs, including the return of Steve Jobs in 1997, which led to a rebirth of the company. In 2007, Apple released the first iPhone, which changed the mobile technology industry forever",
      interstingFacts:
          "Apple was the first company to reach a market capitalization of one trillion dollars in August 2018. This historic milestone was achieved due to successful iPhone sales and revenue growth from services such as the App Store and iCloud. Reaching one trillion dollars made Apple the most valuable company in the world at the time, reflecting its huge impact on the global economy and technology.",
      trailingModel: TrailingModel(
        subtitle:
            "Trailing total returns as of 8/23/2024, which may include dividends or other distributions. Benchmark is S&P 500",
        yearReturn1: YearReturn(
            nameofCompany: "AAPL", rateofCompany: 26.58, rateofS$P500: 27.58),
        yearReturn2: YearReturn(
            nameofCompany: "AAPL", rateofCompany: 57.19, rateofS$P500: 25.01),
        yearReturn3: YearReturn(
            nameofCompany: "AAPL", rateofCompany: 385.97, rateofS$P500: 97.42),
      )),
];
