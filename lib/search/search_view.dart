import 'package:flutter/material.dart';
import 'package:hoiqoo/class/ui/offer_ui.dart';
import 'package:hoiqoo/mock_data/offer_ui_mock_data.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<OfferUi> offerUiList = [
      OfferUiMockData.data1,
      OfferUiMockData.data2,
      OfferUiMockData.data3,
      OfferUiMockData.data1,
      OfferUiMockData.data2,
      OfferUiMockData.data3,
      OfferUiMockData.data1,
      OfferUiMockData.data2,
      OfferUiMockData.data3,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('募集をさがす'),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 4 / 5,
              ),
              itemCount: offerUiList.length,
              itemBuilder: (context, index) {
                final offerUi = offerUiList[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Colors.white,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: SizedBox(
                          height: 120,
                          width: double.infinity,
                          child: Image.network(
                            offerUi.profileImageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        offerUi.enterpriseName,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        offerUi.workingHours,
                      ),
                      Text(
                        offerUi.address,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        offerUi.remuneration,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (final tag in offerUi.tags)
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                tag,
                                style: const TextStyle(
                                  color: Color(0xFFF08784),
                                ),
                              ),
                            ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 64,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFFF08784),
        icon: const Icon(Icons.search_rounded),
        label: const Text('日付・条件を選択する'),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
