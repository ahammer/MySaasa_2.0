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
    final result = <Object>[
      'moduleStates',
      serializers.serialize(object.moduleStates,
          specifiedType: const FullType(
              Map, const [const FullType(Type), const FullType(dynamic)])),
    ];

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
        case 'moduleStates':
          result.moduleStates = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(Type),
                const FullType(dynamic)
              ])) as Map<Type, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$MySaasa extends MySaasa {
  @override
  final Map<Type, dynamic> moduleStates;

  factory _$MySaasa([void Function(MySaasaBuilder) updates]) =>
      (new MySaasaBuilder()..update(updates)).build();

  _$MySaasa._({this.moduleStates}) : super._() {
    if (moduleStates == null) {
      throw new BuiltValueNullFieldError('MySaasa', 'moduleStates');
    }
  }

  @override
  MySaasa rebuild(void Function(MySaasaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MySaasaBuilder toBuilder() => new MySaasaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MySaasa && moduleStates == other.moduleStates;
  }

  @override
  int get hashCode {
    return $jf($jc(0, moduleStates.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MySaasa')
          ..add('moduleStates', moduleStates))
        .toString();
  }
}

class MySaasaBuilder implements Builder<MySaasa, MySaasaBuilder> {
  _$MySaasa _$v;

  Map<Type, dynamic> _moduleStates;
  Map<Type, dynamic> get moduleStates => _$this._moduleStates;
  set moduleStates(Map<Type, dynamic> moduleStates) =>
      _$this._moduleStates = moduleStates;

  MySaasaBuilder();

  MySaasaBuilder get _$this {
    if (_$v != null) {
      _moduleStates = _$v.moduleStates;
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
    final _$result = _$v ?? new _$MySaasa._(moduleStates: moduleStates);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
