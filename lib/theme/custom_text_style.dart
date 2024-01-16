import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumRalewayGray50001 =>
      theme.textTheme.bodyMedium!.raleway.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumRalewayGray700 =>
      theme.textTheme.bodyMedium!.raleway.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumRalewayWhiteA700 =>
      theme.textTheme.bodyMedium!.raleway.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumffffffff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallGray60010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 10.fSize,
      );
  static get bodySmallGreen500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green500,
        fontSize: 10.fSize,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter;
  static get bodySmallInterGray600 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  static get bodySmallff7b6f72 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF7B6F72),
      );
  static get bodySmallffffffff => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  // Display text style
  static get displayMediumUrbanistWhiteA700 =>
      theme.textTheme.displayMedium!.urbanist.copyWith(
        color: appTheme.whiteA700,
        fontSize: 40.fSize,
        fontWeight: FontWeight.w800,
      );
  static get displayMediumWhiteA700 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get displaySmallAlegreyaSans =>
      theme.textTheme.displaySmall!.alegreyaSans.copyWith(
        fontSize: 38.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline style
  static get headlineSmallAlegreyaSans =>
      theme.textTheme.headlineSmall!.alegreyaSans;
  static get headlineSmallAlegreyaSansWhiteA700 =>
      theme.textTheme.headlineSmall!.alegreyaSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Label text style
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumRalewayGray50001 =>
      theme.textTheme.labelMedium!.raleway.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumffe9d894 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFFE9D894),
      );
  // Title text style
  static get titleLargeAlegreyaWhiteA700 =>
      theme.textTheme.titleLarge!.alegreya.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray90004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRaleway =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumUrbanist =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumUrbanistExtraBold =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleMediumUrbanistExtraBold_1 =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleMediumUrbanistOnError =>
      theme.textTheme.titleMedium!.urbanist.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleMediumff7b6f72 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF7B6F72),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumffffffff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallAlegreyaSans =>
      theme.textTheme.titleSmall!.alegreyaSans.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallAlegreyaSansBlack900 =>
      theme.textTheme.titleSmall!.alegreyaSans.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallAlegreyaSansWhiteA700 =>
      theme.textTheme.titleSmall!.alegreyaSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.62),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallAlegreyaSansWhiteA700Medium =>
      theme.textTheme.titleSmall!.alegreyaSans.copyWith(
        color: appTheme.whiteA700.withOpacity(0.67),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterGray600 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterLime200 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.lime200,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOpenSansffffffff =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppins => theme.textTheme.titleSmall!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray90004 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray90004,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsSemiBold =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsff1d1517 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: Color(0XFF1D1517),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsffe9d894 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: Color(0XFFE9D894),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsffffffff =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRaleway => theme.textTheme.titleSmall!.raleway.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallYellow900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallff4e3321 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF4E3321),
      );
  static get titleSmallff736a66 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF736A66),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallffec7d1c => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFEC7D1C),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallffffffff => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallffffffff_1 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFFFFFF),
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get alegreya {
    return copyWith(
      fontFamily: 'Alegreya',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }

  TextStyle get alegreyaSans {
    return copyWith(
      fontFamily: 'Alegreya Sans',
    );
  }
}
