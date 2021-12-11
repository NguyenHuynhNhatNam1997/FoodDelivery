import 'package:flutter/material.dart';
import '../models/order.dart';
import '../data/data.dart';

class RecentOrders extends StatelessWidget {
  Widget _buildRecentOrders(BuildContext context, Order order) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: 320,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 1.0, color: Colors.grey.shade200)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  width: 100,
                  height: 100,
                  image: AssetImage(order.food.imageUrl),
                ),
              )
            ],
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order.food.name,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.0),
                Text(
                  order.restaurant.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.0),
                Text(
                  order.date,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            width: 48.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: IconButton(
              icon: Icon(Icons.add),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end, // mainAxisAlignmentdành cho row
      crossAxisAlignment: CrossAxisAlignment.start,
      // crossAxisAlignment dành cho column // horizontal chiều ngang, vertical chiều dọc
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Recent Oders",
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2),
          ),
        ),
        // Container(
        //   child: ListView.builder(
        //       physics: BouncingScrollPhysics(),
        //       padding: EdgeInsets.only(left: 10),
        //       scrollDirection: Axis.horizontal,
        //       itemCount: currentUser.orders.length,
        //       itemBuilder: (BuildContext context, int index) {
        //         Order order = currentUser.orders[index];
        //         return _buildRecentOrders(context, order);
        //       }),
        // )
      ],
    );
  }
}
