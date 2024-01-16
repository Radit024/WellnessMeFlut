import 'package:wellnessmef/presentation/eleven_screen/eleven_screen.dart';
import 'package:wellnessmef/presentation/eleven_screen/binding/eleven_binding.dart';
import 'package:wellnessmef/presentation/fourteen_screen/fourteen_screen.dart';
import 'package:wellnessmef/presentation/fourteen_screen/binding/fourteen_binding.dart';
import 'package:wellnessmef/presentation/fifteen_screen/fifteen_screen.dart';
import 'package:wellnessmef/presentation/fifteen_screen/binding/fifteen_binding.dart';
import 'package:wellnessmef/presentation/sixteen_screen/sixteen_screen.dart';
import 'package:wellnessmef/presentation/sixteen_screen/binding/sixteen_binding.dart';
import 'package:wellnessmef/presentation/seventeen_screen/seventeen_screen.dart';
import 'package:wellnessmef/presentation/seventeen_screen/binding/seventeen_binding.dart';
import 'package:wellnessmef/presentation/eighteen_screen/eighteen_screen.dart';
import 'package:wellnessmef/presentation/eighteen_screen/binding/eighteen_binding.dart';
import 'package:wellnessmef/presentation/nineteen_screen/nineteen_screen.dart';
import 'package:wellnessmef/presentation/nineteen_screen/binding/nineteen_binding.dart';
import 'package:wellnessmef/presentation/welcome_screen/welcome_screen.dart';
import 'package:wellnessmef/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:wellnessmef/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:wellnessmef/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:wellnessmef/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:wellnessmef/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:wellnessmef/presentation/find_screen/find_screen.dart';
import 'package:wellnessmef/presentation/find_screen/binding/find_binding.dart';
import 'package:wellnessmef/presentation/otp_screen/otp_screen.dart';
import 'package:wellnessmef/presentation/otp_screen/binding/otp_binding.dart';
import 'package:wellnessmef/presentation/confirm_screen/confirm_screen.dart';
import 'package:wellnessmef/presentation/confirm_screen/binding/confirm_binding.dart';
import 'package:wellnessmef/presentation/landing_screen/landing_screen.dart';
import 'package:wellnessmef/presentation/landing_screen/binding/landing_binding.dart';
import 'package:wellnessmef/presentation/homepage_screen/homepage_screen.dart';
import 'package:wellnessmef/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:wellnessmef/presentation/eight_screen/eight_screen.dart';
import 'package:wellnessmef/presentation/eight_screen/binding/eight_binding.dart';
import 'package:wellnessmef/presentation/nine_screen/nine_screen.dart';
import 'package:wellnessmef/presentation/nine_screen/binding/nine_binding.dart';
import 'package:wellnessmef/presentation/ten_screen/ten_screen.dart';
import 'package:wellnessmef/presentation/ten_screen/binding/ten_binding.dart';
import 'package:wellnessmef/presentation/twelve_screen/twelve_screen.dart';
import 'package:wellnessmef/presentation/twelve_screen/binding/twelve_binding.dart';
import 'package:wellnessmef/presentation/thirteen_screen/thirteen_screen.dart';
import 'package:wellnessmef/presentation/thirteen_screen/binding/thirteen_binding.dart';
import 'package:wellnessmef/presentation/twenty_screen/twenty_screen.dart';
import 'package:wellnessmef/presentation/twenty_screen/binding/twenty_binding.dart';
import 'package:wellnessmef/presentation/profile_screen/profile_screen.dart';
import 'package:wellnessmef/presentation/profile_screen/binding/profile_binding.dart';
import 'package:wellnessmef/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:wellnessmef/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String elevenScreen = '/eleven_screen';

  static const String fourteenScreen = '/fourteen_screen';

  static const String fifteenScreen = '/fifteen_screen';

  static const String sixteenScreen = '/sixteen_screen';

  static const String seventeenScreen = '/seventeen_screen';

  static const String eighteenScreen = '/eighteen_screen';

  static const String nineteenScreen = '/nineteen_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String findScreen = '/find_screen';

  static const String otpScreen = '/otp_screen';

  static const String confirmScreen = '/confirm_screen';

  static const String landingScreen = '/landing_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String eightScreen = '/eight_screen';

  static const String nineScreen = '/nine_screen';

  static const String tenScreen = '/ten_screen';

  static const String twelveScreen = '/twelve_screen';

  static const String thirteenScreen = '/thirteen_screen';

  static const String twentyScreen = '/twenty_screen';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: elevenScreen,
      page: () => ElevenScreen(),
      bindings: [
        ElevenBinding(),
      ],
    ),
    GetPage(
      name: fourteenScreen,
      page: () => FourteenScreen(),
      bindings: [
        FourteenBinding(),
      ],
    ),
    GetPage(
      name: fifteenScreen,
      page: () => FifteenScreen(),
      bindings: [
        FifteenBinding(),
      ],
    ),
    GetPage(
      name: sixteenScreen,
      page: () => SixteenScreen(),
      bindings: [
        SixteenBinding(),
      ],
    ),
    GetPage(
      name: seventeenScreen,
      page: () => SeventeenScreen(),
      bindings: [
        SeventeenBinding(),
      ],
    ),
    GetPage(
      name: eighteenScreen,
      page: () => EighteenScreen(),
      bindings: [
        EighteenBinding(),
      ],
    ),
    GetPage(
      name: nineteenScreen,
      page: () => NineteenScreen(),
      bindings: [
        NineteenBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: findScreen,
      page: () => FindScreen(),
      bindings: [
        FindBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: confirmScreen,
      page: () => ConfirmScreen(),
      bindings: [
        ConfirmBinding(),
      ],
    ),
    GetPage(
      name: landingScreen,
      page: () => LandingScreen(),
      bindings: [
        LandingBinding(),
      ],
    ),
    GetPage(
      name: homepageScreen,
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
      ],
    ),
    GetPage(
      name: eightScreen,
      page: () => EightScreen(),
      bindings: [
        EightBinding(),
      ],
    ),
    GetPage(
      name: nineScreen,
      page: () => NineScreen(),
      bindings: [
        NineBinding(),
      ],
    ),
    GetPage(
      name: tenScreen,
      page: () => TenScreen(),
      bindings: [
        TenBinding(),
      ],
    ),
    GetPage(
      name: twelveScreen,
      page: () => TwelveScreen(),
      bindings: [
        TwelveBinding(),
      ],
    ),
    GetPage(
      name: thirteenScreen,
      page: () => ThirteenScreen(),
      bindings: [
        ThirteenBinding(),
      ],
    ),
    GetPage(
      name: twentyScreen,
      page: () => TwentyScreen(),
      bindings: [
        TwentyBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    )
  ];
}
