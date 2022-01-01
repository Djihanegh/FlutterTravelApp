import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_assets.dart';
import 'package:travel_app/utils/size_config.dart';

import 'components/body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Key _key = UniqueKey();
    SizeConfig().init(context);
    return Body(title: 'Hello', key:  _key , avatar: Image.asset(AppAssets.biking),);
  }
}
