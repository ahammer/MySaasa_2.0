import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mysaasa_store.g.dart';

abstract class MySaasa implements Built<MySaasa, MySaasaBuilder> {
static Serializer<MySaasa> get serializer => _$mySaasaSerializer;;

  @nullable
  int get id;

  MySaasa._();
  factory MySaasa([void Function(MySaasaBuilder) updates]) = _$MySaasa;
}