abstract class StorageService<T> {
  
  Future<T> get();
  Future<bool> set(T value);

}
