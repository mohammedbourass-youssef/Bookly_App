import 'package:bookly_app/Features/Home/Presentation/Widgets/CustomAppBar.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/FeaturedListView.dart';
import 'package:bookly_app/Features/Home/Presentation/Widgets/MostRelevantBooks.dart';
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

