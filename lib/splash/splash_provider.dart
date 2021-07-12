import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:studentworker/global/pages.dart';
import 'package:studentworker/global/sp.dart';

final splashProvider = Provider((ref) => SplashProvider());

class SplashProvider {
  void doBackgroundTask() async {
    await SP.init();
    await Future.delayed(Duration(seconds: 3));
    bool isFirstTime = SP.getBool(firstTimeUserKey) ?? true;
    // SP.clear();
    bool isLoggedIn = SP.getBool(loggedInTag) ?? false;
    goToNextPage(isFirstTime, isLoggedIn);
  }

  void goToNextPage(bool isFirstTime, bool isLoggedIn) {
    if (isFirstTime) {
      navigator!.pushReplacementNamed(onBoarding);
      SP.setBool(firstTimeUserKey, false);
      return;
    }
    if (isLoggedIn) {
      bool hasCompletedProfile = SP.getBool(hasCompletedResumeKey) ?? false;
      bool employerHasCreatedAcct =
          SP.getBool(employerHasCreatedAcctKey) ?? false;
      bool isStudent = SP.getBool(userIsStudentKey) ?? false;

      if (hasCompletedProfile || employerHasCreatedAcct)
        navigator!.pushReplacementNamed(
            isStudent ? studentBaseWidget : employerBaseWidget);
      else
        navigator!.pushReplacementNamed(
            isStudent ? resumePage1 : createEmployerAcct1);
      return;
    }
    navigator!.pushReplacementNamed(identifyUser); //resumePage1
  }
}
