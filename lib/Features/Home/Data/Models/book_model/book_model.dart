import 'dart:convert';

import 'package:collection/collection.dart';

import 'item.dart';

class BookModel {
	String? kind;
	int? totalItems;
	List<Item>? items;

	BookModel({this.kind, this.totalItems, this.items});

	@override
	String toString() {
		return 'BookModel(kind: $kind, totalItems: $totalItems, items: $items)';
	}

	factory BookModel.fromMap(Map<String, dynamic> data) => BookModel(
				kind: data['kind'] as String?,
				totalItems: data['totalItems'] as int?,
				items: (data['items'] as List<dynamic>?)
						?.map((e) => Item.fromMap(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toMap() => {
				'kind': kind,
				'totalItems': totalItems,
				'items': items?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [BookModel].
	factory BookModel.fromJson(String data) {
		return BookModel.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [BookModel] to a JSON string.
	String toJson() => json.encode(toMap());

	BookModel copyWith({
		String? kind,
		int? totalItems,
		List<Item>? items,
	}) {
		return BookModel(
			kind: kind ?? this.kind,
			totalItems: totalItems ?? this.totalItems,
			items: items ?? this.items,
		);
	}

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! BookModel) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode => kind.hashCode ^ totalItems.hashCode ^ items.hashCode;
}
