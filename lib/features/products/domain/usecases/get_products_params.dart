class GetProductsParams {
  final String category;
  final int limit;
  final int skip;
  final bool useCache;

  GetProductsParams(
    this.category,
    this.limit,
    this.skip, {
    this.useCache = false,
  });
}
