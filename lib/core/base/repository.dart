abstract class Repository<T> {
  Future<List<T>> getAll();
  Future<T> getById(String id);
}