import 'package:hoiqoo/class/ui/offer_ui.dart';

class OfferUiMockData {
  final data1 = OfferUi(
      offerId: 1,
      enterpriseName: 'きぼう保育園',
      startAt: DateTime(2022, 11, 25, 12, 00),
      endAt: DateTime(2022, 11, 25, 15, 00),
      address: '千葉県松戸市希望が丘 1-12-3',
      remuneration: 5000,
      tags: ['交通費支給', '昼食支給'],
      profileImageUrl:
          'https://www.tenryu-kohseikai.or.jp/media/14nagisa-top01.jpg');

  final data2 = OfferUi(
      offerId: 2,
      enterpriseName: 'みらい保育園',
      startAt: DateTime(2022, 11, 25, 12, 00),
      endAt: DateTime(2022, 11, 25, 17, 00),
      address: '千葉県市川市未来区 3-2-12',
      remuneration: 8000,
      tags: ['駐車場あり', '駐輪場あり'],
      profileImageUrl:
          'https://choukyuu.ed.jp/kirakira/wp-content/themes/kirakira/images/top/img_intro.jpg');

  final data3 = OfferUi(
      offerId: 3,
      enterpriseName: 'あした保育園',
      startAt: DateTime(2022, 11, 26, 10, 00),
      endAt: DateTime(2022, 11, 25, 13, 00),
      address: '千葉県市川市明日区 3-1-12',
      remuneration: 4500,
      tags: [],
      profileImageUrl:
          'https://hinode.or.jp/cmswp/wp-content/uploads/2017/07/minamiyononiji-pc.jpg');
}
