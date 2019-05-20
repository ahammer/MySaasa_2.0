// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mysaasa_store.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MySaasa> _$mySaasaSerializer = new _$MySaasaSerializer();

class _$MySaasaSerializer implements StructuredSerializer<MySaasa> {
  @override
  final Iterable<Type> types = const [MySaasa, _$MySaasa];
  @override
  final String wireName = 'MySaasa';

  @override
  Iterable serialize(Serializers serializers, MySaasa object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  MySaasa deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MySaasaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MySaasa extends MySaasa {
  @override
  final int id;

  factory _$MySaasa([void Function(MySaasaBuilder) updates]) =>
      (new MySaasaBuilder()..update(updates)).build();

  _$MySaasa._({this.id}) : super._();

  @override
  MySaasa rebuild(void Function(MySaasaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MySaasaBuilder toBuilder() => new MySaasaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MySaasa && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MySaasa')..add('id', id)).toString();
  }
}

class MySaasaBuilder implements Builder<MySaasa, MySaasaBuilder> {
  _$MySaasa _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  MySaasaBuilder();

  MySaasaBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MySaasa other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MySaasa;
  }

  @override
  void update(void Function(MySaasaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MySaasa build() {
    final _$result = _$v ?? new _$MySaasa._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
