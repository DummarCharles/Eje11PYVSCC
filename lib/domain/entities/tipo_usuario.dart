// ignore_for_file: camel_case_types, unnecessary_getters_setters, non_constant_identifier_names

class tipo_usuario {
  // ignore: unused_field
  String _codigo = '', _nombre = '';
  tipo_usuario(String codigo, String nombre) {
    _codigo = codigo;
    _nombre = nombre;
  }
  String get Codigo {
    return _codigo;
  }

  set Codigo(String cod) {
    _codigo = cod;
  }

  String get Nombre {
    return _nombre;
  }

  set Nombre(String cod) {
    _nombre = cod;
  }
}
