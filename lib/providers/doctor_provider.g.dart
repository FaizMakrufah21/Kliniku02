// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides the DoctorRepository instance

@ProviderFor(doctorRepository)
final doctorRepositoryProvider = DoctorRepositoryProvider._();

/// Provides the DoctorRepository instance

final class DoctorRepositoryProvider
    extends
        $FunctionalProvider<
          DoctorRepository,
          DoctorRepository,
          DoctorRepository
        >
    with $Provider<DoctorRepository> {
  /// Provides the DoctorRepository instance
  DoctorRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'doctorRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$doctorRepositoryHash();

  @$internal
  @override
  $ProviderElement<DoctorRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DoctorRepository create(Ref ref) {
    return doctorRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DoctorRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DoctorRepository>(value),
    );
  }
}

String _$doctorRepositoryHash() => r'd79551c56607637524672d39cf91a4347ddabf79';

/// Fetches all doctors

@ProviderFor(doctorList)
final doctorListProvider = DoctorListProvider._();

/// Fetches all doctors

final class DoctorListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Doctor>>,
          List<Doctor>,
          FutureOr<List<Doctor>>
        >
    with $FutureModifier<List<Doctor>>, $FutureProvider<List<Doctor>> {
  /// Fetches all doctors
  DoctorListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'doctorListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$doctorListHash();

  @$internal
  @override
  $FutureProviderElement<List<Doctor>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Doctor>> create(Ref ref) {
    return doctorList(ref);
  }
}

String _$doctorListHash() => r'5a060716e30306693328a5c2743eec34b4633595';

/// Fetches a doctor by ID

@ProviderFor(doctorById)
final doctorByIdProvider = DoctorByIdFamily._();

/// Fetches a doctor by ID

final class DoctorByIdProvider
    extends $FunctionalProvider<AsyncValue<Doctor>, Doctor, FutureOr<Doctor>>
    with $FutureModifier<Doctor>, $FutureProvider<Doctor> {
  /// Fetches a doctor by ID
  DoctorByIdProvider._({
    required DoctorByIdFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'doctorByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$doctorByIdHash();

  @override
  String toString() {
    return r'doctorByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Doctor> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Doctor> create(Ref ref) {
    final argument = this.argument as int;
    return doctorById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DoctorByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$doctorByIdHash() => r'3fc91bdf7a82b084e8ffa3d2ef30b1529be64388';

/// Fetches a doctor by ID

final class DoctorByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Doctor>, int> {
  DoctorByIdFamily._()
    : super(
        retry: null,
        name: r'doctorByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches a doctor by ID

  DoctorByIdProvider call(int id) =>
      DoctorByIdProvider._(argument: id, from: this);

  @override
  String toString() => r'doctorByIdProvider';
}

/// Fetches doctors by poli ID

@ProviderFor(doctorsByPoli)
final doctorsByPoliProvider = DoctorsByPoliFamily._();

/// Fetches doctors by poli ID

final class DoctorsByPoliProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Doctor>>,
          List<Doctor>,
          FutureOr<List<Doctor>>
        >
    with $FutureModifier<List<Doctor>>, $FutureProvider<List<Doctor>> {
  /// Fetches doctors by poli ID
  DoctorsByPoliProvider._({
    required DoctorsByPoliFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'doctorsByPoliProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$doctorsByPoliHash();

  @override
  String toString() {
    return r'doctorsByPoliProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Doctor>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Doctor>> create(Ref ref) {
    final argument = this.argument as int;
    return doctorsByPoli(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DoctorsByPoliProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$doctorsByPoliHash() => r'b310df8aa7125045016e62a4c927a1378bdf8e99';

/// Fetches doctors by poli ID

final class DoctorsByPoliFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Doctor>>, int> {
  DoctorsByPoliFamily._()
    : super(
        retry: null,
        name: r'doctorsByPoliProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches doctors by poli ID

  DoctorsByPoliProvider call(int poliId) =>
      DoctorsByPoliProvider._(argument: poliId, from: this);

  @override
  String toString() => r'doctorsByPoliProvider';
}

/// Fetches doctors by specialization ID

@ProviderFor(doctorsBySpecialization)
final doctorsBySpecializationProvider = DoctorsBySpecializationFamily._();

/// Fetches doctors by specialization ID

final class DoctorsBySpecializationProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Doctor>>,
          List<Doctor>,
          FutureOr<List<Doctor>>
        >
    with $FutureModifier<List<Doctor>>, $FutureProvider<List<Doctor>> {
  /// Fetches doctors by specialization ID
  DoctorsBySpecializationProvider._({
    required DoctorsBySpecializationFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'doctorsBySpecializationProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$doctorsBySpecializationHash();

  @override
  String toString() {
    return r'doctorsBySpecializationProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Doctor>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Doctor>> create(Ref ref) {
    final argument = this.argument as int;
    return doctorsBySpecialization(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DoctorsBySpecializationProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$doctorsBySpecializationHash() =>
    r'ad26cd8e4e6f47beb9c28e4dc07aece85ec15682';

/// Fetches doctors by specialization ID

final class DoctorsBySpecializationFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Doctor>>, int> {
  DoctorsBySpecializationFamily._()
    : super(
        retry: null,
        name: r'doctorsBySpecializationProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches doctors by specialization ID

  DoctorsBySpecializationProvider call(int specializationId) =>
      DoctorsBySpecializationProvider._(argument: specializationId, from: this);

  @override
  String toString() => r'doctorsBySpecializationProvider';
}

/// Searches doctors by name

@ProviderFor(doctorSearch)
final doctorSearchProvider = DoctorSearchFamily._();

/// Searches doctors by name

final class DoctorSearchProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Doctor>>,
          List<Doctor>,
          FutureOr<List<Doctor>>
        >
    with $FutureModifier<List<Doctor>>, $FutureProvider<List<Doctor>> {
  /// Searches doctors by name
  DoctorSearchProvider._({
    required DoctorSearchFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'doctorSearchProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$doctorSearchHash();

  @override
  String toString() {
    return r'doctorSearchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Doctor>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Doctor>> create(Ref ref) {
    final argument = this.argument as String;
    return doctorSearch(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DoctorSearchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$doctorSearchHash() => r'd8da349c11487215f15662645048ddfc6f0f8cd0';

/// Searches doctors by name

final class DoctorSearchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Doctor>>, String> {
  DoctorSearchFamily._()
    : super(
        retry: null,
        name: r'doctorSearchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Searches doctors by name

  DoctorSearchProvider call(String query) =>
      DoctorSearchProvider._(argument: query, from: this);

  @override
  String toString() => r'doctorSearchProvider';
}

/// Fetches available doctors

@ProviderFor(availableDoctors)
final availableDoctorsProvider = AvailableDoctorsProvider._();

/// Fetches available doctors

final class AvailableDoctorsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Doctor>>,
          List<Doctor>,
          FutureOr<List<Doctor>>
        >
    with $FutureModifier<List<Doctor>>, $FutureProvider<List<Doctor>> {
  /// Fetches available doctors
  AvailableDoctorsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'availableDoctorsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$availableDoctorsHash();

  @$internal
  @override
  $FutureProviderElement<List<Doctor>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Doctor>> create(Ref ref) {
    return availableDoctors(ref);
  }
}

String _$availableDoctorsHash() => r'9ef10a80d67ef0d1b426ce332160893213ea2b0a';
