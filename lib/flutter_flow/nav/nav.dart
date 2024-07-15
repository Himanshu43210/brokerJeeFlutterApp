import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BrokerForTestingAuthUser? initialUser;
  BrokerForTestingAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BrokerForTestingAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? SearchPropertyNewSaleWidget()
          : HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? SearchPropertyNewSaleWidget()
              : HomePageWidget(),
        ),
        FFRoute(
          name: 'LoginAdmin',
          path: '/loginAdmin',
          builder: (context, params) => LoginAdminWidget(),
        ),
        FFRoute(
          name: 'LoginSub',
          path: '/loginSub',
          builder: (context, params) => LoginSubWidget(),
        ),
        FFRoute(
          name: 'CRM',
          path: '/crm',
          requireAuth: true,
          builder: (context, params) => CrmWidget(),
        ),
        FFRoute(
          name: 'ChangePassword',
          path: '/changePassword',
          requireAuth: true,
          builder: (context, params) => ChangePasswordWidget(),
        ),
        FFRoute(
          name: 'CreateSubUser',
          path: '/createSubUser',
          requireAuth: true,
          builder: (context, params) => CreateSubUserWidget(),
        ),
        FFRoute(
          name: 'UpdateProfile',
          path: '/updateProfile',
          requireAuth: true,
          builder: (context, params) => UpdateProfileWidget(),
        ),
        FFRoute(
          name: 'Trash',
          path: '/trash',
          requireAuth: true,
          builder: (context, params) => TrashWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'CreatePropertyDealer',
          path: '/createPropertyDealer',
          builder: (context, params) => CreatePropertyDealerWidget(),
        ),
        FFRoute(
          name: 'MyFavourite',
          path: '/myFavourite',
          requireAuth: true,
          builder: (context, params) => MyFavouriteWidget(),
        ),
        FFRoute(
          name: 'MySearchSuper',
          path: '/mySearchSuper',
          builder: (context, params) => MySearchSuperWidget(),
        ),
        FFRoute(
          name: 'CRMSuper',
          path: '/cRMSuper',
          builder: (context, params) => CRMSuperWidget(
            adminCrm: params.getParam(
              'adminCrm',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'OwnersLeadNew',
          path: '/ownersLeadNew',
          requireAuth: true,
          builder: (context, params) => OwnersLeadNewWidget(),
        ),
        FFRoute(
          name: 'DealersLeadNew',
          path: '/dealersLeadNew',
          requireAuth: true,
          builder: (context, params) => DealersLeadNewWidget(),
        ),
        FFRoute(
          name: 'SearchPropertyNewSale',
          path: '/searchPropertyNewSale',
          requireAuth: true,
          builder: (context, params) => SearchPropertyNewSaleWidget(),
        ),
        FFRoute(
          name: 'SearchPropertyNewRent',
          path: '/searchPropertyNewRent',
          requireAuth: true,
          builder: (context, params) => SearchPropertyNewRentWidget(),
        ),
        FFRoute(
          name: 'UploadMyRecord',
          path: '/uploadMyRecord',
          builder: (context, params) => UploadMyRecordWidget(),
        ),
        FFRoute(
          name: 'BulkUpload',
          path: '/bulkUpload',
          requireAuth: true,
          builder: (context, params) => BulkUploadWidget(),
        ),
        FFRoute(
          name: 'ViewCustomerNew',
          path: '/viewCustomerNew',
          requireAuth: true,
          builder: (context, params) => ViewCustomerNewWidget(),
        ),
        FFRoute(
          name: 'UploadLocationNew',
          path: '/uploadLocationNew',
          requireAuth: true,
          builder: (context, params) => UploadLocationNewWidget(
            page: params.getParam(
              'page',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'MySubuserNew',
          path: '/mySubuserNew',
          requireAuth: true,
          builder: (context, params) => MySubuserNewWidget(),
        ),
        FFRoute(
          name: 'MyLeadsNew',
          path: '/myLeadsNew',
          requireAuth: true,
          builder: (context, params) => MyLeadsNewWidget(),
        ),
        FFRoute(
          name: 'MyFavouriteNew',
          path: '/myFavouriteNew',
          requireAuth: true,
          builder: (context, params) => MyFavouriteNewWidget(),
        ),
        FFRoute(
          name: 'UploadMapsImages',
          path: '/uploadMapsImages',
          builder: (context, params) => UploadMapsImagesWidget(),
        ),
        FFRoute(
          name: 'UpdateProfileSuperAdmin',
          path: '/updateProfileSuperAdmin',
          requireAuth: true,
          builder: (context, params) => UpdateProfileSuperAdminWidget(),
        ),
        FFRoute(
          name: 'ChangePasswordSuperAdmin',
          path: '/changePasswordSuperAdmin',
          requireAuth: true,
          builder: (context, params) => ChangePasswordSuperAdminWidget(),
        ),
        FFRoute(
          name: 'TrashSuperAdmin',
          path: '/trashSuperAdmin',
          requireAuth: true,
          builder: (context, params) => TrashSuperAdminWidget(),
        ),
        FFRoute(
          name: 'SearchResultSale',
          path: '/searchResultSale',
          requireAuth: true,
          builder: (context, params) => SearchResultSaleWidget(),
        ),
        FFRoute(
          name: 'SearchResultRent',
          path: '/searchResultRent',
          requireAuth: true,
          builder: (context, params) => SearchResultRentWidget(),
        ),
        FFRoute(
          name: 'SampleHIve',
          path: '/sampleHIve',
          requireAuth: true,
          builder: (context, params) => SampleHIveWidget(),
        ),
        FFRoute(
          name: 'editItem',
          path: '/editItem',
          builder: (context, params) => EditItemWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/homePage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/images/p247.svg',
                        fit: BoxFit.cover,
                      ),
                    )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
