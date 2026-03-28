// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductController)
final productControllerProvider = ProductControllerFamily._();

final class ProductControllerProvider
    extends $AsyncNotifierProvider<ProductController, Product> {
  ProductControllerProvider._({
    required ProductControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'productControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productControllerHash();

  @override
  String toString() {
    return r'productControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProductController create() => ProductController();

  @override
  bool operator ==(Object other) {
    return other is ProductControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productControllerHash() => r'ac4440d7d9ef96b030f0babc7b6a949464c9ba59';

final class ProductControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductController,
          AsyncValue<Product>,
          Product,
          FutureOr<Product>,
          int
        > {
  ProductControllerFamily._()
    : super(
        retry: null,
        name: r'productControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductControllerProvider call(int id) =>
      ProductControllerProvider._(argument: id, from: this);

  @override
  String toString() => r'productControllerProvider';
}

abstract class _$ProductController extends $AsyncNotifier<Product> {
  late final _$args = ref.$arg as int;
  int get id => _$args;

  FutureOr<Product> build(int id);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Product>, Product>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Product>, Product>,
              AsyncValue<Product>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
