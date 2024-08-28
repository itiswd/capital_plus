import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/widgets/add_investment/add_investment_view_app_bar.dart';
import 'package:capital_plus/widgets/add_investment/custom_add_investment_text_field.dart';
import 'package:capital_plus/widgets/add_investment/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class AddInvestmentBody extends StatefulWidget {
  const AddInvestmentBody({super.key});

  @override
  State<AddInvestmentBody> createState() => _AddInvestmentBodyState();
}

class _AddInvestmentBodyState extends State<AddInvestmentBody> {
  // Controller to control the text of the investment category text field
  final TextEditingController _investmentCategoryController =
      TextEditingController();

  @override
  void dispose() {
    _investmentCategoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            children: [
              const AddInvestmentViewAppBar(),
              SizedBox(height: 10.h),
              CustomAddInvestmentTextField(
                labelText: 'Investment category',
                readOnly: true,
                controller:
                    _investmentCategoryController, // Attach the controller
                suffixIcon: GestureDetector(
                  onTap: () => _showInvestmentCategoryDropdown(context),
                  child: SvgPicture.asset(
                    Assets.arrowDown,
                    fit: BoxFit.contain,
                  ),
                ),
                suffixIconConstraints: BoxConstraints(
                  maxHeight: 18.h,
                  maxWidth: 18.w,
                  minHeight: 18.h,
                  minWidth: 18.w,
                ),
              ),
              const CustomAddInvestmentTextField(
                labelText: 'Investment name',
              ),
              const CustomAddInvestmentTextField(
                labelText: 'Investment date',
              ),
              const CustomAddInvestmentTextField(
                labelText: 'Amount',
              ),
              const CustomAddInvestmentTextField(
                labelText: 'Description',
              ),
              CustomAddInvestmentTextField(
                labelText: 'Interest',
                suffixIcon: SvgPicture.asset(
                  Assets.lock,
                  fit: BoxFit.contain,
                ),
              ),
              CustomAddInvestmentTextField(
                labelText: 'Risk rating',
                suffixIcon: SvgPicture.asset(
                  Assets.lock,
                  fit: BoxFit.contain,
                ),
              ),
              CustomAddInvestmentTextField(
                labelText: 'Expected return',
                suffixIcon: SvgPicture.asset(
                  Assets.lock,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 36.h),
              const CustomButton()
            ],
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
        // Update the text field with the selected value
        _investmentCategoryController.text = value;
      }
    });
  }
}
