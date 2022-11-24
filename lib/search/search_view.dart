import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                //TODO MediaQuery使いたい
                childAspectRatio: 4 / 5,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
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
                          child: Image.asset(
                            "assets/images/oden_icon.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'スーパー保育園',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        '2022/11/14 10:00 - 13:00',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        'カリフォルニア州',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        '¥5,000',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '#交通費支給',
                            // NOTE: 桃色のテキストをtextThemeで定義したほうが良さそう
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: const Color(0xFFF08784),
                                    ),
                          )
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
