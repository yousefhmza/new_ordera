import 'package:dio/dio.dart';
import 'package:ecommerce/config/localization/controller/l10n_controller.dart';
import 'package:ecommerce/modules/account/controller/account_controller.dart';
import 'package:ecommerce/modules/account/repositories/account_repo.dart';
import 'package:ecommerce/modules/addresses/controller/add_new_address_controller.dart';
import 'package:ecommerce/modules/addresses/controller/addresses_controller.dart';
import 'package:ecommerce/modules/addresses/controller/choose_on_map_controller.dart';
import 'package:ecommerce/modules/auth/controller/login_controller.dart';
import 'package:ecommerce/modules/auth/controller/registration_controller.dart';
import 'package:ecommerce/modules/auth/repositories/auth_repo.dart';
import 'package:ecommerce/modules/cart/controller/shopping_cart_controller.dart';
import 'package:ecommerce/modules/cart/repos/cart_repo.dart';
import 'package:ecommerce/modules/categories/controller/categories_controller.dart';
import 'package:ecommerce/modules/categories/controller/category_products_controller.dart';
import 'package:ecommerce/modules/categories/repo/categories_repo.dart';
import 'package:ecommerce/modules/following/controller/following_controller.dart';
import 'package:ecommerce/modules/home/controller/home_controller.dart';
import 'package:ecommerce/modules/home/repo/home_repo.dart';
import 'package:ecommerce/modules/layout/controller/layout_controller.dart';
import 'package:ecommerce/modules/legal/controllers/terms_and_conditions_controller.dart';
import 'package:ecommerce/modules/legal/repo/legal_repo.dart';
import 'package:ecommerce/modules/on_boarding/controller/on_boarding_controller.dart';
import 'package:ecommerce/modules/on_boarding/repositories/on_boarding_repo.dart';
import 'package:ecommerce/modules/order/controller/order_controller.dart';
import 'package:ecommerce/modules/payment/controller/add_card_controller.dart';
import 'package:ecommerce/modules/payment/controller/add_payment_method_controller.dart';
import 'package:ecommerce/modules/payment/controller/payment_methods_controller.dart';
import 'package:ecommerce/modules/product/controller/product_detail_controller.dart';
import 'package:ecommerce/modules/product/repo/product_repo.dart';
import 'package:ecommerce/modules/regions/controllers/regions_controller.dart';
import 'package:ecommerce/modules/regions/repositories/regions_repo.dart';
import 'package:ecommerce/modules/spalsh/controller/splash_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'core/services/local/cache_client.dart';
import 'core/services/local/cart_database.dart';
import 'core/services/network/api_client.dart';
import 'core/services/network/network_info.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  // external
  await GetStorage.init();
  sl.registerLazySingleton<GetStorage>(() => GetStorage());
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<Connectivity>(() => Connectivity());
  sl.registerLazySingleton<PrettyDioLogger>(
      () => PrettyDioLogger(requestHeader: true, requestBody: true, responseHeader: true));

  // core
  sl.registerLazySingleton<CacheClient>(() => CacheClient(sl<GetStorage>()));
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfo(sl<Connectivity>()));
  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl<Dio>(), sl<CacheClient>(), sl<PrettyDioLogger>()));

  // Local
  sl.registerLazySingleton<CartDatabase>(() => CartDatabase()..initDatabase());

  // Repositories
  sl.registerLazySingleton<AuthRepo>(() => AuthRepo(sl<ApiClient>(), sl<CacheClient>(), sl<NetworkInfo>()));
  sl.registerLazySingleton<AccountRepo>(() => AccountRepo(sl<ApiClient>(), sl<NetworkInfo>()));
  sl.registerLazySingleton<OnBoardingRepo>(() => OnBoardingRepo(sl<CacheClient>(), sl<NetworkInfo>()));
  sl.registerLazySingleton<RegionsRepo>(() => RegionsRepo(sl<ApiClient>(), sl<NetworkInfo>()));
  sl.registerLazySingleton<LegalRepo>(() => LegalRepo(sl<ApiClient>(), sl<NetworkInfo>()));
  sl.registerLazySingleton<HomeRepo>(() => HomeRepo(sl<ApiClient>(), sl<NetworkInfo>()));
  sl.registerLazySingleton<CategoriesRepo>(() => CategoriesRepo(sl<ApiClient>(), sl<NetworkInfo>()));
  sl.registerLazySingleton<ProductsRepo>(() => ProductsRepo(sl<ApiClient>(), sl<NetworkInfo>()));
  sl.registerLazySingleton<CartRepo>(() => CartRepo(sl<CartDatabase>()));

  // Controllers
  sl.registerFactory<L10nController>(() => L10nController(sl<CacheClient>()));
  sl.registerFactory<SplashController>(() => SplashController(sl<OnBoardingRepo>(), sl<AuthRepo>(), sl<AccountRepo>()));
  sl.registerFactory<OnBoardingController>(() => OnBoardingController(sl<OnBoardingRepo>()));
  sl.registerFactory<RegionsController>(() => RegionsController(sl<RegionsRepo>()));
  sl.registerFactory<LoginController>(() => LoginController(sl<AuthRepo>()));
  sl.registerFactory<RegistrationController>(() => RegistrationController(sl<AuthRepo>()));
  sl.registerFactory<CategoryProductsController>(() => CategoryProductsController(sl<CategoriesRepo>()));
  sl.registerFactory<LayoutController>(() => LayoutController());
  sl.registerFactory<FollowingController>(() => FollowingController());
  sl.registerFactory<AccountController>(() => AccountController());
  sl.registerFactory<PaymentMethodsController>(() => PaymentMethodsController());
  sl.registerFactory<AddPaymentMethodController>(() => AddPaymentMethodController());
  sl.registerFactory<AddCardController>(() => AddCardController());
  sl.registerFactory<AddNewAddressController>(() => AddNewAddressController());
  sl.registerFactory<AddressesController>(() => AddressesController());
  sl.registerFactory<ChooseOnMapController>(() => ChooseOnMapController());
  sl.registerFactory<HomeController>(() => HomeController(sl<HomeRepo>(), sl<CategoriesRepo>()));
  sl.registerFactory<ProductDetailsController>(() => ProductDetailsController(sl<ProductsRepo>(), sl<CartRepo>()));
  sl.registerFactory<CartController>(() => CartController());
  sl.registerFactory<CategoriesController>(() => CategoriesController(sl<CategoriesRepo>()));
  sl.registerFactory<OrderController>(() => OrderController());
  sl.registerFactory<TermsAndConditionsController>(() => TermsAndConditionsController(sl<LegalRepo>()));
}
