import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_text_form_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: const Column(
            children: [
              CustomTextFormField(
                textInputType: TextInputType.text,
                hintText: 'Product Name',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                textInputType: TextInputType.number,
                hintText: 'Product Price',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                textInputType: TextInputType.number,
                hintText: 'Product Code',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                textInputType: TextInputType.text,
                hintText: 'Product Description',
                maxLines: 5,
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
