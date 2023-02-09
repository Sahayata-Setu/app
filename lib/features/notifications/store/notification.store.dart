//Get All volunteers
import 'package:donationapp/features/notifications/services/notification.services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getAllNotificationProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, id) {
    return ref.watch(notificationService).getAllNotification(id);
  },
);
