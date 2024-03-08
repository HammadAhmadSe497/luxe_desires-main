import 'package:get/get.dart';

import '../modules/add_music/bindings/add_music_binding.dart';
import '../modules/add_music/views/add_music_view.dart';
import '../modules/authpage/bindings/authpage_binding.dart';
import '../modules/authpage/views/authpage_view.dart';
import '../modules/checkout/bindings/checkout_binding.dart';
import '../modules/checkout/views/checkout_view.dart';
import '../modules/editprofile/bindings/editprofile_binding.dart';
import '../modules/editprofile/views/editprofile_view.dart';
import '../modules/eventScreen/bindings/event_screen_binding.dart';
import '../modules/eventScreen/views/event_screen_view.dart';
import '../modules/forgotpassword/bindings/forgotpassword_binding.dart';
import '../modules/forgotpassword/views/forgotpassword_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/jointeam/bindings/jointeam_binding.dart';
import '../modules/jointeam/views/jointeam_view.dart';
import '../modules/maindashboard/bindings/maindashboard_binding.dart';
import '../modules/maindashboard/views/maindashboard_view.dart';
import '../modules/music_player/bindings/music_player_binding.dart';
import '../modules/music_player/views/music_player_view.dart';
import '../modules/musiclist/bindings/musiclist_binding.dart';
import '../modules/musiclist/views/musiclist_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/order/bindings/order_binding.dart';
import '../modules/order/views/order_view.dart';
import '../modules/shop/bindings/shop_binding.dart';
import '../modules/shop/views/shop_view.dart';
import '../modules/userprofile/bindings/userprofile_binding.dart';
import '../modules/userprofile/views/userprofile_view.dart';
import '../modules/users/bindings/users_binding.dart';
import '../modules/users/views/users_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.AUTHPAGE,
      page: () => AuthpageView(),
      binding: AuthpageBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPASSWORD,
      page: () => const ForgotpasswordView(),
      binding: ForgotpasswordBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_SCREEN,
      page: () => const EventScreenView(),
      binding: EventScreenBinding(),
    ),
    GetPage(
      name: _Paths.MAINDASHBOARD,
      page: () => const MaindashboardView(),
      binding: MaindashboardBinding(),
    ),
    GetPage(
      name: _Paths.MUSICLIST,
      page: () => const MusiclistView(),
      binding: MusiclistBinding(),
    ),
    GetPage(
      name: _Paths.USERPROFILE,
      page: () => const UserprofileView(),
      binding: UserprofileBinding(),
    ),
    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => const EditprofileView(),
      binding: EditprofileBinding(),
    ),
    GetPage(
      name: _Paths.USERS,
      page: () => const UsersView(),
      binding: UsersBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => const ShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.JOINTEAM,
      page: () => const JointeamView(),
      binding: JointeamBinding(),
    ),
    GetPage(
      name: _Paths.MUSIC_PLAYER,
      page: () => const MusicPlayerView(),
      binding: MusicPlayerBinding(),
    ),
    GetPage(
      name: _Paths.ADD_MUSIC,
      page: () => const AddMusicView(),
      binding: AddMusicBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => const OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.CHECKOUT,
      page: () => const CheckoutView(),
      binding: CheckoutBinding(),
    ),
  ];
}
