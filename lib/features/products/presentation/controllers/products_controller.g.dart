// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductsController)
final productsControllerProvider = ProductsControllerFamily._();

final class ProductsControllerProvider
    extends $NotifierProvider<ProductsController, ProductsState> {
  ProductsControllerProvider._({
    required ProductsControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'productsControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productsControllerHash();

  @override
  String toString() {
    return r'productsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProductsController create() => ProductsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductsState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productsControllerHash() =>
    r'1845b9887dcc84ed43605387a003b969714dc703';

final class ProductsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductsController,
          ProductsState,
          ProductsState,
          ProductsState,
          String
        > {
  ProductsControllerFamily._()
    : super(
        retry: null,
        name: r'productsControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductsControllerProvider call(String category) =>
      ProductsControllerProvider._(argument: category, from: this);

  @override
  String toString() => r'productsControllerProvider';
}

abstract class _$ProductsController extends $Notifier<ProductsState> {
  late final _$args = ref.$arg as String;
  String get category => _$args;

  ProductsState build(String category);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ProductsState, ProductsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProductsState, ProductsState>,
              ProductsState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
