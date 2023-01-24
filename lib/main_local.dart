import 'package:classic/main_common.dart';
import 'package:classic/common/config/app_config.dart';

void main(List<String> args) {
  final AppConfig appConfig = AppConfig(
    type: AppConfigType.dev,
    baseUrl:
        "http://ec2-43-200-232-163.ap-northeast-2.compute.amazonaws.com:80",
  );

  mainCommon(appConfig);
}
