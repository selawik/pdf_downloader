enum DocumentStatus {
  waitLoading,
  loading,
  loaded;

  String get title {
    switch (this) {
      case DocumentStatus.waitLoading:
        return 'Ожидает начала загрузки';
      case DocumentStatus.loading:
        return 'Загружается';
      case DocumentStatus.loaded:
        return 'Файл загружен';
    }
  }
}