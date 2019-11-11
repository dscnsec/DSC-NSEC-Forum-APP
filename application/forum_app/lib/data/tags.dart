import 'package:flutter/material.dart';

class Tag {
  Widget icon;
  final String tagName;
  final List<Tag> children;
  Tag(this.tagName, [this.children = const <Tag>[]]) {
    this.icon ??= Container(
      height: 8.0,
      width: 8.0,
      color: Colors.pink,
    );
  }
}

final List<Tag> tagList = <Tag>[
  Tag('announcement'),
  Tag(
    'general',
    <Tag>[
      Tag('introduction'),
      Tag('complaint'),
      Tag('feature-request'),
      Tag('feedback'),
      Tag('promotions'),
    ],
  ),
  Tag('WinterofCode'),
  Tag('algorithms'),
  Tag('design'),
  Tag('languages'),
  Tag('machine-learning'),
  Tag('mobile'),
  Tag('web'),
  Tag('memes'),
  Tag('resources'),
  Tag('GCPCrashCourse'),
  Tag('Video Editing'),
  Tag('flutter'),
  Tag('python'),
  Tag('neural-networks'),
  Tag(
    'More...',
    <Tag>[
      Tag('tensorflow'),
      Tag('dart-language'),
      Tag('android'),
    ],
  ),
];
