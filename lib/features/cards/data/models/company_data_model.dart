import 'package:capital_plus/features/cards/data/models/trailing_model.dart';
import 'package:capital_plus/features/cards/data/models/company_information_model.dart';


class CompanyDataModel {
  final  CompanyInformationModel companyInformationModel;
  final   String companyHistory;
  final   String interstingFacts;
  final   TrailingModel trailingModel;

  CompanyDataModel({required this.companyInformationModel, required this.companyHistory, required this.interstingFacts, required this.trailingModel});
}