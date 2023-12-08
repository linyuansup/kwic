// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum SequenceScalarFieldEnum implements _i1.PrismaEnum {
  data;

  @override
  String? get originalName => null;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class SequenceWhereInput implements _i1.JsonSerializable {
  const SequenceWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.data,
  });

  factory SequenceWhereInput.fromJson(Map<String, dynamic> json) =>
      _$SequenceWhereInputFromJson(json);

  final Iterable<SequenceWhereInput>? AND;

  final Iterable<SequenceWhereInput>? OR;

  final Iterable<SequenceWhereInput>? NOT;

  final StringFilter? data;

  @override
  Map<String, dynamic> toJson() => _$SequenceWhereInputToJson(this);
}

@_i1.jsonSerializable
class SequenceOrderByWithRelationInput implements _i1.JsonSerializable {
  const SequenceOrderByWithRelationInput({this.data});

  factory SequenceOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$SequenceOrderByWithRelationInputFromJson(json);

  final SortOrder? data;

  @override
  Map<String, dynamic> toJson() =>
      _$SequenceOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class SequenceWhereUniqueInput implements _i1.JsonSerializable {
  const SequenceWhereUniqueInput({
    this.data,
    this.AND,
    this.OR,
    this.NOT,
  });

  factory SequenceWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$SequenceWhereUniqueInputFromJson(json);

  final String? data;

  final Iterable<SequenceWhereInput>? AND;

  final Iterable<SequenceWhereInput>? OR;

  final Iterable<SequenceWhereInput>? NOT;

  @override
  Map<String, dynamic> toJson() => _$SequenceWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class SequenceOrderByWithAggregationInput implements _i1.JsonSerializable {
  const SequenceOrderByWithAggregationInput({
    this.data,
    this.$count,
    this.$max,
    this.$min,
  });

  factory SequenceOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$SequenceOrderByWithAggregationInputFromJson(json);

  final SortOrder? data;

  @JsonKey(name: r'_count')
  final SequenceCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final SequenceMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final SequenceMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$SequenceOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class SequenceScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const SequenceScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.data,
  });

  factory SequenceScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$SequenceScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<SequenceScalarWhereWithAggregatesInput>? AND;

  final Iterable<SequenceScalarWhereWithAggregatesInput>? OR;

  final Iterable<SequenceScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? data;

  @override
  Map<String, dynamic> toJson() =>
      _$SequenceScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class SequenceCreateInput implements _i1.JsonSerializable {
  const SequenceCreateInput({required this.data});

  factory SequenceCreateInput.fromJson(Map<String, dynamic> json) =>
      _$SequenceCreateInputFromJson(json);

  final String data;

  @override
  Map<String, dynamic> toJson() => _$SequenceCreateInputToJson(this);
}

@_i1.jsonSerializable
class SequenceUncheckedCreateInput implements _i1.JsonSerializable {
  const SequenceUncheckedCreateInput({required this.data});

  factory SequenceUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$SequenceUncheckedCreateInputFromJson(json);

  final String data;

  @override
  Map<String, dynamic> toJson() => _$SequenceUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class SequenceUpdateInput implements _i1.JsonSerializable {
  const SequenceUpdateInput({this.data});

  factory SequenceUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$SequenceUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? data;

  @override
  Map<String, dynamic> toJson() => _$SequenceUpdateInputToJson(this);
}

@_i1.jsonSerializable
class SequenceUncheckedUpdateInput implements _i1.JsonSerializable {
  const SequenceUncheckedUpdateInput({this.data});

  factory SequenceUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$SequenceUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? data;

  @override
  Map<String, dynamic> toJson() => _$SequenceUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class SequenceCreateManyInput implements _i1.JsonSerializable {
  const SequenceCreateManyInput({required this.data});

  factory SequenceCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$SequenceCreateManyInputFromJson(json);

  final String data;

  @override
  Map<String, dynamic> toJson() => _$SequenceCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class SequenceUpdateManyMutationInput implements _i1.JsonSerializable {
  const SequenceUpdateManyMutationInput({this.data});

  factory SequenceUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$SequenceUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? data;

  @override
  Map<String, dynamic> toJson() =>
      _$SequenceUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class SequenceUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const SequenceUncheckedUpdateManyInput({this.data});

  factory SequenceUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$SequenceUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? data;

  @override
  Map<String, dynamic> toJson() =>
      _$SequenceUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class SequenceCountOrderByAggregateInput implements _i1.JsonSerializable {
  const SequenceCountOrderByAggregateInput({this.data});

  factory SequenceCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$SequenceCountOrderByAggregateInputFromJson(json);

  final SortOrder? data;

  @override
  Map<String, dynamic> toJson() =>
      _$SequenceCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class SequenceMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const SequenceMaxOrderByAggregateInput({this.data});

  factory SequenceMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$SequenceMaxOrderByAggregateInputFromJson(json);

  final SortOrder? data;

  @override
  Map<String, dynamic> toJson() =>
      _$SequenceMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class SequenceMinOrderByAggregateInput implements _i1.JsonSerializable {
  const SequenceMinOrderByAggregateInput({this.data});

  factory SequenceMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$SequenceMinOrderByAggregateInputFromJson(json);

  final SortOrder? data;

  @override
  Map<String, dynamic> toJson() =>
      _$SequenceMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class Sequence implements _i1.JsonSerializable {
  const Sequence({required this.data});

  factory Sequence.fromJson(Map<String, dynamic> json) =>
      _$SequenceFromJson(json);

  final String data;

  @override
  Map<String, dynamic> toJson() => _$SequenceToJson(this);
}

class SequenceFluent<T> extends _i1.PrismaFluent<T> {
  const SequenceFluent(
    super.original,
    super.$query,
  );
}

extension SequenceModelDelegateExtension on _i1.ModelDelegate<Sequence> {
  SequenceFluent<Sequence?> findUnique(
      {required SequenceWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueSequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueSequence',
    );
    final future = query(SequenceScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Sequence.fromJson(json.cast<String, dynamic>())
            : null);
    return SequenceFluent<Sequence?>(
      future,
      query,
    );
  }

  SequenceFluent<Sequence> findUniqueOrThrow(
      {required SequenceWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueSequenceOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueSequenceOrThrow',
    );
    final future = query(SequenceScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Sequence.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Sequence)'));
    return SequenceFluent<Sequence>(
      future,
      query,
    );
  }

  SequenceFluent<Sequence?> findFirst({
    SequenceWhereInput? where,
    Iterable<SequenceOrderByWithRelationInput>? orderBy,
    SequenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<SequenceScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstSequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstSequence',
    );
    final future = query(SequenceScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Sequence.fromJson(json.cast<String, dynamic>())
            : null);
    return SequenceFluent<Sequence?>(
      future,
      query,
    );
  }

  SequenceFluent<Sequence> findFirstOrThrow({
    SequenceWhereInput? where,
    Iterable<SequenceOrderByWithRelationInput>? orderBy,
    SequenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<SequenceScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstSequenceOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstSequenceOrThrow',
    );
    final future = query(SequenceScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Sequence.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Sequence)'));
    return SequenceFluent<Sequence>(
      future,
      query,
    );
  }

  Future<Iterable<Sequence>> findMany({
    SequenceWhereInput? where,
    Iterable<SequenceOrderByWithRelationInput>? orderBy,
    SequenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<SequenceScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManySequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManySequence',
    );
    final fields = SequenceScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManySequence) => findManySequence.map(
        (Map findManySequence) => Sequence.fromJson(findManySequence.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  SequenceFluent<Sequence> create({required SequenceCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneSequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneSequence',
    );
    final future = query(SequenceScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Sequence.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Sequence)'));
    return SequenceFluent<Sequence>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<SequenceCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManySequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManySequence',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManySequence) =>
        AffectedRowsOutput.fromJson(createManySequence.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  SequenceFluent<Sequence?> update({
    required SequenceUpdateInput data,
    required SequenceWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneSequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneSequence',
    );
    final future = query(SequenceScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Sequence.fromJson(json.cast<String, dynamic>())
            : null);
    return SequenceFluent<Sequence?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required SequenceUpdateManyMutationInput data,
    SequenceWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManySequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManySequence',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManySequence) =>
        AffectedRowsOutput.fromJson(updateManySequence.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  SequenceFluent<Sequence> upsert({
    required SequenceWhereUniqueInput where,
    required SequenceCreateInput create,
    required SequenceUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneSequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneSequence',
    );
    final future = query(SequenceScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Sequence.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Sequence)'));
    return SequenceFluent<Sequence>(
      future,
      query,
    );
  }

  SequenceFluent<Sequence?> delete({required SequenceWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneSequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneSequence',
    );
    final future = query(SequenceScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Sequence.fromJson(json.cast<String, dynamic>())
            : null);
    return SequenceFluent<Sequence?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({SequenceWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManySequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManySequence',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManySequence) =>
        AffectedRowsOutput.fromJson(deleteManySequence.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateSequence aggregate({
    SequenceWhereInput? where,
    Iterable<SequenceOrderByWithRelationInput>? orderBy,
    SequenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateSequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateSequence',
    );
    return AggregateSequence(query);
  }

  Future<Iterable<SequenceGroupByOutputType>> groupBy({
    SequenceWhereInput? where,
    Iterable<SequenceOrderByWithAggregationInput>? orderBy,
    required Iterable<SequenceScalarFieldEnum> by,
    SequenceScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBySequence',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBySequence',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBySequence) =>
        groupBySequence.map((Map groupBySequence) =>
            SequenceGroupByOutputType.fromJson(groupBySequence.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class SequenceGroupByOutputType implements _i1.JsonSerializable {
  const SequenceGroupByOutputType({this.data});

  factory SequenceGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$SequenceGroupByOutputTypeFromJson(json);

  final String? data;

  @override
  Map<String, dynamic> toJson() => _$SequenceGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateSequence {
  const AggregateSequence(this.$query);

  final _i1.PrismaFluentQuery $query;

  SequenceCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return SequenceCountAggregateOutputType(query);
  }

  SequenceMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return SequenceMinAggregateOutputType(query);
  }

  SequenceMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return SequenceMaxAggregateOutputType(query);
  }
}

class SequenceCountAggregateOutputType {
  const SequenceCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> data() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'data',
          fields: fields,
        )
      ]),
      key: r'data',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class SequenceMinAggregateOutputType {
  const SequenceMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> data() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'data',
          fields: fields,
        )
      ]),
      key: r'data',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class SequenceMaxAggregateOutputType {
  const SequenceMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> data() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'data',
          fields: fields,
        )
      ]),
      key: r'data',
    );
    return query(const []).then((value) => (value as String?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgIHByb3ZpZGVyID0gImRhcnQgcnVuIG9ybSIKICAgb3V0cHV0ID0gIi4uL2xpYi9nZW5lcmF0ZWQiCn0KCmRhdGFzb3VyY2UgZGIgewogIHByb3ZpZGVyID0gIm15c3FsIgogIHVybCAgICAgID0gZW52KCJEQVRBQkFTRV9VUkwiKQp9Cgptb2RlbCBTZXF1ZW5jZSB7CiAgZGF0YSBTdHJpbmcgQHVuaXF1ZQp9Cg==',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'C:\Users\93601\AppData\Local\npm-cache\_npx\2778af9cee32ff87\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );

  _i1.ModelDelegate<Sequence> get sequence => _i1.ModelDelegate<Sequence>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
