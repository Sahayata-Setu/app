//Get All volunteers
import 'package:donationapp/features/notifications/services/notification.services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getAllNotificationProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, id) {
    return ref.watch(notificationService).getAllNotification(id);
  },
);

class NotificationNotifier extends ChangeNotifier {
  NotificationNotifier(this.read) : super();
  final Reader read;

  // @override
  createNotification(data) async {
    final notificationServiceProvider = read(notificationService);
    try {
      final resp = await notificationServiceProvider.createNotification(data);
      notifyListeners();
      return resp;
    } catch (e) {
      rethrow;
    }
  }
}

final notificationProvider =
    ChangeNotifierProvider.autoDispose<NotificationNotifier>(
        (ref) => NotificationNotifier(ref.read));
