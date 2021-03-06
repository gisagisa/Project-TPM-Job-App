import 'package:flutter/material.dart';
import 'package:job/constants.dart';
import 'package:job/models/job_models.dart';

class CompanyCard2 extends StatefulWidget {
  final Jobs? job;
  CompanyCard2({this.job});

  @override
  State<CompanyCard2> createState() => _CompanyCard2State();
}

class _CompanyCard2State extends State<CompanyCard2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      margin: EdgeInsets.only(right: 15.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  // image: DecorationImage(
                  //   image: AssetImage(company!.image!),
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
              Spacer(),
              Text(
                widget.job!.salary!,
                style: kTitleStyle,
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Text(
            widget.job!.job!,
            style: kTitleStyle,
          ),
          SizedBox(height: 15.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: widget.job!.company,
                  style: kSubtitleStyle,
                ),
                TextSpan(
                  text: "  •  ",
                  style: kSubtitleStyle,
                ),
                TextSpan(
                  text: widget.job!.city,
                  style: kSubtitleStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widget.job!.tag!
                .map(
                  (e) => Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 10.0),
                padding:
                EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                  border: Border.all(
                    color: kBlack,
                    width: 0.5,
                  ),
                ),
                child: Text(
                  e,
                  style: kSubtitleStyle.copyWith(
                    fontSize: 12.0,
                  ),
                ),
              ),
            )
                .toList(),
          ),
        ],
      ),
    );
  }
}
