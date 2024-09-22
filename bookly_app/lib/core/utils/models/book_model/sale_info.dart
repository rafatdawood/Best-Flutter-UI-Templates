import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final String? buyLink;
  final bool? isEbook;

  const SaleInfo({this.buyLink,this.country, this.saleability, this.isEbook});

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
        country: json['country'] as String?,
        saleability: json['saleability'] as String?,
        buyLink: json['buyLink'] as String?,
        isEbook: json['isEbook'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
        'buyLink': buyLink
      };

  @override
  List<Object?> get props => [country, saleability, isEbook];
}
