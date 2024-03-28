class APIPath {
  const APIPath._();

  static const baseURL = 'https://fakestoreapi.com';
  static const products = '$baseURL/products';

  static getSingleProduct(String id) {
    return '$products/$id';
  }

  static const categories = '$baseURL/products/categories';

  static productsBaseOnCategories(String category) {
    return '$baseURL/products/category/$category';
  }
}
