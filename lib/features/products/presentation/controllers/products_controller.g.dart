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
    extends $AsyncNotifierProvider<ProductsController, ProductsState> {
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
    r'5b89af3a9380a0327e7142f1680723570450faba';

final class ProductsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductsController,
          AsyncValue<ProductsState>,
          ProductsState,
          FutureOr<ProductsState>,
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

abstract class _$ProductsController extends $AsyncNotifier<ProductsState> {
  late final _$args = ref.$arg as String;
  String get category => _$args;

  FutureOr<ProductsState> build(String category);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<ProductsState>, ProductsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ProductsState>, ProductsState>,
              AsyncValue<ProductsState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
