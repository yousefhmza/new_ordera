import 'package:ecommerce/modules/account/repositories/account_repo.dart';
import 'package:get/get.dart';

import '../../../config/navigation/navigation.dart';
import '../../../core/resources/resources.dart';
import '../../../core/utils/alerts.dart';
import '../../../core/utils/globals.dart';
import '../../auth/repositories/auth_repo.dart';
import '../../on_boarding/repositories/on_boarding_repo.dart';

class SplashController extends GetxController {
  final OnBoardingRepo _onBoardingRepo;
  final AuthRepo _authRepo;
  final AccountRepo _accountRepo;

  SplashController(this._onBoardingRepo, this._authRepo, this._accountRepo);

  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      Time.t3s,
      () {
        if (_onBoardingRepo.onBoardingSeen) {
          if (_authRepo.isAuthed) {
            getProfile();
          } else {
            Get.offAllNamed(Routes.loginScreen);
          }
        } else {
          Get.offAllNamed(Routes.onBoardingScreen);
        }
      },
    );
  }

  Future<void> getProfile() async {
    isLoading(true);
    final result = await _accountRepo.getProfile();
    result.fold(
      (failure) => Alerts.showSnackBar(message: failure.message, onActionPressed: getProfile),
      (user) {
        currentUser(user);
        Get.offAllNamed(Routes.chooseComponentsScreen);
      },
    );
    isLoading(false);
  }
}
