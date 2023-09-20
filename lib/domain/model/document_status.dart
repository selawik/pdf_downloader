enum DocumentStatus {
  waitLoading,
  loading,
  loaded,
  error;

  String get title {
    switch (this) {
      case DocumentStatus.waitLoading:
        return 'Ожидает начала загрузки';
      case DocumentStatus.loading:
        return 'Загружается';
      case DocumentStatus.loaded:
        return 'Файл загружен';
      case DocumentStatus.error:
        return 'Ошибка загрузки';
    }
  }
}
