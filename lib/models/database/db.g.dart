// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUnkownYetCollection on Isar {
  IsarCollection<UnkownYet> get UnkownYets => this.collection();
}

const UnkownYetSchema = CollectionSchema(
  name: r'UnkownYet',
  id: -5759063932047082286,
  properties: {
    r'mouse': PropertySchema(
      id: 0,
      name: r'mouse',
      type: IsarType.string,
    )
  },
  estimateSize: _UnkownYetEstimateSize,
  serialize: _UnkownYetSerialize,
  deserialize: _UnkownYetDeserialize,
  deserializeProp: _UnkownYetDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _UnkownYetGetId,
  getLinks: _UnkownYetGetLinks,
  attach: _UnkownYetAttach,
  version: '3.1.0+1',
);

int _UnkownYetEstimateSize(
  UnkownYet object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.mouse.length * 3;
  return bytesCount;
}

void _UnkownYetSerialize(
  UnkownYet object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.mouse);
}

UnkownYet _UnkownYetDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UnkownYet();
  object.id = id;
  object.mouse = reader.readString(offsets[0]);
  return object;
}

P _UnkownYetDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _UnkownYetGetId(UnkownYet object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _UnkownYetGetLinks(UnkownYet object) {
  return [];
}

void _UnkownYetAttach(
    IsarCollection<dynamic> col, Id id, UnkownYet object) {
  object.id = id;
}

extension UnkownYetQueryWhereSort
    on QueryBuilder<UnkownYet, UnkownYet, QWhere> {
  QueryBuilder<UnkownYet, UnkownYet, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UnkownYetQueryWhere
    on QueryBuilder<UnkownYet, UnkownYet, QWhereClause> {
  QueryBuilder<UnkownYet, UnkownYet, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<UnkownYet, UnkownYet, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterWhereClause> idBetween(
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

extension UnkownYetQueryFilter
    on QueryBuilder<UnkownYet, UnkownYet, QFilterCondition> {
  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      mouseEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      mouseGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      mouseLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      mouseBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mouse',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      mouseStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      mouseEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      mouseContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mouse',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      mouseMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mouse',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      mouseIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mouse',
        value: '',
      ));
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterFilterCondition>
      mouseIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mouse',
        value: '',
      ));
    });
  }
}

extension UnkownYetQueryObject
    on QueryBuilder<UnkownYet, UnkownYet, QFilterCondition> {}

extension UnkownYetQueryLinks
    on QueryBuilder<UnkownYet, UnkownYet, QFilterCondition> {}

extension UnkownYetQuerySortBy
    on QueryBuilder<UnkownYet, UnkownYet, QSortBy> {
  QueryBuilder<UnkownYet, UnkownYet, QAfterSortBy> sortByMouse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mouse', Sort.asc);
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterSortBy> sortByMouseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mouse', Sort.desc);
    });
  }
}

extension UnkownYetQuerySortThenBy
    on QueryBuilder<UnkownYet, UnkownYet, QSortThenBy> {
  QueryBuilder<UnkownYet, UnkownYet, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterSortBy> thenByMouse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mouse', Sort.asc);
    });
  }

  QueryBuilder<UnkownYet, UnkownYet, QAfterSortBy> thenByMouseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mouse', Sort.desc);
    });
  }
}

extension UnkownYetQueryWhereDistinct
    on QueryBuilder<UnkownYet, UnkownYet, QDistinct> {
  QueryBuilder<UnkownYet, UnkownYet, QDistinct> distinctByMouse(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mouse', caseSensitive: caseSensitive);
    });
  }
}

extension UnkownYetQueryProperty
    on QueryBuilder<UnkownYet, UnkownYet, QQueryProperty> {
  QueryBuilder<UnkownYet, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UnkownYet, String, QQueryOperations> mouseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mouse');
    });
  }
}
