// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appointmentRepository)
final appointmentRepositoryProvider = AppointmentRepositoryProvider._();

final class AppointmentRepositoryProvider
    extends
        $FunctionalProvider<
          AppointmentRepository,
          AppointmentRepository,
          AppointmentRepository
        >
    with $Provider<AppointmentRepository> {
  AppointmentRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appointmentRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appointmentRepositoryHash();

  @$internal
  @override
  $ProviderElement<AppointmentRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppointmentRepository create(Ref ref) {
    return appointmentRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppointmentRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppointmentRepository>(value),
    );
  }
}

String _$appointmentRepositoryHash() =>
    r'41fa29ab21b156c1cb3a8b289fa4276d0159e731';

@ProviderFor(appointmentList)
final appointmentListProvider = AppointmentListFamily._();

final class AppointmentListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Appointment>>,
          List<Appointment>,
          FutureOr<List<Appointment>>
        >
    with
        $FutureModifier<List<Appointment>>,
        $FutureProvider<List<Appointment>> {
  AppointmentListProvider._({
    required AppointmentListFamily super.from,
    required DateTime super.argument,
  }) : super(
         retry: null,
         name: r'appointmentListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$appointmentListHash();

  @override
  String toString() {
    return r'appointmentListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Appointment>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Appointment>> create(Ref ref) {
    final argument = this.argument as DateTime;
    return appointmentList(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AppointmentListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$appointmentListHash() => r'bc3e59bd2f2187a26a2dc1acde66f24c5fd61369';

final class AppointmentListFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Appointment>>, DateTime> {
  AppointmentListFamily._()
    : super(
        retry: null,
        name: r'appointmentListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AppointmentListProvider call(DateTime date) =>
      AppointmentListProvider._(argument: date, from: this);

  @override
  String toString() => r'appointmentListProvider';
}
