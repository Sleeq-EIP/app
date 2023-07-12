import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Stripe API Group Code

class StripeAPIGroup {
  static String baseUrl = 'https://api.stripe.com/v1/';
  static Map<String, String> headers = {};
  static CreatePaymentLinkCall createPaymentLinkCall = CreatePaymentLinkCall();
}

class CreatePaymentLinkCall {
  Future<ApiCallResponse> call({
    String? successfulUrl = '',
    String? cancelUrl = '',
    String? priceId = '',
    String? mode = 'subscription',
    String? key =
        'sk_test_51LOI2XBzo7KeiEMEvMq1t4V17K7RdiB5CiEFLG0TNRKwde13Sqz7K70y0uM61OGKZyJTzyLsu8K3GQwlDLue4wmL00KlJfUgZo',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Create Payment Link',
      apiUrl: '${StripeAPIGroup.baseUrl}checkout/sessions',
      callType: ApiCallType.POST,
      headers: {
        ...StripeAPIGroup.headers,
        'Authorization': 'Bearer ${key}',
      },
      params: {
        'payment_method_types[]': "card",
        'line_items[][price]': priceId,
        'line_items[][quantity]': 1,
        'success_url': successfulUrl,
        'cancel_url': cancelUrl,
        'mode': mode,
        'allow_promotion_codes': true,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Stripe API Group Code

/// Start Feedback Group Code

class FeedbackGroup {
  static String baseUrl = 'https://formspree.io/f/';
  static Map<String, String> headers = {};
  static BugReportCall bugReportCall = BugReportCall();
}

class BugReportCall {
  Future<ApiCallResponse> call({
    String? userMail = '',
    String? title = '',
    String? description = '',
    String? steps = '',
    String? screenshot = '',
    bool? wantsFollowUp,
    String? priority = '',
    String? userPlatform = '',
  }) {
    final body = '''
{
  "userMail": "${userMail}",
  "title": "${title}",
  "description": "${description}",
  "steps": "${steps}",
  "screenshot": "${screenshot}",
  "wantsFollowUp": ${wantsFollowUp},
  "priority": "${priority}",
  "platform": "${userPlatform}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Bug report',
      apiUrl: '${FeedbackGroup.baseUrl}xjvqvpza',
      callType: ApiCallType.POST,
      headers: {
        ...FeedbackGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Feedback Group Code

class SendFeedbackCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? usermail = '',
    String? userid = '',
    int? easeofuse,
    int? bugfree,
    int? price,
    int? quality,
    bool? premium,
    String? feedback = '',
    String? reasonnopremium = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "email": "${usermail}",
  "user id": "${userid}",
  "ease of use rating": "${easeofuse}/5",
  "bug free rating": "${bugfree}/5",
  "features rating": "${quality}/5",
  "price rating": "${price}/5",
  "feedback": "${feedback}",
  "has considered premium?": ${premium},
  "reason why not considered premium": "${reasonnopremium}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send feedback',
      apiUrl: 'https://formspree.io/f/xjvqbazj',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
