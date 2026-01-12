import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:kliniku_server_client/kliniku_server_client.dart';
import '../repositories/queue_repository.dart';
import '../main.dart'; // import client

part 'queue_provider.g.dart';

/// Provides the QueueRepository instance
@riverpod
QueueRepository queueRepository(Ref ref) {
  return QueueRepository(client);
}

/// Fetches the current queue for the logged-in patient
@riverpod
Future<Queue?> currentQueue(Ref ref) async {
  final repository = ref.watch(queueRepositoryProvider);
  return repository.getCurrentQueue();
}

/// Fetches a queue by ID
@riverpod
Future<Queue> queueById(Ref ref, int id) async {
  final repository = ref.watch(queueRepositoryProvider);
  return repository.getById(id);
}

/// Fetches queue by appointment ID
@riverpod
Future<Queue?> queueByAppointment(Ref ref, int appointmentId) async {
  final repository = ref.watch(queueRepositoryProvider);
  return repository.getByAppointmentId(appointmentId);
}

/// Fetches all queues for a specific date
@riverpod
Future<List<Queue>> queuesByDate(Ref ref, DateTime date) async {
  final repository = ref.watch(queueRepositoryProvider);
  return repository.getQueuesByDate(date);
}

/// Fetches queues by poli and date
@riverpod
Future<List<Queue>> queuesByPoliAndDate(
  Ref ref,
  int poliId,
  DateTime date,
) async {
  final repository = ref.watch(queueRepositoryProvider);
  return repository.getQueuesByPoliAndDate(poliId: poliId, date: date);
}

/// Fetches all active queues
@riverpod
Future<List<Queue>> activeQueues(Ref ref) async {
  final repository = ref.watch(queueRepositoryProvider);
  return repository.getActiveQueues();
}
