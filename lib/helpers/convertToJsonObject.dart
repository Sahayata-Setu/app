convertToJsonObject(obj) {
  return obj.entries.fold<Map<String, dynamic>>(
      {}, (prev, next) => ({...prev, next.key: next.value.text}));
}
