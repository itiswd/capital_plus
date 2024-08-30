import '../models/company_information_model.dart';
import 'package:capital_plus/features/cards/data/models/trailing_model.dart';
import 'package:capital_plus/features/cards/data/models/company_data_model.dart';

List<CompanyDataModel> companyData = [
  CompanyDataModel(
      companyInformationModel: CompanyInformationModel(
        subtitle:"Apple Inc. - is an American multinational corporation that develops and sells consumer electronics, software, and online services. The company is best known for its products such as the iPhone, iPad, Mac, Apple Watch, and Apple TV. Apple also provides software, including iOS, macOS operating systems, and services such as Apple Music, iCloud, and the App Store. The company is headquartered in Cupertino, California.",
        fullTimeEmployees: "161,000",
        sector: "Technology",
      ),
      companyHistory:"Apple was founded in 1976 by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company's first product, the Apple I, came in the form of a computer that was sold as an assembly kit. In 1980, Apple became a publicly traded company, and since then it has experienced many ups and downs, including the return of Steve Jobs in 1997, which led to a rebirth of the company. In 2007, Apple released the first iPhone, which changed the mobile technology industry forever.",
      interstingFacts:"Apple was the first company to reach a market capitalization of one trillion dollars in August 2018. This historic milestone was achieved due to successful iPhone sales and revenue growth from services such as the App Store and iCloud. Reaching one trillion dollars made Apple the most valuable company in the world at the time, reflecting its huge impact on the global economy and technology.",
      trailingModel: TrailingModel(
        subtitle:"Trailing total returns as of 8/23/2024, which may include dividends or other distributions. Benchmark is S&P 500.",
        yearReturn1: YearReturn(
            nameofCompany: "AAPL", rateofCompany: 26.58, rateofS$P500: 27.58),
        yearReturn3: YearReturn(
            nameofCompany: "AAPL", rateofCompany: 57.19, rateofS$P500: 25.01),
        yearReturn5: YearReturn(
            nameofCompany: "AAPL", rateofCompany: 385.97, rateofS$P500: 97.42),
      )),
    CompanyDataModel(
      companyInformationModel: CompanyInformationModel(
        subtitle:"Amazon.com, Inc. - is one of the world's largest companies specializing in e-commerce, cloud computing, artificial intelligence, and digital streaming. The company was founded by Jeff Bezos in 1994 and began as an online bookstore. Today, Amazon offers a wide range of products and services, including a platform for third-party sellers, streaming services Amazon Prime Video, Amazon Music, and Amazon Web Services (AWS), a leading cloud platform.",
        fullTimeEmployees: "1,525,000",
        sector: "Consumer Cyclical",
      ),
      companyHistory:"Amazon began in 1994 as an online bookstore, operating out of Jeff Bezos' garage in Seattle. Bezos chose the name “Amazon” after the largest river in the world to emphasize the scale of the company. By 1997, Amazon became a publicly traded company, and by the late 1990s, the company had expanded into selling electronics, toys, and other products. In the 2000s, Amazon continued to grow by launching its AWS cloud platform, which was a key factor in its success.",
      interstingFacts:"Amazon Prime, launched in 2005, has been a key growth driver for the company, offering users free shipping and access to a wide range of digital services for a flat annual fee. As of 2023, more than 200 million people worldwide are subscribed to Amazon Prime. The service has significantly increased customer loyalty, boosted sales revenue and enabled Amazon to dominate the e-commerce industry.",
      trailingModel: TrailingModel(
        subtitle:"Trailing total returns as of 8/23/2024, which may include dividends or other distributions. Benchmark is S&P 500.",
        yearReturn1: YearReturn(
            nameofCompany: "AMZN", rateofCompany: 31.79, rateofS$P500:27.51 ),
        yearReturn3: YearReturn(
            nameofCompany: "AMZN", rateofCompany: 6.47, rateofS$P500: 24.95),
        yearReturn5: YearReturn(
            nameofCompany: "AMZN", rateofCompany: 100.76, rateofS$P500: 97.32),
      )),
    CompanyDataModel(
      companyInformationModel: CompanyInformationModel(
        subtitle:"Google LLC is an American technology company that is one of the world's leading corporations in Internet services and products. Founded in 1998 by Larry Page and Sergey Brin, the company is best known for its Google search engine, which processes billions of searches per day. In addition to search, Google offers a wide range of products and services, including the Android operating system, the Chrome browser, the Gmail email service, and the YouTube video hosting platform.",
        fullTimeEmployees: "179,582",
        sector: "Communication Services",
      ),
      companyHistory:"Google's history began in 1996 when Larry Page and Sergey Brin, graduate students at Stanford University, began working on a search engine project called “BackRub”. In 1998, they founded Google Inc. with the goal of organizing the world's information and making it accessible to all. The rapid development of the search engine led to the growth of the company, and in 2004 Google held its IPO, becoming a public company. Today, Google is part of the holding company Alphabet Inc. which brings together various businesses and innovative projects.",
      interstingFacts:"The name “Google” comes from the mathematical term “googol” (googol), which means a number with one and one hundred zeros. This name was chosen to reflect the company's mission to organize the vast amount of information available on the internet. The domain name “google.com” was originally registered in 1997, and since then it has become one of the most recognizable brands in the world.",
      trailingModel: TrailingModel(
        subtitle:"Trailing total returns as of 8/26/2024, which may include dividends or other distributions. Benchmark is S&P 500",
        yearReturn1: YearReturn(
            nameofCompany: "GOOG", rateofCompany: 28.24, rateofS$P500: 27.56),
        yearReturn3: YearReturn(
            nameofCompany: "GOOG", rateofCompany: 17.24, rateofS$P500: 24.99),
        yearReturn5: YearReturn(
            nameofCompany: "GOOG", rateofCompany: 191.15, rateofS$P500: 97.39),
      )),
    CompanyDataModel(
      companyInformationModel: CompanyInformationModel(
        subtitle:"Microsoft Corporation is an American multinational technology company that develops, licenses, and sells software, consumer electronics, and personal computers. Best known for its software products like the Windows operating system, Microsoft Office suite, and the Internet Explorer and Edge web browsers. Microsoft also manufactures hardware such as the Xbox gaming consoles and Surface tablets. The company is headquartered in Redmond, Washington.",
        fullTimeEmployees: "228,000",
        sector: "Technology",
      ),
      companyHistory:"Microsoft was founded in 1975 by Bill Gates and Paul Allen. The company gained prominence with the launch of the MS-DOS operating system in the 1980s, followed by the success of Windows in the 1990s. Over the years, Microsoft has diversified into other markets, including cloud computing with its Azure platform and gaming with Xbox. Today, it is one of the largest technology companies in the world.",
      interstingFacts:"In 1986, Microsoft went public and its IPO made several employees millionaires. Bill Gates became the youngest billionaire in the world at the time, at just 31 years old. Today, Microsoft is one of the few companies with a market capitalization exceeding \$2 trillion.",
      trailingModel: TrailingModel(
        subtitle:"Trailing total returns as of 8/26/2024, which may include dividends or other distributions. Benchmark is S&P 500.",
        yearReturn1: YearReturn(
            nameofCompany: "MSFT", rateofCompany: 29.17, rateofS$P500: 27.61),
        yearReturn3: YearReturn(
            nameofCompany: "MSFT", rateofCompany: 40.64, rateofS$P500: 25.04),
        yearReturn5: YearReturn(
            nameofCompany: "MSFT", rateofCompany: 225.00, rateofS$P500: 97.47),
      )),
];


      //  CompanyDataModel(
      // companyInformationModel: CompanyInformationModel(
      //   subtitle:"",
      //   fullTimeEmployees: "",
      //   sector: "",
      // ),
      // companyHistory:"",
      // interstingFacts:"",
      // trailingModel: TrailingModel(
      //   subtitle:"",
      //   yearReturn1: YearReturn(
      //       nameofCompany: "", rateofCompany: 26.58, rateofS$P500: 27.58),
      //   yearReturn3: YearReturn(
      //       nameofCompany: "", rateofCompany: 57.19, rateofS$P500: 25.01),
      //   yearReturn5: YearReturn(
      //       nameofCompany: "", rateofCompany: 385.97, rateofS$P500: 97.42),
      // )),