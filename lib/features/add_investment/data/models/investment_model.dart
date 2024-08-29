import 'package:hive/hive.dart';
part 'investment_model.g.dart';

@HiveType(typeId: 0)
class InvestmentModel {
  @HiveField(0)
  final String investmentCategory;
  @HiveField(1)
  final String investmentName;
  @HiveField(2)
  final String investmentDate;
  @HiveField(3)
  final String investmentAmount;
  @HiveField(4)
  final String? description;
  @HiveField(5)
  final String? interest;
  @HiveField(6)
  final String? riskRating;
  @HiveField(7)
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
