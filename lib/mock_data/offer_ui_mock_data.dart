import 'package:hoiqoo/class/ui/offer_ui.dart';

class OfferUiMockData {
  static const data1 = OfferUi(
      offerId: 1,
      enterpriseName: 'きぼう保育園',
      workingHours: '2022/11/25 12:00~15:00',
      address: '千葉県松戸市希望が丘 1-12-3',
      remuneration: '¥5,000',
      tags: ['#交通費支給', '#昼食支給'],
      profileImageUrl:
          'https://www.tenryu-kohseikai.or.jp/media/14nagisa-top01.jpg');

  static const data2 = OfferUi(
      offerId: 2,
      enterpriseName: 'みらい保育園',
      workingHours: '2022/11/25 12:00~17:00',
      address: '千葉県市川市未来区 3-2-12',
      remuneration: '¥8,000',
      tags: ['#駐車場あり', '#駐輪場あり'],
      profileImageUrl:
          'https://choukyuu.ed.jp/kirakira/wp-content/themes/kirakira/images/top/img_intro.jpg');

  static const data3 = OfferUi(
      offerId: 3,
      enterpriseName: 'あした保育園',
      workingHours: '2022/11/25 12:00~15:00',
      address: '千葉県市川市明日区 3-1-12',
      remuneration: '¥4,500',
      tags: [],
      profileImageUrl:
          'https://hinode.or.jp/cmswp/wp-content/uploads/2017/07/minamiyononiji-pc.jpg');
}
