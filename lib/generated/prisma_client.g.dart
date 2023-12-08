// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SequenceWhereInput _$SequenceWhereInputFromJson(Map<String, dynamic> json) =>
    SequenceWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => SequenceWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => SequenceWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => SequenceWhereInput.fromJson(e as Map<String, dynamic>)),
      data: json['data'] == null
          ? null
          : StringFilter.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SequenceWhereInputToJson(SequenceWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('data', instance.data?.toJson());
  return val;
}

SequenceOrderByWithRelationInput _$SequenceOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    SequenceOrderByWithRelationInput(
      data: $enumDecodeNullable(_$SortOrderEnumMap, json['data']),
    );

Map<String, dynamic> _$SequenceOrderByWithRelationInputToJson(
    SequenceOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', _$SortOrderEnumMap[instance.data]);
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

SequenceWhereUniqueInput _$SequenceWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    SequenceWhereUniqueInput(
      data: json['data'] as String?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => SequenceWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => SequenceWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => SequenceWhereInput.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$SequenceWhereUniqueInputToJson(
    SequenceWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  return val;
}

SequenceOrderByWithAggregationInput
    _$SequenceOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        SequenceOrderByWithAggregationInput(
          data: $enumDecodeNullable(_$SortOrderEnumMap, json['data']),
          $count: json['_count'] == null
              ? null
              : SequenceCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : SequenceMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : SequenceMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$SequenceOrderByWithAggregationInputToJson(
    SequenceOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', _$SortOrderEnumMap[instance.data]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

SequenceScalarWhereWithAggregatesInput
    _$SequenceScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        SequenceScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              SequenceScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              SequenceScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              SequenceScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          data: json['data'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$SequenceScalarWhereWithAggregatesInputToJson(
    SequenceScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('data', instance.data?.toJson());
  return val;
}

SequenceCreateInput _$SequenceCreateInputFromJson(Map<String, dynamic> json) =>
    SequenceCreateInput(
      data: json['data'] as String,
    );

Map<String, dynamic> _$SequenceCreateInputToJson(
        SequenceCreateInput instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

SequenceUncheckedCreateInput _$SequenceUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    SequenceUncheckedCreateInput(
      data: json['data'] as String,
    );

Map<String, dynamic> _$SequenceUncheckedCreateInputToJson(
        SequenceUncheckedCreateInput instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

SequenceUpdateInput _$SequenceUpdateInputFromJson(Map<String, dynamic> json) =>
    SequenceUpdateInput(
      data: json['data'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SequenceUpdateInputToJson(SequenceUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

SequenceUncheckedUpdateInput _$SequenceUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    SequenceUncheckedUpdateInput(
      data: json['data'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SequenceUncheckedUpdateInputToJson(
    SequenceUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

SequenceCreateManyInput _$SequenceCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    SequenceCreateManyInput(
      data: json['data'] as String,
    );

Map<String, dynamic> _$SequenceCreateManyInputToJson(
        SequenceCreateManyInput instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

SequenceUpdateManyMutationInput _$SequenceUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    SequenceUpdateManyMutationInput(
      data: json['data'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SequenceUpdateManyMutationInputToJson(
    SequenceUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

SequenceUncheckedUpdateManyInput _$SequenceUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    SequenceUncheckedUpdateManyInput(
      data: json['data'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SequenceUncheckedUpdateManyInputToJson(
    SequenceUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

SequenceCountOrderByAggregateInput _$SequenceCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    SequenceCountOrderByAggregateInput(
      data: $enumDecodeNullable(_$SortOrderEnumMap, json['data']),
    );

Map<String, dynamic> _$SequenceCountOrderByAggregateInputToJson(
    SequenceCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', _$SortOrderEnumMap[instance.data]);
  return val;
}

SequenceMaxOrderByAggregateInput _$SequenceMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    SequenceMaxOrderByAggregateInput(
      data: $enumDecodeNullable(_$SortOrderEnumMap, json['data']),
    );

Map<String, dynamic> _$SequenceMaxOrderByAggregateInputToJson(
    SequenceMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', _$SortOrderEnumMap[instance.data]);
  return val;
}

SequenceMinOrderByAggregateInput _$SequenceMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    SequenceMinOrderByAggregateInput(
      data: $enumDecodeNullable(_$SortOrderEnumMap, json['data']),
    );

Map<String, dynamic> _$SequenceMinOrderByAggregateInputToJson(
    SequenceMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', _$SortOrderEnumMap[instance.data]);
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

Sequence _$SequenceFromJson(Map<String, dynamic> json) => Sequence(
      data: json['data'] as String,
    );

Map<String, dynamic> _$SequenceToJson(Sequence instance) => <String, dynamic>{
      'data': instance.data,
    };

SequenceGroupByOutputType _$SequenceGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    SequenceGroupByOutputType(
      data: json['data'] as String?,
    );

Map<String, dynamic> _$SequenceGroupByOutputTypeToJson(
    SequenceGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
