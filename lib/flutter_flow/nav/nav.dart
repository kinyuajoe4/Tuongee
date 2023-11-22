import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

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

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
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

  void update(BaseAuthUser newUser) {
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
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : OnboardingWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : OnboardingWidget(),
        ),
        FFRoute(
          name: 'loginPage',
          path: '/loginPage',
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: 'completeProfile',
          path: '/completeProfile',
          builder: (context, params) => CompleteProfileWidget(),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'addAnotherProfile',
          path: '/addAnotherProfile',
          builder: (context, params) => AddAnotherProfileWidget(),
        ),
        FFRoute(
          name: 'onboarding',
          path: '/onboarding',
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: 'homePage',
          path: '/homePage',
          asyncParams: {
            'test': getDoc(['asdfasdf'], AsdfasdfRecord.fromSnapshot),
          },
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'homePage')
              : HomePageWidget(
                  test: params.getParam('test', ParamType.Document),
                  pm: params.getParam('pm', ParamType.String),
                ),
        ),
        FFRoute(
          name: 'myAppointments',
          path: '/myAppointments',
          builder: (context, params) => MyAppointmentsWidget(),
        ),
        FFRoute(
          name: 'appointmentDetails',
          path: '/appointmentDetails',
          builder: (context, params) => AppointmentDetailsWidget(
            appointmentDetails: params.getParam('appointmentDetails',
                ParamType.DocumentReference, false, ['appointments']),
          ),
        ),
        FFRoute(
          name: 'profilePage',
          path: '/profilePage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profilePage')
              : ProfilePageWidget(
                  userProfile: params.getParam('userProfile',
                      ParamType.DocumentReference, false, ['users']),
                ),
        ),
        FFRoute(
          name: 'editProfile',
          path: '/editProfile',
          builder: (context, params) => EditProfileWidget(
            userProfile: params.getParam(
                'userProfile', ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'findSymptoms',
          path: '/findSymptoms',
          builder: (context, params) => FindSymptomsWidget(),
        ),
        FFRoute(
          name: 'appointmentDetailsProfile',
          path: '/appointmentDetailsProfile',
          builder: (context, params) => AppointmentDetailsProfileWidget(
            appointmentDetails: params.getParam('appointmentDetails',
                ParamType.DocumentReference, false, ['appointments']),
          ),
        ),
        FFRoute(
          name: 'activeusers',
          path: '/activeusers',
          builder: (context, params) => ActiveusersWidget(
            search: params.getParam('search', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'chitchat',
          path: '/chitchat',
          asyncParams: {
            'hosp': getDoc(['hospitals'], HospitalsRecord.fromSnapshot),
          },
          builder: (context, params) => ChitchatWidget(
            userName: params.getParam('userName', ParamType.String),
            userEmail: params.getParam('userEmail', ParamType.String),
            chatUser: params.getParam(
                'chatUser', ParamType.DocumentReference, false, ['chats']),
            userRef: params.getParam(
                'userRef', ParamType.DocumentReference, false, ['users']),
            userProfile: params.getParam('userProfile', ParamType.String),
            user: params.getParam(
                'user', ParamType.DocumentReference, false, ['users']),
            special: params.getParam('special', ParamType.String),
            locall: params.getParam('locall', ParamType.String),
            sched: params.getParam('sched', ParamType.String),
            hosp: params.getParam('hosp', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'kafengo',
          path: '/kafengo',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'kafengo')
              : KafengoWidget(
                  tittle: params.getParam('tittle', ParamType.String),
                ),
        ),
        FFRoute(
          name: 'review',
          path: '/review',
          builder: (context, params) => ReviewWidget(
            commentdetails: params.getParam('commentdetails',
                ParamType.DocumentReference, false, ['reviews']),
          ),
        ),
        FFRoute(
          name: 'maps',
          path: '/maps',
          builder: (context, params) => MapsWidget(),
        ),
        FFRoute(
          name: 'categoriespage',
          path: '/categoriespage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'categoriespage')
              : CategoriespageWidget(),
        ),
        FFRoute(
          name: 'categories',
          path: '/categories',
          asyncParams: {
            'test': getDoc(['asdfasdf'], AsdfasdfRecord.fromSnapshot),
          },
          builder: (context, params) => CategoriesWidget(
            test: params.getParam('test', ParamType.Document),
            pm: params.getParam('pm', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'fillpage',
          path: '/fillpage',
          asyncParams: {
            'test': getDoc(['asdfasdf'], AsdfasdfRecord.fromSnapshot),
          },
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'fillpage')
              : FillpageWidget(
                  test: params.getParam('test', ParamType.Document),
                  pm: params.getParam('pm', ParamType.String),
                ),
        ),
        FFRoute(
          name: 'channelchatpage',
          path: '/channelchatpage',
          asyncParams: {
            'chaneldetail': getDoc(['channels'], ChannelsRecord.fromSnapshot),
          },
          builder: (context, params) => ChannelchatpageWidget(
            chaneldetail: params.getParam('chaneldetail', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'morechannelinfo',
          path: '/morechannelinfo',
          asyncParams: {
            'morechatin': getDoc(['channels'], ChannelsRecord.fromSnapshot),
          },
          builder: (context, params) => MorechannelinfoWidget(
            morechatin: params.getParam('morechatin', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'ambulance',
          path: '/ambulance',
          asyncParams: {
            'moreinfo': getDoc(['hospitals'], HospitalsRecord.fromSnapshot),
          },
          builder: (context, params) => AmbulanceWidget(
            moreinfo: params.getParam('moreinfo', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'hospitallist',
          path: '/hospitallist',
          builder: (context, params) => HospitallistWidget(),
        ),
        FFRoute(
          name: 'categoriespageCopy',
          path: '/categoriespageCopy',
          builder: (context, params) => CategoriespageCopyWidget(),
        ),
        FFRoute(
          name: 'labtests',
          path: '/labtests',
          builder: (context, params) => LabtestsWidget(),
        ),
        FFRoute(
          name: 'consultancies',
          path: '/consultancies',
          builder: (context, params) => ConsultanciesWidget(),
        ),
        FFRoute(
          name: 'medrefill',
          path: '/medrefill',
          builder: (context, params) => MedrefillWidget(),
        ),
        FFRoute(
          name: 'scanpage',
          path: '/scanpage',
          builder: (context, params) => ScanpageWidget(),
        ),
        FFRoute(
          name: 'homecarepage',
          path: '/homecarepage',
          builder: (context, params) => HomecarepageWidget(),
        ),
        FFRoute(
          name: 'nopage',
          path: '/nopage',
          builder: (context, params) => NopageWidget(),
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
    ..addAll(queryParameters)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
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
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
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
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/onboarding';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Color(0xB93A47C1),
                  child: Image.asset(
                    'assets/images/image.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
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
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
