library text_form_filed;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormTextField extends StatefulWidget {
  /// default value for [TextFormField]

  /// [title] on TextFormField
  final String? title;
  
  /// [hintText] in TextFormField when have not value
  final String? hintText;

  /// [textEditingController] controller in TextFormField
  final TextEditingController? textEditingController;
  final VoidCallback? onPressedIcon;
  final VoidCallback? onTapTextField;
  final VoidCallback? onEditingComplete;

  final bool? isChildTitle;
  final String? childTitle;
  final bool? isPassword;

  /// [isTitle] display or not display title on TextFormField
  /// Let's set true or false
  final bool? isTitle;

  /// [isShowIcon] display or not display icon in TextFormField on the right
  /// Let's set true or false
  final bool? isShowIcon;

  /// [isShowIconPre] display or not display icon in TextFormField on the left
  /// Let's set true or false
  final bool? isShowIconPre;

  /// [keyboardType] choose keyboardType : number,...
  ///  TextInputType
  final TextInputType? keyboardType;
  
  /// [onChanged] value change...
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final Color? colorBorder;
  final Color? colorEnabledBorder;
  final Color? colorFocusedBorder;
  final Color? colorTitle;
  final IconData? iconSuffix;
  final IconData? iconPrefix;
  final Color? colorHintText;
  final String? error;
  final Color? colorIcon;
  final double? height;
  final Color? fillColor;
  final bool? obligatory;
  final bool? readOnly;
  final bool? isIconTitle;
  final String? iconTitle;
  final VoidCallback? onTapIconTitle;
  final int? maxLength;
  final int? maxLine;
  final int? minLine;
  final Key? keyText;
  final double? sizeHintText;
  final FocusNode? focus;
  final List<TextInputFormatter>? inputFormatters;

  const CustomFormTextField({
    Key? key,
    this.title,
    this.isPassword = false,
    this.isChildTitle = false,
    this.childTitle,
    this.keyboardType,
    this.colorBorder = Colors.black87,
    this.iconSuffix,
    this.onChanged,
    this.iconPrefix,
    this.height = 50,
    this.textEditingController,
    this.hintText,
    this.onPressedIcon,
    this.colorIcon = Colors.black87,
    this.isShowIcon = false,
    this.isShowIconPre = false,
    this.obligatory = false,
    this.error,
    this.colorHintText = Colors.black87,
    this.isTitle = true,
    this.colorTitle = Colors.black87,
    this.focus,
    this.fillColor = Colors.white,
    this.readOnly = false,
    this.onTapTextField,
    this.maxLength,
    this.maxLine = 1,
    this.minLine,
    this.inputFormatters,
    this.colorFocusedBorder = Colors.grey,
    this.colorEnabledBorder = Colors.grey,
    this.validator,
    this.keyText,
    this.isIconTitle = false,
    this.iconTitle,
    this.onTapIconTitle,
    this.sizeHintText = 14,
    this.onEditingComplete,
  });

  @override
  StateFormFiled createState() => StateFormFiled();
}

class StateFormFiled extends State<CustomFormTextField> {
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.isTitle!
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: widget.title,
                        style: const TextStyle(color: Colors.black87),
                        children: <TextSpan>[
                          TextSpan(
                            text: widget.obligatory! ? ' *' : '',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Container(),
        widget.isTitle!
            ? const SizedBox(
                height: 6,
              )
            : Container(),
        Form(
          key: widget.keyText,
          child: TextFormField(
              autocorrect: false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onEditingComplete: () {
                widget.onEditingComplete == null
                    ? FocusScope.of(context).nextFocus()
                    : widget.onEditingComplete;
              },
              validator: widget.validator,
              inputFormatters: widget.inputFormatters,
              maxLength: widget.maxLength,
              onTap: widget.onTapTextField,
              readOnly: widget.readOnly!,
              focusNode: widget.focus,
              maxLines: widget.maxLine,
              minLines: widget.minLine,
              obscureText: widget.isPassword!,
              onChanged: widget.onChanged,
              scrollPadding: EdgeInsets.all(5),
              keyboardType: widget.keyboardType,
              controller: widget.textEditingController,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: widget.colorTitle),
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.fillColor,
                errorText: widget.error,
                hintText: widget.hintText,
                labelStyle:
                    const TextStyle(color: Colors.black87, fontSize: 16),
                hintStyle: const TextStyle(color: Colors.indigo, fontSize: 14),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    width: 0.5,
                    color: widget.colorBorder!,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    width: 0.5,
                    color: widget.colorBorder!,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(
                    width: 0.5,
                    color: widget.colorBorder!,
                  ),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                prefixIconConstraints: const BoxConstraints(),
                prefixIcon: widget.isShowIconPre!
                    ? Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Icon(
                          widget.iconPrefix!,
                          color: widget.colorIcon,
                        ))
                    : null,
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                suffixIconConstraints: const BoxConstraints(),
                suffixIcon: widget.isShowIcon!
                    ? InkWell(
                        onTap: widget.onPressedIcon,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Icon(
                            widget.iconSuffix!,
                            color: widget.colorIcon,
                          ),
                        ),
                      )
                    : null,
              )),
        ),
      ],
    );
  }
}
