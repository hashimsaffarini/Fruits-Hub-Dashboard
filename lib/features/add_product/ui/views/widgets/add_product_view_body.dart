import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_button.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/enitites/add_product_input_entity.dart';
import 'package:fruits_hub_dashboard/features/add_product/ui/views/widgets/image_field.dart';
import 'package:fruits_hub_dashboard/features/add_product/ui/views/widgets/is_featured_check_box.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String name, code, description;
  late num price;
  File? image;
  bool isFeatured = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomTextFormField(
                onSaved: (value) {
                  name = value!;
                },
                textInputType: TextInputType.text,
                hintText: 'Product Name',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  price = num.parse(value!);
                },
                textInputType: TextInputType.number,
                hintText: 'Product Price',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  code = value!.toLowerCase();
                },
                textInputType: TextInputType.number,
                hintText: 'Product Code',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  description = value!;
                },
                textInputType: TextInputType.text,
                hintText: 'Product Description',
                maxLines: 5,
              ),
              const SizedBox(
                height: 16,
              ),
              IsFeaturedCheckBox(
                onChanged: (value) {
                  isFeatured = value;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ImageField(
                fileChanged: (image) {
                  this.image = image!;
                },
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                onPressed: () {
                  if (image != null) {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      AddProductInputEntity input = AddProductInputEntity(
                        name: name,
                        code: code,
                        description: description,
                        price: price,
                        isFeatured: isFeatured,
                        image: image!,
                      );
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  } else {
                    errorBar(context);
                  }
                },
                text: 'Add Product',
              ),
            ],
          ),
        ),
      ),
    );
  }

  void errorBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Please select an image'),
      ),
    );
  }
}
