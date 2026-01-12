// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides the QueueRepository instance

@ProviderFor(queueRepository)
final queueRepositoryProvider = QueueRepositoryProvider._();

/// Provides the QueueRepository instance

final class QueueRepositoryProvider
    extends
        $FunctionalProvider<QueueRepository, QueueRepository, QueueRepository>
    with $Provider<QueueRepository> {
  /// Provides the QueueRepository instance
  QueueRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'queueRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$queueRepositoryHash();

  @$internal
  @override
  $ProviderElement<QueueRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  QueueRepository create(Ref ref) {
    return queueRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QueueRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QueueRepository>(value),
    );
  }
}

String _$queueRepositoryHash() => r'3568d69603e430e14611131bea53a7a253e510ff';

/// Fetches the current queue for the logged-in patient

@ProviderFor(currentQueue)
final currentQueueProvider = CurrentQueueProvider._();

/// Fetches the current queue for the logged-in patient

final class CurrentQueueProvider
    extends $FunctionalProvider<AsyncValue<Queue?>, Queue?, FutureOr<Queue?>>
    with $FutureModifier<Queue?>, $FutureProvider<Queue?> {
  /// Fetches the current queue for the logged-in patient
  CurrentQueueProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentQueueProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentQueueHash();

  @$internal
  @override
  $FutureProviderElement<Queue?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Queue?> create(Ref ref) {
    return currentQueue(ref);
  }
}

String _$currentQueueHash() => r'ff7c907be50a0d843395fe0ae3bbc02c8c21662f';

/// Fetches a queue by ID

@ProviderFor(queueById)
final queueByIdProvider = QueueByIdFamily._();

/// Fetches a queue by ID

final class QueueByIdProvider
    extends $FunctionalProvider<AsyncValue<Queue>, Queue, FutureOr<Queue>>
    with $FutureModifier<Queue>, $FutureProvider<Queue> {
  /// Fetches a queue by ID
  QueueByIdProvider._({
    required QueueByIdFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'queueByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$queueByIdHash();

  @override
  String toString() {
    return r'queueByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Queue> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Queue> create(Ref ref) {
    final argument = this.argument as int;
    return queueById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is QueueByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$queueByIdHash() => r'6e5c14f5d0691644d7f27f4eb34e8f59e780957a';

/// Fetches a queue by ID

final class QueueByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Queue>, int> {
  QueueByIdFamily._()
    : super(
        retry: null,
        name: r'queueByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches a queue by ID

  QueueByIdProvider call(int id) =>
      QueueByIdProvider._(argument: id, from: this);

  @override
  String toString() => r'queueByIdProvider';
}

/// Fetches queue by appointment ID

@ProviderFor(queueByAppointment)
final queueByAppointmentProvider = QueueByAppointmentFamily._();

/// Fetches queue by appointment ID

final class QueueByAppointmentProvider
    extends $FunctionalProvider<AsyncValue<Queue?>, Queue?, FutureOr<Queue?>>
    with $FutureModifier<Queue?>, $FutureProvider<Queue?> {
  /// Fetches queue by appointment ID
  QueueByAppointmentProvider._({
    required QueueByAppointmentFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'queueByAppointmentProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$queueByAppointmentHash();

  @override
  String toString() {
    return r'queueByAppointmentProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Queue?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Queue?> create(Ref ref) {
    final argument = this.argument as int;
    return queueByAppointment(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is QueueByAppointmentProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$queueByAppointmentHash() =>
    r'34554196ac86e17f30d766236521dfe34e02bef1';

/// Fetches queue by appointment ID

final class QueueByAppointmentFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Queue?>, int> {
  QueueByAppointmentFamily._()
    : super(
        retry: null,
        name: r'queueByAppointmentProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches queue by appointment ID

  QueueByAppointmentProvider call(int appointmentId) =>
      QueueByAppointmentProvider._(argument: appointmentId, from: this);

  @override
  String toString() => r'queueByAppointmentProvider';
}

/// Fetches all queues for a specific date

@ProviderFor(queuesByDate)
final queuesByDateProvider = QueuesByDateFamily._();

/// Fetches all queues for a specific date

final class QueuesByDateProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Queue>>,
          List<Queue>,
          FutureOr<List<Queue>>
        >
    with $FutureModifier<List<Queue>>, $FutureProvider<List<Queue>> {
  /// Fetches all queues for a specific date
  QueuesByDateProvider._({
    required QueuesByDateFamily super.from,
    required DateTime super.argument,
  }) : super(
         retry: null,
         name: r'queuesByDateProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$queuesByDateHash();

  @override
  String toString() {
    return r'queuesByDateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Queue>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Queue>> create(Ref ref) {
    final argument = this.argument as DateTime;
    return queuesByDate(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is QueuesByDateProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$queuesByDateHash() => r'8fec4e53cdf7a87771c1d311b182b8342a2445a5';

/// Fetches all queues for a specific date

final class QueuesByDateFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Queue>>, DateTime> {
  QueuesByDateFamily._()
    : super(
        retry: null,
        name: r'queuesByDateProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches all queues for a specific date

  QueuesByDateProvider call(DateTime date) =>
      QueuesByDateProvider._(argument: date, from: this);

  @override
  String toString() => r'queuesByDateProvider';
}

/// Fetches queues by poli and date

@ProviderFor(queuesByPoliAndDate)
final queuesByPoliAndDateProvider = QueuesByPoliAndDateFamily._();

/// Fetches queues by poli and date

final class QueuesByPoliAndDateProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Queue>>,
          List<Queue>,
          FutureOr<List<Queue>>
        >
    with $FutureModifier<List<Queue>>, $FutureProvider<List<Queue>> {
  /// Fetches queues by poli and date
  QueuesByPoliAndDateProvider._({
    required QueuesByPoliAndDateFamily super.from,
    required (int, DateTime) super.argument,
  }) : super(
         retry: null,
         name: r'queuesByPoliAndDateProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$queuesByPoliAndDateHash();

  @override
  String toString() {
    return r'queuesByPoliAndDateProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<Queue>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Queue>> create(Ref ref) {
    final argument = this.argument as (int, DateTime);
    return queuesByPoliAndDate(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is QueuesByPoliAndDateProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$queuesByPoliAndDateHash() =>
    r'dd1ba3bf729d4674424f982d3778132e51346d89';

/// Fetches queues by poli and date

final class QueuesByPoliAndDateFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Queue>>, (int, DateTime)> {
  QueuesByPoliAndDateFamily._()
    : super(
        retry: null,
        name: r'queuesByPoliAndDateProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches queues by poli and date

  QueuesByPoliAndDateProvider call(int poliId, DateTime date) =>
      QueuesByPoliAndDateProvider._(argument: (poliId, date), from: this);

  @override
  String toString() => r'queuesByPoliAndDateProvider';
}

/// Fetches all active queues

@ProviderFor(activeQueues)
final activeQueuesProvider = ActiveQueuesProvider._();

/// Fetches all active queues

final class ActiveQueuesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Queue>>,
          List<Queue>,
          FutureOr<List<Queue>>
        >
    with $FutureModifier<List<Queue>>, $FutureProvider<List<Queue>> {
  /// Fetches all active queues
  ActiveQueuesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activeQueuesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activeQueuesHash();

  @$internal
  @override
  $FutureProviderElement<List<Queue>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Queue>> create(Ref ref) {
    return activeQueues(ref);
  }
}

String _$activeQueuesHash() => r'b942c20906574377cdbdff3ff5e3974a0c3eeed5';
