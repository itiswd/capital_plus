import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/functions/validate_text_field.dart';
import 'package:capital_plus/features/add_investment/widgets/add_investment_view_app_bar.dart';
import 'package:capital_plus/features/add_investment/widgets/custom_add_investment_text_field.dart';
import 'package:capital_plus/features/add_investment/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';

class AddInvestmentBody extends StatefulWidget {
  const AddInvestmentBody({super.key});

  @override
  State<AddInvestmentBody> createState() => _AddInvestmentBodyState();
}

class _AddInvestmentBodyState extends State<AddInvestmentBody> {
  final TextEditingController _investmentCategoryController =
      TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();

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
          child: Form(
            key: formState,
            child: Column(
              children: [
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
                  validator: (val) {
                    return valiTextField(val!);
                  },
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Investment date',
                  validator: (val) {
                    return valiTextField(val!);
                  },
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Amount',
                  validator: (val) {
                    return valiTextField(val!);
                  },
                ),
                const CustomAddInvestmentTextField(
                  labelText: 'Description',
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Interest',
                  suffixIcon: SvgPicture.asset(
                    Assets.iconsLock,
                    fit: BoxFit.contain,
                  ),
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Risk rating',
                  suffixIcon: SvgPicture.asset(
                    Assets.iconsLock,
                    fit: BoxFit.contain,
                  ),
                ),
                CustomAddInvestmentTextField(
                  labelText: 'Expected return',
                  suffixIcon: SvgPicture.asset(
                    Assets.iconsLock,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 36.h),
                CustomButton(
                  onTap: () {
                    if (formState.currentState!.validate()) {
                      // Add Investment logic

                      Get.back();
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
