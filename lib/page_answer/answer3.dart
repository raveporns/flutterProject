import 'package:flutter/material.dart';

class ProductLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Layout"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ส่วนหัว (Header) ของหมวดหมู่สินค้า
          Container(
            width: 230,
            height: 50,
            color: Colors.grey[300],
            child: const Center(
              child: Text(
                "Category: Electronics",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          
          // ส่วนรายการสินค้าภายใน Row แถวที่ 1
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // สินค้าชิ้นที่ 1
                ProductItem(
                  imagePath: 'assets/car2.jpg',
                  productName: 'Laptop',
                  price: '999 THB',
                ),
                // สินค้าชิ้นที่ 2
                ProductItem(
                  imagePath: 'assets/car2.jpg',
                  productName: 'Smartphone',
                  price: '499 THB',
                ),
              ],
            ),
          ),
          
          // ระยะห่างระหว่างแถว
          const SizedBox(height: 20),
          
          // ส่วนรายการสินค้าภายใน Row แถวที่ 2
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // สินค้าชิ้นที่ 3
                ProductItem(
                  imagePath: 'assets/car2.jpg',
                  productName: 'Tablet',
                  price: '799 THB',
                ),
                // สินค้าชิ้นที่ 4
                ProductItem(
                  imagePath: 'assets/car2.jpg',
                  productName: 'Smartwatch',
                  price: '299 THB',
                ),
              ],
            ),
          ),
          
          // เพิ่มรายการสินค้าอื่นๆ ที่ด้านล่างได้ตามต้องการ
        ],
      ),
    );
  }
}

// Widget สำหรับแสดงสินค้าทั้งภาพและรายละเอียด
class ProductItem extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String price;

  const ProductItem({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ฟังก์ชันเมื่อกดที่สินค้า
        print('Product tapped: $productName');
      },
      
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // รูปภาพสินค้า
              Image.asset(
                imagePath,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8),
              // ชื่อสินค้า
              Text(
                productName,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              // ราคา
              Text(
                price,
                style: const TextStyle(fontSize: 14, color: Colors.green),
              ),
            ],
          ),
        ),
      
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductLayout(),
  ));
}
