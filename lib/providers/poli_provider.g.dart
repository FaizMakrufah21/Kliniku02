// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poli_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides the PoliRepository instance

@ProviderFor(poliRepository)
final poliRepositoryProvider = PoliRepositoryProvider._();

/// Provides the PoliRepository instance

final class PoliRepositoryProvider
    extends $FunctionalProvider<PoliRepository, PoliRepository, PoliRepository>
    with $Provider<PoliRepository> {
  /// Provides the PoliRepository instance
  PoliRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'poliRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$poliRepositoryHash();

  @$internal
  @override
  $ProviderElement<PoliRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PoliRepository create(Ref ref) {
    return poliRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PoliRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PoliRepository>(value),
    );
  }
}

String _$poliRepositoryHash() => r'18de80112b451b8864949eae3c6b4bd7e5502021';

/// Fetches all polis

@ProviderFor(poliList)
final poliListProvider = PoliListProvider._();

/// Fetches all polis

final class PoliListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Poli>>,
          List<Poli>,
          FutureOr<List<Poli>>
        >
    with $FutureModifier<List<Poli>>, $FutureProvider<List<Poli>> {
  /// Fetches all polis
  PoliListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'poliListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$poliListHash();

  @$internal
  @override
  $FutureProviderElement<List<Poli>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Poli>> create(Ref ref) {
    return poliList(ref);
  }
}

String _$poliListHash() => r'1845ce8358725b21c6d26b04ee3172f5051117ba';

/// Fetches a poli by ID

@ProviderFor(poliById)
final poliByIdProvider = PoliByIdFamily._();

/// Fetches a poli by ID

final class PoliByIdProvider
    extends $FunctionalProvider<AsyncValue<Poli>, Poli, FutureOr<Poli>>
    with $FutureModifier<Poli>, $FutureProvider<Poli> {
  /// Fetches a poli by ID
  PoliByIdProvider._({
    required PoliByIdFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'poliByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$poliByIdHash();

  @override
  String toString() {
    return r'poliByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Poli> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Poli> create(Ref ref) {
    final argument = this.argument as int;
    return poliById(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PoliByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$poliByIdHash() => r'7456a3af02486b23ff992d58ce35896e96aea97e';

/// Fetches a poli by ID

final class PoliByIdFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Poli>, int> {
  PoliByIdFamily._()
    : super(
        retry: null,
        name: r'poliByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Fetches a poli by ID

  PoliByIdProvider call(int id) => PoliByIdProvider._(argument: id, from: this);

  @override
  String toString() => r'poliByIdProvider';
}

/// Fetches all active polis

@ProviderFor(activePolis)
final activePolisProvider = ActivePolisProvider._();

/// Fetches all active polis

final class ActivePolisProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Poli>>,
          List<Poli>,
          FutureOr<List<Poli>>
        >
    with $FutureModifier<List<Poli>>, $FutureProvider<List<Poli>> {
  /// Fetches all active polis
  ActivePolisProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activePolisProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activePolisHash();

  @$internal
  @override
  $FutureProviderElement<List<Poli>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Poli>> create(Ref ref) {
    return activePolis(ref);
  }
}

String _$activePolisHash() => r'f179ff3e5a8e318020e6d02e51f3181d3811b8c8';

/// Searches polis by name

@ProviderFor(poliSearch)
final poliSearchProvider = PoliSearchFamily._();

/// Searches polis by name

final class PoliSearchProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Poli>>,
          List<Poli>,
          FutureOr<List<Poli>>
        >
    with $FutureModifier<List<Poli>>, $FutureProvider<List<Poli>> {
  /// Searches polis by name
  PoliSearchProvider._({
    required PoliSearchFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'poliSearchProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$poliSearchHash();

  @override
  String toString() {
    return r'poliSearchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Poli>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Poli>> create(Ref ref) {
    final argument = this.argument as String;
    return poliSearch(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PoliSearchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$poliSearchHash() => r'2fbdfdaef5676c10e633a079d18874d0671c3a2f';

/// Searches polis by name

final class PoliSearchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Poli>>, String> {
  PoliSearchFamily._()
    : super(
        retry: null,
        name: r'poliSearchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Searches polis by name

  PoliSearchProvider call(String query) =>
      PoliSearchProvider._(argument: query, from: this);

  @override
  String toString() => r'poliSearchProvider';
}
