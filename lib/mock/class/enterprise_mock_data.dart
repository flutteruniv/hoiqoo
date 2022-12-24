import '../../class/firestore/enterprise/enterprise.dart';

class EnterpriseMockData {
  final data1 = Enterprise(
    id: 1,
    createdAt: DateTime(2022, 12, 19, 10, 00),
    updatedAt: DateTime(2022, 12, 19, 10, 00),
    name: 'きぼう保育園',
    address: '千葉県松戸市希望が丘 1-12-3',
    profileImageUrl:
        'https://www.tenryu-kohseikai.or.jp/media/14nagisa-top01.jpg',
  );

  final data2 = Enterprise(
    id: 2,
    createdAt: DateTime(2022, 12, 19, 10, 00),
    updatedAt: DateTime(2022, 12, 19, 10, 00),
    name: 'みらい保育園',
    address: '千葉県市川市未来区 3-2-12',
    profileImageUrl:
        'https://choukyuu.ed.jp/kirakira/wp-content/themes/kirakira/images/top/img_intro.jpg',
  );

  final data3 = Enterprise(
    id: 3,
    createdAt: DateTime(2022, 12, 19, 10, 00),
    updatedAt: DateTime(2022, 12, 19, 10, 00),
    name: 'あした保育園',
    address: '千葉県市川市明日区 3-1-12',
    profileImageUrl:
        'https://hinode.or.jp/cmswp/wp-content/uploads/2017/07/minamiyononiji-pc.jpg',
  );
}
