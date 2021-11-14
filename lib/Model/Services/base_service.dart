abstract class BaseService<T> {
  // get all
  Future<List<T>> getALL();
  Future<T> getById();
}
