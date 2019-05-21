import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mysaasa_store.g.dart';

abstract class MySaasa implements Built<MySaasa, MySaasaBuilder> {
static Serializer<MySaasa> get serializer => _$mySaasaSerializer;
  Map<Type, dynamic> get moduleStates;
  MySaasa._();
  factory MySaasa([void Function(MySaasaBuilder) updates]) = _$MySaasa;
  getState<T>() => moduleStates[T] as T;
}

abstract class Action<T> {
  T reduce(T old);
  getType() => T;
}


MySaasa reducer(MySaasa old, dynamic action) {
  if (action is Action) {    
    var type = action.getType();
    return old.rebuild((b){
      var oldState = old.moduleStates[type];
      b.moduleStates[type] = action.reduce(oldState);
      return b;
    });
  }
  return old;

}

