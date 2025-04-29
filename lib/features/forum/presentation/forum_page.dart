import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({super.key});

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: RefreshIndicator(
        onRefresh: () async {},
        child: CustomScrollView(
          slivers: [
            // app bar
            SliverAppBar(
              snap: true,
              pinned: true,
              floating: true,
              expandedHeight: 150,
              backgroundColor: Colors.white,
              leading: CupertinoNavigationBarBackButton(
                onPressed: () => Navigator.pop(context),
                color: Colors.black,
              ),
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  double collapsedHeight = constraints.biggest.height - top;
                  bool showTitle = (collapsedHeight == 150);
                  return FlexibleSpaceBar(
                    centerTitle: true,
                    background: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF062565),
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo/logo.png'),
                        ),
                      ),
                    ),

                    title: AnimatedSwitcher(
                      duration: Duration(milliseconds: 500),
                      reverseDuration: Duration(milliseconds: 100),
                      child: switch (!showTitle) {
                        true => Text(
                          key: ValueKey(1),
                          'Forum',
                          style: TextStyle(color: Colors.black),
                        ),
                        false => SizedBox(key: ValueKey(0)),
                      },
                    ),
                  );
                },
              ),
            ),

            // body
            SliverList(
              delegate: SliverChildListDelegate([
                PostCard(
                  content: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Selamat pagi, Selamat beraktifitas semua....'),
                  ),
                ),
                SizedBox(height: 12),
                PostCard(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 12),
                        child: Text('Galeri Kami di Gerindra kemarin'),
                      ),
                      ImageGridPreview.url(
                        imageUrls: [
                          'assets/images/forum/kegiatan-1.png',
                          'assets/images/forum/kegiatan-2.png',
                          'assets/images/forum/kegiatan-3.png',
                          'assets/images/forum/kegiatan-1.png',
                          'assets/images/forum/kegiatan-3.png',
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                PostCard(
                  content: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Enaknya hari minggu kita kemana nih gengs ? udah lama juga gk ngadain acara Kopdar, ada yang punya solusi kemana ? Tulis dikomen ya....',
                    ),
                  ),
                ),
                SizedBox(height: 12),
                PostCard(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 0, 0, 12),
                        child: Text(
                          'Selamat pagi selamat beraktivitas semuanya',
                        ),
                      ),
                      ImageGridPreview.url(
                        imageUrls: ['assets/images/forum/kegiatan-1.png'],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.content});

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              spacing: 16,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  backgroundImage: AssetImage(
                    'assets/images/forum/kegiatan-1.png',
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aldi Robana',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '18 m',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert, size: 20),
              ],
            ),
          ),
          SizedBox(height: 10),

          content,
          SizedBox(height: 10),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  spacing: 12,
                  children: [
                    Icon(Icons.thumb_up_alt),
                    Text('6 Suka', style: TextStyle(fontSize: 10)),
                    Spacer(),
                    Text('9 Komentar', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
              Divider(color: Colors.grey),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              spacing: 12,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.thumb_up_alt_outlined),
                                Text('Suka', style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              spacing: 12,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.chat_bubble_outline),
                                Text(
                                  'Komentar',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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

class ImageGridPreview extends StatelessWidget {
  const ImageGridPreview._({
    super.key,
    this.onShowMedias,
    this.height = 350,
    this.margin,
    this.onDeleteMedia,
    this.width = double.infinity,
    this.imageFiles = const <File>[],
    this.imageUrls = const <String>[],
  });

  factory ImageGridPreview.file({
    Key? key,
    required List<File> imageFiles,
    VoidCallback? onShowMedias,
    double height = 350,
    EdgeInsetsGeometry? margin,
    ValueChanged<File>? onDeleteMedia,
    double width = double.infinity,
  }) {
    return ImageGridPreview._(
      key: key,
      imageFiles: imageFiles,
      height: height,
      width: width,
      margin: margin,
      onDeleteMedia: onDeleteMedia,
      onShowMedias: onShowMedias,
    );
  }

  factory ImageGridPreview.url({
    Key? key,
    required List<String> imageUrls,
    VoidCallback? onShowMedias,
    double height = 350,
    EdgeInsetsGeometry? margin,
    double width = double.infinity,
  }) {
    return ImageGridPreview._(
      key: key,
      imageUrls: imageUrls,
      height: height,
      width: width,
      margin: margin,
      onShowMedias: onShowMedias,
    );
  }

  final double height;
  final double width;
  final List<File> imageFiles;
  final List<String> imageUrls;
  final VoidCallback? onShowMedias;
  final ValueChanged<File>? onDeleteMedia;
  final EdgeInsetsGeometry? margin;

  int get mediaCount =>
      imageFiles.isNotEmpty ? imageFiles.length : imageUrls.length;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      child: Builder(
        builder: (_) {
          final total = mediaCount;
          if (total == 0) return const SizedBox();

          //* 1 PHOTO
          if (total == 1) {
            return _buildImage(0);

            //* 2 PHOTO
          } else if (total == 2) {
            return Row(
              children: [
                Expanded(child: _buildImage(0)),
                const SizedBox(width: 4),
                Expanded(child: _buildImage(1)),
              ],
            );

            //* 3 PHOTO
          } else if (total == 3) {
            return Row(
              children: [
                Expanded(child: _buildImage(0)),
                const SizedBox(width: 4),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(child: _buildImage(1)),
                      const SizedBox(height: 4),
                      Expanded(child: _buildImage(2)),
                    ],
                  ),
                ),
              ],
            );

            //* 4 PHOTO
          } else if (total == 4) {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(flex: 2, child: _buildImage(0)),
                      const SizedBox(height: 4),
                      Expanded(child: _buildImage(1)),
                    ],
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(child: _buildImage(2)),
                      const SizedBox(height: 4),
                      Expanded(child: _buildImage(3)),
                    ],
                  ),
                ),
              ],
            );

            //* SHOW MORE PHOTO
          } else {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(child: _buildImage(0)),
                      const SizedBox(height: 4),
                      Expanded(child: _buildImage(1)),
                    ],
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(child: _buildImage(2)),
                      const SizedBox(height: 4),
                      Expanded(child: _buildImage(3)),
                      const SizedBox(height: 4),
                      Expanded(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            _buildImage(4),
                            Container(
                              color: Colors.black54,
                              alignment: Alignment.center,
                              child: Text(
                                '+${total - 4}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildImage(int index) {
    return Stack(
      children: [
        Builder(
          builder: (context) {
            if (imageFiles.isNotEmpty) {
              return Image.file(
                imageFiles[index],
                width: width,
                height: height,
                fit: BoxFit.cover,
              );
            } else {
              return Image.asset(
                imageUrls[index],
                width: width,
                height: height,
                fit: BoxFit.cover,
              );
            }
          },
        ),
      ],
    );
  }
}
