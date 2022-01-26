import 'dart:ui';
import 'package:agendaboa_flutter_app/res/Dimens.dart';
import 'package:agendaboa_flutter_app/res/constant_colors.dart';
import 'package:agendaboa_flutter_app/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitAppDialogBox extends StatefulWidget {
  const ExitAppDialogBox({Key? key}) : super(key: key);

  @override
  _ExitAppDialogBoxState createState() => _ExitAppDialogBoxState();
}

class _ExitAppDialogBoxState extends State<ExitAppDialogBox> {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * Dimens.size2),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(SizeConfig.defaultSize! * Dimens.size2),
          margin: EdgeInsets.only(
              top: SizeConfig.defaultSize! * Dimens.size3Point5),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(SizeConfig.defaultSize! * Dimens.size2),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, SizeConfig.defaultSize! * Dimens.size1),
                    blurRadius: SizeConfig.defaultSize! * Dimens.size1),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.defaultSize! * Dimens.size4,
              ),
              Text(
                "Exit App",
                style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * Dimens.size2Point3,
                    fontWeight: FontWeight.w600,
                    ),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * Dimens.size1Point5,
              ),
              Text(
                "Are you sure you want to leave ?",
                style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * Dimens.size1Point4,
                    ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * Dimens.size2Point3,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize:
                                SizeConfig.defaultSize! * Dimens.size1Point8,
                            ),
                      )),
                  MaterialButton(
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                      child: Text(
                        "Yes",
                        style: TextStyle(
                            color: ConstantColors.primaryColor,
                            fontSize:
                                SizeConfig.defaultSize! * Dimens.size1Point8,
                            ),
                      )),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
