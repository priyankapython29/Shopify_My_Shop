// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_card_list.dart';

/// This is auto generated file for isar data base table
/// @author Priyanka

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAddToCardDBClassCollection on Isar {
  IsarCollection<AddToCardDBClass> get addToCardDBClass => this.collection();
}

const AddToCardDBClassSchema = CollectionSchema(
  name: r'AddToCardDBClass',
  id: -2010461414396477126,
  properties: {
    r'image': PropertySchema(
      id: 0,
      name: r'image',
      type: IsarType.string,
    ),
    r'item_count': PropertySchema(
      id: 1,
      name: r'item_count',
      type: IsarType.long,
    ),
    r'price': PropertySchema(
      id: 2,
      name: r'price',
      type: IsarType.string,
    ),
    r'product_id': PropertySchema(
      id: 3,
      name: r'product_id',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 4,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _addToCardDBClassEstimateSize,
  serialize: _addToCardDBClassSerialize,
  deserialize: _addToCardDBClassDeserialize,
  deserializeProp: _addToCardDBClassDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _addToCardDBClassGetId,
  getLinks: _addToCardDBClassGetLinks,
  attach: _addToCardDBClassAttach,
  version: '3.1.0+1',
);

int _addToCardDBClassEstimateSize(
  AddToCardDBClass object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.price;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _addToCardDBClassSerialize(
  AddToCardDBClass object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.image);
  writer.writeLong(offsets[1], object.itemCount);
  writer.writeString(offsets[2], object.price);
  writer.writeLong(offsets[3], object.productId);
  writer.writeString(offsets[4], object.title);
}

AddToCardDBClass _addToCardDBClassDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AddToCardDBClass();
  object.id = id;
  object.image = reader.readStringOrNull(offsets[0]);
  object.itemCount = reader.readLongOrNull(offsets[1]);
  object.price = reader.readStringOrNull(offsets[2]);
  object.productId = reader.readLongOrNull(offsets[3]);
  object.title = reader.readStringOrNull(offsets[4]);
  return object;
}

P _addToCardDBClassDeserializeProp<P>(
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
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _addToCardDBClassGetId(AddToCardDBClass object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _addToCardDBClassGetLinks(AddToCardDBClass object) {
  return [];
}

void _addToCardDBClassAttach(
    IsarCollection<dynamic> col, Id id, AddToCardDBClass object) {
  object.id = id;
}

extension AddToCardDBClassQueryWhereSort
    on QueryBuilder<AddToCardDBClass, AddToCardDBClass, QWhere> {
  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AddToCardDBClassQueryWhere
    on QueryBuilder<AddToCardDBClass, AddToCardDBClass, QWhereClause> {
  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterWhereClause> idBetween(
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

extension AddToCardDBClassQueryFilter
    on QueryBuilder<AddToCardDBClass, AddToCardDBClass, QFilterCondition> {
  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
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

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      item_countIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'item_count',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      item_countIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'item_count',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      item_countEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'item_count',
        value: value,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      item_countGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'item_count',
        value: value,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      item_countLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'item_count',
        value: value,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      item_countBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'item_count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'price',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'price',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'price',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'price',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: '',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      priceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'price',
        value: '',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      product_idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'product_id',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      product_idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'product_id',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      product_idEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'product_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      product_idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'product_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      product_idLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'product_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      product_idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'product_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension AddToCardDBClassQueryObject
    on QueryBuilder<AddToCardDBClass, AddToCardDBClass, QFilterCondition> {}

extension AddToCardDBClassQueryLinks
    on QueryBuilder<AddToCardDBClass, AddToCardDBClass, QFilterCondition> {}

extension AddToCardDBClassQuerySortBy
    on QueryBuilder<AddToCardDBClass, AddToCardDBClass, QSortBy> {
  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      sortByItem_count() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item_count', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      sortByItem_countDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item_count', Sort.desc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      sortByProduct_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product_id', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      sortByProduct_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product_id', Sort.desc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension AddToCardDBClassQuerySortThenBy
    on QueryBuilder<AddToCardDBClass, AddToCardDBClass, QSortThenBy> {
  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      thenByItem_count() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item_count', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      thenByItem_countDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item_count', Sort.desc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      thenByProduct_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product_id', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      thenByProduct_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'product_id', Sort.desc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QAfterSortBy>
      thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension AddToCardDBClassQueryWhereDistinct
    on QueryBuilder<AddToCardDBClass, AddToCardDBClass, QDistinct> {
  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QDistinct>
      distinctByItem_count() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'item_count');
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QDistinct> distinctByPrice(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QDistinct>
      distinctByProduct_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'product_id');
    });
  }

  QueryBuilder<AddToCardDBClass, AddToCardDBClass, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension AddToCardDBClassQueryProperty
    on QueryBuilder<AddToCardDBClass, AddToCardDBClass, QQueryProperty> {
  QueryBuilder<AddToCardDBClass, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AddToCardDBClass, String?, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<AddToCardDBClass, int?, QQueryOperations> item_countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'item_count');
    });
  }

  QueryBuilder<AddToCardDBClass, String?, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<AddToCardDBClass, int?, QQueryOperations> product_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'product_id');
    });
  }

  QueryBuilder<AddToCardDBClass, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
