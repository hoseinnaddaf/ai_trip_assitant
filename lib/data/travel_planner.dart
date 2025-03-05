import 'package:dio/dio.dart';
import 'dart:io';

import 'package:dio/io.dart';

class TravelPlanner {
  late Dio _dio;
  final String apiKey = 'YOUR_API_KEY_HERE';
  final String apiUrl =
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent';

  TravelPlanner({
    required this.origin,
    required this.destination,
    required this.duration,
    required this.tripTypes,
    required this.budget,
    required this.accommodationType,
    required this.transportType,
    required this.activities,
    required this.foodPreferences,
    required this.travelMode,
  }) {
    _dio = Dio();
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) =>
      true;
      return client;
    };
  }

  // متغیرهای ورودی فرم
  final String origin;
  final String destination;
  final String duration;
  final List<String> tripTypes;
  final String budget;
  final String accommodationType;
  final String transportType;
  final List<String> activities;
  final String foodPreferences;
  final String travelMode;

  String _buildPrompt() {
    return '''
شما یک دستیار برنامه‌ریزی سفر هستید.
 لطفاً بر اساس اطلاعات زیر، یک برنامه سفر یا پیشنهاد دقیق و خلاقانه برای کاربر ارائه دهید.
  اطلاعات ورودی به این صورت است:

- مبدا سفر: $origin
- مقصد سفر: $destination
- مدت زمان سفر: $duration
- نوع سفر مورد علاقه: ${tripTypes.join(', ')}
- بودجه تقریبی: $budget
- نوع اقامتگاه مورد علاقه: $accommodationType
- نوع وسیله حمل و نقل: $transportType
- فعالیت‌های مورد علاقه در سفر: ${activities.join(', ')}
- علاقه‌مندی به غذاهای خاص: $foodPreferences
- ترجیح سفر با تور یا مستقل: $travelMode

لطفاً یک برنامه سفر پیشنهاد دهید که شامل موارد زیر باشد:
1. پیشنهاد مسیر یا برنامه روزانه (چه روزهایی کجا برود و چه کار کند)
2. توصیه‌هایی برای اقامتگاه مناسب با توجه به بودجه و ترجیحات
3. پیشنهادهایی برای غذا و رستوران (با توجه به علاقه‌مندی کاربر)
4. نکات مهم یا توصیه‌های اضافی (مثلاً آب و هوا، هزینه‌های احتمالی، یا چیزهایی که باید همراه داشته باشد)

پاسخ را به صورت متنی واضح و مرتب ارائه دهید تا به‌راحتی قابل استفاده در یک اپلیکیشن باشد.
''';
  }

  Future<String> getTravelPlan() async {
    try {
      final String prompt = _buildPrompt();
      print('Sending request to: $apiUrl?key=$apiKey');
      print('Prompt: $prompt');

      final response = await _dio.post(
        '$apiUrl?key=$apiKey',
        data: {
          "contents": [
            {
              "parts": [
                {"text": prompt}
              ]
            }
          ]
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      print('Response status: ${response.statusCode}');
      print('Response data: ${response.data}');

      if (response.statusCode == 200) {
        final generatedText =
            response.data['candidates']?[0]['content']['parts'][0]['text'] ??
                'پاسخی دریافت نشد';
        return generatedText;
      } else {
        return 'خطا در دریافت پاسخ از سرور: ${response.statusCode}';
      }
    } catch (e) {
      print('Error details: $e');
      return 'خطا در ارتباط با API: $e';
    }
  }
}