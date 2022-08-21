import 'package:flutter/material.dart';

import '../../../../constants/strings.dart';

class GradiantButton extends StatelessWidget {
  String title;
  GestureTapCallback onTap;
  String imageRoute;
  bool isLoading;
  bool zero;
  double borderRadius;
  double height;

  GradiantButton(
      {required this.title,
      required this.onTap,
      this.imageRoute = "",
      this.isLoading = false,
      this.borderRadius = 15.0,
      this.zero = false,
      this.height = 40});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (!isLoading) ? onTap : () => {},
      child: Container(
        margin: EdgeInsets.all(3),
        height: height,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              gradient: LinearGradient(
                begin: Alignment(-1.0, 1),
                end: Alignment(1.0, 1.0),
                colors: <Color>[
                  Color.fromRGBO(147, 97, 230, 1),
                  Color.fromRGBO(147, 97, 230, 1),
                  Color.fromRGBO(103, 62, 239, 1)
                ],
              ),
            ),
            width: (zero)
                ? double.maxFinite
                : MediaQuery.of(context).size.width * 0.8,
            child: Stack(
              children: [
                Center(
                    child: (!isLoading)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              (imageRoute != "")
                                  ? Image.asset(imageRoute,
                                      height: 15, width: 15, color: white)
                                  : SizedBox(),
                              SizedBox(width: 10),
                              Text(title, style: btnText(white)),
                            ],
                          )
                        : SizedBox(
                            height: 35,
                            width: 35,
                            child: Text("Loading",
                                style: figtreeBold(
                                  fColor: white,
                                  fSize: 13,
                                )),
                          )),
              ],
            )),
      ),
    );
  }
}
