abstract class ApiEndpoints {
  static const baseUrl = 'https://dummyjson.com';
  static const login = '/auth/login';
  static const me = '/auth/me';
  static const refresh = '/auth/refresh';
  static const categories = '/products/categories';
  static String productsByCategory(String category) =>
      '/products/category/$category';
}
