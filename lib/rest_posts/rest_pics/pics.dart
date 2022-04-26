import 'package:ecom/rest_posts/rest_pics/parser.dart';
import 'package:ecom/rest_posts/rest_pics/request.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PicsPage extends StatefulWidget {
  const PicsPage({Key? key}) : super(key: key);

  @override
  State<PicsPage> createState() => _PicsPageState();
}

class _PicsPageState extends State<PicsPage> {
  List<Pics>? pictures;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    pictures = await Request().getPosts();
    if (pictures != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pics'),
      ),
      body: Scrollbar(
          child: Visibility(
            visible: isLoaded,
            child: ListView.builder(
              itemCount: pictures?.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: CupertinoColors.systemGrey4,
                          boxShadow: const [
                            BoxShadow(
                                color: CupertinoColors.systemGrey5,
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(1, 2)
                            )],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48), // Image radius
                            child: Image.asset('assets/images/backpack.jpg', fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pictures![index].title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
      ),
    );
  }
}
