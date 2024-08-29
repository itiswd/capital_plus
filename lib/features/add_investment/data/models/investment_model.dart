class InvestmentModel {
  final String investmentCategory;
  final String investmentName;
  final String investmentDate;
  final String investmentAmount;
  final String? description;
  final String? interest;
  final String? riskRating;
  final String? expectedReturn;

  InvestmentModel(
      {required this.investmentCategory,
      required this.investmentName,
      required this.investmentDate,
      required this.investmentAmount,
      required this.description,
      required this.interest,
      required this.riskRating,
      required this.expectedReturn});
}
