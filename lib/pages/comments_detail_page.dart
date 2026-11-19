import 'package:flutter/material.dart';
import 'package:flutter_lintang/models/comment.dart';


class CommentsDetailPage extends StatelessWidget {
  final Comments comments;

  const CommentsDetailPage({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Comment #${comments.id}')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              comments.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            Text(comments.body),
            const SizedBox(height: 24),
            Text(
              'Ditulis oleh user #${comments.postId}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}