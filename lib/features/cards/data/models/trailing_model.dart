class TrailingModel {
  final String subtitle;
  final YearReturn yearReturn1;
  final YearReturn yearReturn3;
  final YearReturn yearReturn5;

  TrailingModel({
    required this.subtitle,
    required this.yearReturn1,
    required this.yearReturn3,
    required this.yearReturn5,
  });
}

class YearReturn {
  final String nameofCompany;
  final double rateofCompany;
  final double rateofS$P500;

  YearReturn(
      {required this.nameofCompany,
      required this.rateofCompany,
      required this.rateofS$P500});
}
