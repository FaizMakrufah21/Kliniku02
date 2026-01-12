// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides the PatientRepository instance

@ProviderFor(patientRepository)
final patientRepositoryProvider = PatientRepositoryProvider._();

/// Provides the PatientRepository instance

final class PatientRepositoryProvider
    extends
        $FunctionalProvider<
          PatientRepository,
          PatientRepository,
          PatientRepository
        >
    with $Provider<PatientRepository> {
  /// Provides the PatientRepository instance
  PatientRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'patientRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$patientRepositoryHash();

  @$internal
  @override
  $ProviderElement<PatientRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PatientRepository create(Ref ref) {
    return patientRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PatientRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PatientRepository>(value),
    );
  }
}

String _$patientRepositoryHash() => r'df7c6d0d892d4cd2cba07667c2f202f706e2ae35';

/// Fetches the current patient profile for the logged-in user

@ProviderFor(currentPatient)
final currentPatientProvider = CurrentPatientProvider._();

/// Fetches the current patient profile for the logged-in user

final class CurrentPatientProvider
    extends
        $FunctionalProvider<AsyncValue<Patient?>, Patient?, FutureOr<Patient?>>
    with $FutureModifier<Patient?>, $FutureProvider<Patient?> {
  /// Fetches the current patient profile for the logged-in user
  CurrentPatientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currentPatientProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currentPatientHash();

  @$internal
  @override
  $FutureProviderElement<Patient?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Patient?> create(Ref ref) {
    return currentPatient(ref);
  }
}

String _$currentPatientHash() => r'004fd2b4e0554bd0213daf73f2e9ffab17b2045b';

/// Fetches a patient by ID

@ProviderFor(patientById)
final patientByIdProvider = PatientByIdFamily._();

/// Fetches a patient by ID

final class PatientByIdProvider
    extends
        $FunctionalProvider<AsyncValue<Patient?>, Patient?, FutureOr<Patient?>>
    with $FutureModifier<Patient?>, $FutureProvider<Patient?> {
  /// Fetches a patient by ID
  PatientByIdProvider._({
    required PatientByIdFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'patientByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$patientByIdHash();

  @override
  String toString() {
    return r'patientByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Patient?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Patient?> create(Ref ref) {
    final argument = this.argument as int;
    return patientById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PatientByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$patientByIdHash() => r'4a643ecd4ca10c0dad6c14a47557475df7775b32';

/// Fetches a patient by ID

final class PatientByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Patient?>, int> {
  PatientByIdFamily._()
    : super(
        retry: null,
        name: r'patientByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches a patient by ID

  PatientByIdProvider call(int id) =>
      PatientByIdProvider._(argument: id, from: this);

  @override
  String toString() => r'patientByIdProvider';
}

/// Fetches a patient by user ID

@ProviderFor(patientByUserId)
final patientByUserIdProvider = PatientByUserIdFamily._();

/// Fetches a patient by user ID

final class PatientByUserIdProvider
    extends
        $FunctionalProvider<AsyncValue<Patient?>, Patient?, FutureOr<Patient?>>
    with $FutureModifier<Patient?>, $FutureProvider<Patient?> {
  /// Fetches a patient by user ID
  PatientByUserIdProvider._({
    required PatientByUserIdFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'patientByUserIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$patientByUserIdHash();

  @override
  String toString() {
    return r'patientByUserIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Patient?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Patient?> create(Ref ref) {
    final argument = this.argument as int;
    return patientByUserId(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PatientByUserIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$patientByUserIdHash() => r'1d2a5c1860a1380b33a9d1c2bc82545289e1cdbd';

/// Fetches a patient by user ID

final class PatientByUserIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Patient?>, int> {
  PatientByUserIdFamily._()
    : super(
        retry: null,
        name: r'patientByUserIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches a patient by user ID

  PatientByUserIdProvider call(int userId) =>
      PatientByUserIdProvider._(argument: userId, from: this);

  @override
  String toString() => r'patientByUserIdProvider';
}

/// Searches patients by name

@ProviderFor(patientSearch)
final patientSearchProvider = PatientSearchFamily._();

/// Searches patients by name

final class PatientSearchProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Patient>>,
          List<Patient>,
          FutureOr<List<Patient>>
        >
    with $FutureModifier<List<Patient>>, $FutureProvider<List<Patient>> {
  /// Searches patients by name
  PatientSearchProvider._({
    required PatientSearchFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'patientSearchProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$patientSearchHash();

  @override
  String toString() {
    return r'patientSearchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Patient>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Patient>> create(Ref ref) {
    final argument = this.argument as String;
    return patientSearch(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PatientSearchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$patientSearchHash() => r'44ece7789f05dc7cc95bb375ded972af35e439af';

/// Searches patients by name

final class PatientSearchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Patient>>, String> {
  PatientSearchFamily._()
    : super(
        retry: null,
        name: r'patientSearchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Searches patients by name

  PatientSearchProvider call(String query) =>
      PatientSearchProvider._(argument: query, from: this);

  @override
  String toString() => r'patientSearchProvider';
}

/// Searches patient by NIK

@ProviderFor(patientByNik)
final patientByNikProvider = PatientByNikFamily._();

/// Searches patient by NIK

final class PatientByNikProvider
    extends
        $FunctionalProvider<AsyncValue<Patient?>, Patient?, FutureOr<Patient?>>
    with $FutureModifier<Patient?>, $FutureProvider<Patient?> {
  /// Searches patient by NIK
  PatientByNikProvider._({
    required PatientByNikFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'patientByNikProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$patientByNikHash();

  @override
  String toString() {
    return r'patientByNikProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Patient?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Patient?> create(Ref ref) {
    final argument = this.argument as String;
    return patientByNik(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PatientByNikProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$patientByNikHash() => r'59d07150d05103cf06e1ef7023f5ba0d5a8e323c';

/// Searches patient by NIK

final class PatientByNikFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Patient?>, String> {
  PatientByNikFamily._()
    : super(
        retry: null,
        name: r'patientByNikProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Searches patient by NIK

  PatientByNikProvider call(String nik) =>
      PatientByNikProvider._(argument: nik, from: this);

  @override
  String toString() => r'patientByNikProvider';
}
