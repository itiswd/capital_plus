import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/functions/validate_text_field.dart';
import 'package:capital_plus/features/add_investment/data/models/investment_model.dart';
import 'package:capital_plus/features/add_investment/presentation/views/widgets/add_investment_view_app_bar.dart';
import 'package:capital_plus/features/add_investment/presentation/views/widgets/custom_add_investment_text_field.dart';
import 'package:capital_plus/features/add_investment/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:svg_flutter/svg.dart';

class AddInvestmentBody extends StatefulWidget {
  const AddInvestmentBody({super.key});

  @override
  State<AddInvestmentBody> createState() => _AddInvestmentBodyState();
}

class _AddInvestmentBodyState extends State<AddInvestmentBody> {
  final TextEditingController _investmentCategoryController =
      TextEditingController();
  final TextEditingController _investmentNameController =
      TextEditingController();
  final TextEditingController _investmentDateController =
      TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _interestController = TextEditingController();
  final TextEditingController _riskRatingController = TextEditingController();
  final TextEditingController _expectedReturnController =
      TextEditingController();

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  void dispose() {
    _investmentNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Form(
            key: formState,
            child: Column(
              children: [
                SizedBox(height: 20.0.h),
                const AddInvestmentViewAppBar(),
                SizedBox(height: 10.h),
                CustomAddInvestmentTextField(
                  onTap: () => _showInvestmentCategoryDropdown(context),
                  labelText: 'Investment category',
                  readOnly: true,
                  validator: (val) {
                    return valiTextField(val!);
                  },
                  controller: _investmentCategoryController,
                  suffixIcon: SvgPicture.asset(
                    Assets.iconsArrowDown,
                    fit: BoxFit.contain,
                  ),
                  suffixIconConstraints: BoxConstraints(
                    maxHeight: 18.h,
                    maxWidth: 18.w,
                    minHeight: 18.h,
                    minWidth: 18.w,
                  ),
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Investment name',
                  controller: _investmentNameController,
                  validator: (val) {
                    return valiTextField(val!);
                  },
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Investment date',
                  controller: _investmentDateController,
                  validator: (val) {
                    return valiTextField(val!);
                  },
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Amount',
                  controller: _amountController,
                  validator: (val) {
                    return valiTextField(val!);
                  },
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Description',
                  controller: _descriptionController,
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Interest',
                  controller: _interestController,
                  suffixIcon: SvgPicture.asset(
                    Assets.iconsLock,
                    fit: BoxFit.contain,
                  ),
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Risk rating',
                  controller: _riskRatingController,
                  suffixIcon: SvgPicture.asset(
                    Assets.iconsLock,
                    fit: BoxFit.contain,
                  ),
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Expected return',
                  controller: _expectedReturnController,
                  suffixIcon: SvgPicture.asset(
                    Assets.iconsLock,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 36.h),
                CustomButton(
                  onTap: () {
                    if (formState.currentState!.validate()) {
                      try {
                        var investmentBox =
                            Hive.box<InvestmentModel>('kInvestmentBox');
                        investmentBox.add(
                          InvestmentModel(
                            investmentCategory:
                                _investmentCategoryController.text,
                            investmentName: _investmentNameController.text,
                            investmentDate: _investmentDateController.text,
                            investmentAmount:
                                _investmentCategoryController.text,
                            description: _descriptionController.text,
                            interest: _interestController.text,
                            riskRating: _riskRatingController.text,
                            expectedReturn: _expectedReturnController.text,
                          ),
                        );
                        print('success');
                        Get.back();
                      } catch (e) {}
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showInvestmentCategoryDropdown(BuildContext context) {
    showMenu<String>(
      color: AppColor.lightGrey,
      context: context,
      position: const RelativeRect.fromLTRB(100, 100, 100, 100),
      items: investmentCategories
          .map((category) => PopupMenuItem<String>(
                value: category,
                child: Text(category, style: TextStyle(fontSize: 16.sp)),
              ))
          .toList(),
    ).then((value) {
      if (value != null) {
        // Ensure the text is updated safely
        setState(() {
          _investmentCategoryController.text = value;
        });
      }
    });
  }
}
