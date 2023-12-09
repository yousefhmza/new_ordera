import 'package:ecommerce/modules/layout/binding/layout_binding.dart';
import 'package:ecommerce/modules/layout/view/screens/layout_screen.dart';
import 'package:ecommerce/modules/on_boarding/binding/on_boarding_binding.dart';
import 'package:ecommerce/modules/on_boarding/view/screens/on_boarding_screen.dart';
import 'package:ecommerce/modules/order/binding/order_binding.dart';
import 'package:ecommerce/modules/order/views/screens/order_screen.dart';
import 'package:ecommerce/modules/order/views/screens/successful_order_screen.dart';
import 'package:ecommerce/modules/payment/binding/add_payment_method_binding.dart';
import 'package:ecommerce/modules/payment/binding/payment_methods_binding.dart';
import 'package:ecommerce/modules/payment/view/screens/add_payment_method_screen.dart';
import 'package:ecommerce/modules/payment/view/screens/payment_methods_screen.dart';
import 'package:ecommerce/modules/product/binding/product_detail_binding.dart';
import 'package:ecommerce/modules/product/views/screens/product_detail_screen.dart';
import 'package:ecommerce/modules/settings/views/screens/choose_components_screen.dart';
import 'package:get/get.dart';
import '../../modules/account/binding/account_binding.dart';
import '../../modules/account/view/screens/account_screen.dart';
import '../../modules/addresses/binding/add_new_address_binding.dart';
import '../../modules/addresses/binding/addresses_binding.dart';
import '../../modules/addresses/binding/choose_on_map_binding.dart';
import '../../modules/addresses/view/screens/add_new_address_screen.dart';
import '../../modules/addresses/view/screens/addresses_screen.dart';
import '../../modules/addresses/view/screens/choose_on_map_screen.dart';
import '../../modules/auth/binding/sign_in_binding.dart';
import '../../modules/auth/binding/sign_up_binding.dart';
import '../../modules/auth/view/screens/sign_in_screen.dart';
import '../../modules/auth/view/screens/sign_up_screen.dart';
import '../../modules/payment/binding/add_card_binding.dart';
import '../../modules/payment/view/screens/add_card_screen.dart';
import '../../modules/settings/views/screens/language_screen.dart';
import 'navigation.dart';

class Pages {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.onBoardingScreen,
      page: () => const OnBoardingScreen(),
      bindings: [OnBoardingBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.chooseComponentsScreen,
      page: () => const ChooseComponentsScreen(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.signInScreen,
      page: () => SignInScreen(),
      bindings: [SignInBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      bindings: [SignUpBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.layoutScreen,
      page: () => LayoutScreen(),
      bindings: [LayoutBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.accountScreen,
      page: () => AccountScreen(),
      bindings: [AccountBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.languageScreen,
      page: () => LanguageScreen(),
      // bindings: [LanguageBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.paymentMethodsScreen,
      page: () => PaymentMethodsScreen(),
      bindings: [PaymentMethodsBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.addPaymentMethodScreen,
      page: () => AddPaymentMethodScreen(),
      bindings: [AddPaymentMethodBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.addCardScreen,
      page: () => AddCardScreen(),
      bindings: [AddCardBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.addressesScreen,
      page: () => AddressesScreen(),
      bindings: [AddressesBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.addNewAddressScreen,
      page: () => AddNewAddressScreen(),
      bindings: [AddNewAddressBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.chooseOnMapScreen,
      page: () => ChooseOnMapScreen(),
      bindings: [ChooseOnMapBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.productDetailScreen,
      page: () => ProductDetailsScreen(),
      bindings: [ProductDetailBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.orderScreen,
      page: () => OrderScreen(),
      bindings: [OrderBinding()],
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.successfulOrderScreen,
      page: () => SuccessfulOrderScreen(),
      transition: Transition.cupertino,
    ),
    // GetPage(
    //   name: Routes.filterScreen,
    //   page: () => FilterScreen(),
    //   bindings: [FilterBinding()],
    //   transition: Transition.cupertino,
    // ),

    // GetPage(
    //   name: Routes.homeScreenContainerScreen,
    //   page: () => HomeScreenContainerScreen(),
    //   bindings: [HomeScreenContainerBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.productDetailOverviewScreen,
    //   page: () => ProductDetailOverviewScreen(),
    //   bindings: [ProductDetailOverviewBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.shoppingCartContinueOrderScreen,
    //   page: () => ShoppingCartContinueOrderScreen(),
    //   bindings: [ShoppingCartContinueOrderBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.successfulOrderScreen,
    //   page: () => SuccessfulOrderScreen(),
    //   bindings: [SuccessfulOrderBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.sellerDetailsScreen,
    //   page: () => SellerDetailsScreen(),
    //   bindings: [SellerDetailsBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.favouritesScreen,
    //   page: () => FavouritesScreen(),
    //   bindings: [FavouritesBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.verificationScreen,
    //   page: () => VerificationScreen(),
    //   bindings: [VerificationBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.categoriesTabContainerScreen,
    //   page: () => CategoriesTabContainerScreen(),
    //   bindings: [CategoriesTabContainerBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.searchScreen,
    //   page: () => SearchScreen(),
    //   bindings: [SearchBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.searchResultsScreen,
    //   page: () => SearchResultsScreen(),
    //   bindings: [SearchResultsBinding()],
    //   transition: Transition.cupertino,
    // ),

    // GetPage(
    //   name: Routes.languageScreen,
    //   page: () => LanguageScreen(),
    //   bindings: [LanguageBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.myOrdersScreen,
    //   page: () => MyOrdersScreen(),
    //   bindings: [MyOrdersBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.paymentMethodsScreen,
    //   page: () => PaymentMethodsScreen(),
    //   bindings: [PaymentMethodsBinding()],
    //   transition: Transition.cupertino,
    // ),

    // GetPage(
    //   name: Routes.sellersScreen,
    //   page: () => SellersScreen(),
    //   bindings: [SellersBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.changePasswordScreen,
    //   page: () => ChangePasswordScreen(),
    //   bindings: [ChangePasswordBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.emptyCartTabContainerScreen,
    //   page: () => EmptyCartTabContainerScreen(),
    //   bindings: [EmptyCartTabContainerBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.emptyCartOneScreen,
    //   page: () => EmptyCartOneScreen(),
    //   bindings: [EmptyCartOneBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.emptyFavouritesScreen,
    //   page: () => EmptyFavouritesScreen(),
    //   bindings: [EmptyFavouritesBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.sideMenuScreen,
    //   page: () => SideMenuScreen(),
    //   bindings: [SideMenuBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.appNavigationScreen,
    //   page: () => AppNavigationScreen(),
    //   bindings: [AppNavigationBinding()],
    //   transition: Transition.cupertino,
    // ),
    // GetPage(
    //   name: Routes.initialRoute,
    //   page: () => FilterScreen(),
    //   bindings: [FilterBinding()],
    //   transition: Transition.cupertino,
    // )
  ];
}
