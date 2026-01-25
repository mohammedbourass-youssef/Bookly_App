import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomAppBar.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomBookItemListView.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/FeaturedListView.dart';
import 'package:flutter/material.dart';

class Homepagebody extends StatelessWidget {
  const Homepagebody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomAppBar()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: FeaturedListView(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                textAlign: TextAlign.start,
                'Most Relevant',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SliverFillRemaining(child: MostRelevantBooks()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
    );
  }
}

class MostRelevantBooks extends StatelessWidget {
  const MostRelevantBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return MostRevelentItem();
      },
    );
  }
}

class MostRevelentItem extends StatelessWidget {
  const MostRevelentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        children: [
          CustomBookItemListView(),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  'Harry potter and the philosopher\'s stone',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Author Name',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'FREE',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.star, color: Colors.amber, size: 15),
                  SizedBox(width: 5),
                  Text(
                    '4.5',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
