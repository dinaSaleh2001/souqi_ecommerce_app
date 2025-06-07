import 'package:ecommerceapp/models/product_model.dart';
import 'package:ecommerceapp/screens/Detail/details_screen.dart';
import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';



class SearchPage extends StatefulWidget {
  const SearchPage({
    super.key,
  });

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final Product product;

  List<Product> displayedList = [];
  TextEditingController searchController = TextEditingController();

  void updateList(String value) {
    if (value.isEmpty) {
      setState(() {
        displayedList = [];
      });
    } else {
      setState(() {
        displayedList = all.where((product) {
          final titleLower = product.title.toLowerCase();
          final valueLower = value.toLowerCase();
          return titleLower.startsWith(valueLower);
        }).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search ',
          style: TextStyle(color: kprimarytColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Enter name of the product',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          searchController.clear();
                          updateList('');
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: updateList,
            ),
            const SizedBox(height: 10),
            Expanded(
                child: displayedList.isEmpty
                    ? const Center(
                        child: Text('There are no search results'),
                      )
                    : ListView.builder(
                        itemCount: displayedList.length,
                        itemBuilder: (context, index) {
                          final product = displayedList[index];
                          return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsScreen(product: product),
                                  ),
                                );
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 4,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  // ignore: unnecessary_null_comparison
                                  leading: product.image != null
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            product.image,
                                            width: 60,
                                            height: 60,
                                            fit: BoxFit.cover,
                                          ),
                                        )
                                      : Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Icon(Icons.image_not_supported,
                                              color: Colors.grey.shade600),
                                        ),
                                  title: Text(
                                    product.title,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  subtitle: Text(
                                    product.description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  trailing: const Icon(Icons.arrow_forward_ios,
                                      size: 16, color: Colors.grey),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DetailsScreen(product: product),
                                      ),
                                    );
                                  },
                                ),
                              )
                              // Card(
                              //   child: ListTile(
                              //     title: Text(product.title),
                              //     subtitle: Text(product.description),
                              //   ),
                              // ),
                              );
                        },
                      )),
          ],
        ),
      ),
    );
  }
}
