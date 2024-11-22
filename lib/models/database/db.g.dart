// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStorageCollection on Isar {
  IsarCollection<Storage> get storages => this.collection();
}

const StorageSchema = CollectionSchema(
  name: r'Storage',
  id: 1211984339887552882,
  properties: {
    r'barcodePNG': PropertySchema(
      id: 0,
      name: r'barcodePNG',
      type: IsarType.longList,
    ),
    r'brand': PropertySchema(
      id: 1,
      name: r'brand',
      type: IsarType.string,
    ),
    r'color': PropertySchema(
      id: 2,
      name: r'color',
      type: IsarType.string,
    ),
    r'destnation': PropertySchema(
      id: 3,
      name: r'destnation',
      type: IsarType.string,
    ),
    r'itemType': PropertySchema(
      id: 4,
      name: r'itemType',
      type: IsarType.string,
    ),
    r'serialNumber': PropertySchema(
      id: 5,
      name: r'serialNumber',
      type: IsarType.string,
    ),
    r'svgData': PropertySchema(
      id: 6,
      name: r'svgData',
      type: IsarType.string,
    )
  },
  estimateSize: _storageEstimateSize,
  serialize: _storageSerialize,
  deserialize: _storageDeserialize,
  deserializeProp: _storageDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _storageGetId,
  getLinks: _storageGetLinks,
  attach: _storageAttach,
  version: '3.1.0+1',
);

int _storageEstimateSize(
  Storage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.barcodePNG;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.brand;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.color;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.destnation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.serialNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.svgData;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _storageSerialize(
  Storage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLongList(offsets[0], object.barcodePNG);
  writer.writeString(offsets[1], object.brand);
  writer.writeString(offsets[2], object.color);
  writer.writeString(offsets[3], object.destnation);
  writer.writeString(offsets[4], object.itemType);
  writer.writeString(offsets[5], object.serialNumber);
  writer.writeString(offsets[6], object.svgData);
}

Storage _storageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Storage();
  object.barcodePNG = reader.readLongList(offsets[0]);
  object.brand = reader.readStringOrNull(offsets[1]);
  object.color = reader.readStringOrNull(offsets[2]);
  object.destnation = reader.readStringOrNull(offsets[3]);
  object.id = id;
  object.itemType = reader.readStringOrNull(offsets[4]);
  object.serialNumber = reader.readStringOrNull(offsets[5]);
  object.svgData = reader.readStringOrNull(offsets[6]);
  return object;
}

P _storageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongList(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _storageGetId(Storage object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _storageGetLinks(Storage object) {
  return [];
}

void _storageAttach(IsarCollection<dynamic> col, Id id, Storage object) {
  object.id = id;
}

extension StorageQueryWhereSort on QueryBuilder<Storage, Storage, QWhere> {
  QueryBuilder<Storage, Storage, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StorageQueryWhere on QueryBuilder<Storage, Storage, QWhereClause> {
  QueryBuilder<Storage, Storage, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Storage, Storage, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Storage, Storage, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Storage, Storage, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StorageQueryFilter
    on QueryBuilder<Storage, Storage, QFilterCondition> {
  QueryBuilder<Storage, Storage, QAfterFilterCondition> barcodePNGIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'barcodePNG',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> barcodePNGIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'barcodePNG',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition>
      barcodePNGElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'barcodePNG',
        value: value,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition>
      barcodePNGElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'barcodePNG',
        value: value,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition>
      barcodePNGElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'barcodePNG',
        value: value,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition>
      barcodePNGElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'barcodePNG',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> barcodePNGLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodePNG',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> barcodePNGIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodePNG',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> barcodePNGIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodePNG',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition>
      barcodePNGLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodePNG',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition>
      barcodePNGLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodePNG',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> barcodePNGLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'barcodePNG',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'brand',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'brand',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'brand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> brandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'color',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> colorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'destnation',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'destnation',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'destnation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'destnation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'destnation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'destnation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'destnation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'destnation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'destnation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'destnation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'destnation',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> destnationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'destnation',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemType',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemType',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemType',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> itemTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemType',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> serialNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serialNumber',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition>
      serialNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serialNumber',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> serialNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> serialNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> serialNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> serialNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serialNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> serialNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> serialNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> serialNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serialNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> serialNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serialNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> serialNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serialNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition>
      serialNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serialNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'svgData',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'svgData',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svgData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'svgData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'svgData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'svgData',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'svgData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'svgData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'svgData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'svgData',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'svgData',
        value: '',
      ));
    });
  }

  QueryBuilder<Storage, Storage, QAfterFilterCondition> svgDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'svgData',
        value: '',
      ));
    });
  }
}

extension StorageQueryObject
    on QueryBuilder<Storage, Storage, QFilterCondition> {}

extension StorageQueryLinks
    on QueryBuilder<Storage, Storage, QFilterCondition> {}

extension StorageQuerySortBy on QueryBuilder<Storage, Storage, QSortBy> {
  QueryBuilder<Storage, Storage, QAfterSortBy> sortByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortByDestnation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destnation', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortByDestnationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destnation', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortByItemType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortByItemTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortBySerialNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serialNumber', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortBySerialNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serialNumber', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortBySvgData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svgData', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> sortBySvgDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svgData', Sort.desc);
    });
  }
}

extension StorageQuerySortThenBy
    on QueryBuilder<Storage, Storage, QSortThenBy> {
  QueryBuilder<Storage, Storage, QAfterSortBy> thenByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenByDestnation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destnation', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenByDestnationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'destnation', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenByItemType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenByItemTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenBySerialNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serialNumber', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenBySerialNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serialNumber', Sort.desc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenBySvgData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svgData', Sort.asc);
    });
  }

  QueryBuilder<Storage, Storage, QAfterSortBy> thenBySvgDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'svgData', Sort.desc);
    });
  }
}

extension StorageQueryWhereDistinct
    on QueryBuilder<Storage, Storage, QDistinct> {
  QueryBuilder<Storage, Storage, QDistinct> distinctByBarcodePNG() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'barcodePNG');
    });
  }

  QueryBuilder<Storage, Storage, QDistinct> distinctByBrand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Storage, Storage, QDistinct> distinctByColor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'color', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Storage, Storage, QDistinct> distinctByDestnation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'destnation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Storage, Storage, QDistinct> distinctByItemType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Storage, Storage, QDistinct> distinctBySerialNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serialNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Storage, Storage, QDistinct> distinctBySvgData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'svgData', caseSensitive: caseSensitive);
    });
  }
}

extension StorageQueryProperty
    on QueryBuilder<Storage, Storage, QQueryProperty> {
  QueryBuilder<Storage, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Storage, List<int>?, QQueryOperations> barcodePNGProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'barcodePNG');
    });
  }

  QueryBuilder<Storage, String?, QQueryOperations> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brand');
    });
  }

  QueryBuilder<Storage, String?, QQueryOperations> colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'color');
    });
  }

  QueryBuilder<Storage, String?, QQueryOperations> destnationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'destnation');
    });
  }

  QueryBuilder<Storage, String?, QQueryOperations> itemTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemType');
    });
  }

  QueryBuilder<Storage, String?, QQueryOperations> serialNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serialNumber');
    });
  }

  QueryBuilder<Storage, String?, QQueryOperations> svgDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'svgData');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetControlCollection on Isar {
  IsarCollection<Control> get controls => this.collection();
}

const ControlSchema = CollectionSchema(
  name: r'Control',
  id: -2555879398145959945,
  properties: {
    r'passWord': PropertySchema(
      id: 0,
      name: r'passWord',
      type: IsarType.string,
    ),
    r'role': PropertySchema(
      id: 1,
      name: r'role',
      type: IsarType.long,
    ),
    r'userName': PropertySchema(
      id: 2,
      name: r'userName',
      type: IsarType.string,
    )
  },
  estimateSize: _controlEstimateSize,
  serialize: _controlSerialize,
  deserialize: _controlDeserialize,
  deserializeProp: _controlDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _controlGetId,
  getLinks: _controlGetLinks,
  attach: _controlAttach,
  version: '3.1.0+1',
);

int _controlEstimateSize(
  Control object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.passWord;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.userName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _controlSerialize(
  Control object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.passWord);
  writer.writeLong(offsets[1], object.role);
  writer.writeString(offsets[2], object.userName);
}

Control _controlDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Control();
  object.id = id;
  object.passWord = reader.readStringOrNull(offsets[0]);
  object.role = reader.readLongOrNull(offsets[1]);
  object.userName = reader.readStringOrNull(offsets[2]);
  return object;
}

P _controlDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _controlGetId(Control object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _controlGetLinks(Control object) {
  return [];
}

void _controlAttach(IsarCollection<dynamic> col, Id id, Control object) {
  object.id = id;
}

extension ControlQueryWhereSort on QueryBuilder<Control, Control, QWhere> {
  QueryBuilder<Control, Control, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ControlQueryWhere on QueryBuilder<Control, Control, QWhereClause> {
  QueryBuilder<Control, Control, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Control, Control, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Control, Control, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Control, Control, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ControlQueryFilter
    on QueryBuilder<Control, Control, QFilterCondition> {
  QueryBuilder<Control, Control, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'passWord',
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'passWord',
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'passWord',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'passWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'passWord',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passWord',
        value: '',
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> passWordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'passWord',
        value: '',
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> roleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'role',
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> roleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'role',
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> roleEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: value,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> roleGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'role',
        value: value,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> roleLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'role',
        value: value,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> roleBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'role',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userName',
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userName',
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userName',
        value: '',
      ));
    });
  }

  QueryBuilder<Control, Control, QAfterFilterCondition> userNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userName',
        value: '',
      ));
    });
  }
}

extension ControlQueryObject
    on QueryBuilder<Control, Control, QFilterCondition> {}

extension ControlQueryLinks
    on QueryBuilder<Control, Control, QFilterCondition> {}

extension ControlQuerySortBy on QueryBuilder<Control, Control, QSortBy> {
  QueryBuilder<Control, Control, QAfterSortBy> sortByPassWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passWord', Sort.asc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> sortByPassWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passWord', Sort.desc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> sortByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> sortByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> sortByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> sortByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }
}

extension ControlQuerySortThenBy
    on QueryBuilder<Control, Control, QSortThenBy> {
  QueryBuilder<Control, Control, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> thenByPassWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passWord', Sort.asc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> thenByPassWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passWord', Sort.desc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> thenByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> thenByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> thenByUserName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.asc);
    });
  }

  QueryBuilder<Control, Control, QAfterSortBy> thenByUserNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userName', Sort.desc);
    });
  }
}

extension ControlQueryWhereDistinct
    on QueryBuilder<Control, Control, QDistinct> {
  QueryBuilder<Control, Control, QDistinct> distinctByPassWord(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'passWord', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Control, Control, QDistinct> distinctByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'role');
    });
  }

  QueryBuilder<Control, Control, QDistinct> distinctByUserName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userName', caseSensitive: caseSensitive);
    });
  }
}

extension ControlQueryProperty
    on QueryBuilder<Control, Control, QQueryProperty> {
  QueryBuilder<Control, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Control, String?, QQueryOperations> passWordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'passWord');
    });
  }

  QueryBuilder<Control, int?, QQueryOperations> roleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'role');
    });
  }

  QueryBuilder<Control, String?, QQueryOperations> userNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userName');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWatcherCollection on Isar {
  IsarCollection<Watcher> get watchers => this.collection();
}

const WatcherSchema = CollectionSchema(
  name: r'Watcher',
  id: 8626635636475944568,
  properties: {
    r'idint': PropertySchema(
      id: 0,
      name: r'idint',
      type: IsarType.long,
    ),
    r'systemLog': PropertySchema(
      id: 1,
      name: r'systemLog',
      type: IsarType.string,
    )
  },
  estimateSize: _watcherEstimateSize,
  serialize: _watcherSerialize,
  deserialize: _watcherDeserialize,
  deserializeProp: _watcherDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _watcherGetId,
  getLinks: _watcherGetLinks,
  attach: _watcherAttach,
  version: '3.1.0+1',
);

int _watcherEstimateSize(
  Watcher object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.systemLog;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _watcherSerialize(
  Watcher object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.idint);
  writer.writeString(offsets[1], object.systemLog);
}

Watcher _watcherDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Watcher();
  object.id = id;
  object.idint = reader.readLong(offsets[0]);
  object.systemLog = reader.readStringOrNull(offsets[1]);
  return object;
}

P _watcherDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _watcherGetId(Watcher object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _watcherGetLinks(Watcher object) {
  return [];
}

void _watcherAttach(IsarCollection<dynamic> col, Id id, Watcher object) {
  object.id = id;
}

extension WatcherQueryWhereSort on QueryBuilder<Watcher, Watcher, QWhere> {
  QueryBuilder<Watcher, Watcher, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WatcherQueryWhere on QueryBuilder<Watcher, Watcher, QWhereClause> {
  QueryBuilder<Watcher, Watcher, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WatcherQueryFilter
    on QueryBuilder<Watcher, Watcher, QFilterCondition> {
  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> idintEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idint',
        value: value,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> idintGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idint',
        value: value,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> idintLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idint',
        value: value,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> idintBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idint',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'systemLog',
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'systemLog',
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'systemLog',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'systemLog',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'systemLog',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'systemLog',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'systemLog',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'systemLog',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'systemLog',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'systemLog',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'systemLog',
        value: '',
      ));
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterFilterCondition> systemLogIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'systemLog',
        value: '',
      ));
    });
  }
}

extension WatcherQueryObject
    on QueryBuilder<Watcher, Watcher, QFilterCondition> {}

extension WatcherQueryLinks
    on QueryBuilder<Watcher, Watcher, QFilterCondition> {}

extension WatcherQuerySortBy on QueryBuilder<Watcher, Watcher, QSortBy> {
  QueryBuilder<Watcher, Watcher, QAfterSortBy> sortByIdint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idint', Sort.asc);
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterSortBy> sortByIdintDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idint', Sort.desc);
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterSortBy> sortBySystemLog() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'systemLog', Sort.asc);
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterSortBy> sortBySystemLogDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'systemLog', Sort.desc);
    });
  }
}

extension WatcherQuerySortThenBy
    on QueryBuilder<Watcher, Watcher, QSortThenBy> {
  QueryBuilder<Watcher, Watcher, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterSortBy> thenByIdint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idint', Sort.asc);
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterSortBy> thenByIdintDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idint', Sort.desc);
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterSortBy> thenBySystemLog() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'systemLog', Sort.asc);
    });
  }

  QueryBuilder<Watcher, Watcher, QAfterSortBy> thenBySystemLogDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'systemLog', Sort.desc);
    });
  }
}

extension WatcherQueryWhereDistinct
    on QueryBuilder<Watcher, Watcher, QDistinct> {
  QueryBuilder<Watcher, Watcher, QDistinct> distinctByIdint() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idint');
    });
  }

  QueryBuilder<Watcher, Watcher, QDistinct> distinctBySystemLog(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'systemLog', caseSensitive: caseSensitive);
    });
  }
}

extension WatcherQueryProperty
    on QueryBuilder<Watcher, Watcher, QQueryProperty> {
  QueryBuilder<Watcher, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Watcher, int, QQueryOperations> idintProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idint');
    });
  }

  QueryBuilder<Watcher, String?, QQueryOperations> systemLogProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'systemLog');
    });
  }
}
