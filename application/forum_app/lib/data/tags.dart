import 'package:flutter/material.dart';

// * ui import
import 'package:forum_app/ui/colors.dart';

class Tag {
  final String hexTagColor;
  Widget icon;
  final String tagName;
  final List<Tag> children;
  Tag(this.tagName,
      {this.children: const <Tag>[], this.icon, this.hexTagColor}) {
    if (this.icon == null && this.hexTagColor != null) {
      this.icon = Container(
        alignment: Alignment.center,
        width: 12.0,
        child: CircleAvatar(
          radius: 10.0,
          backgroundColor: hexToColor(hexTagColor),
        ),
      );
    }
  }
}

//TODO: Implement fetching tags and icons from API

final List<Tag> tagList = <Tag>[
  Tag('announcement', hexTagColor: '#121212'),
  Tag(
    'general',
    hexTagColor: '#121212',
    children: <Tag>[
      Tag('introduction'),
      Tag('complaint'),
      Tag('feature-request'),
      Tag('feedback'),
      Tag('promotions'),
    ],
  ),
  Tag('WinterofCode', hexTagColor: '#121212'),
  Tag('algorithms', hexTagColor: '#121212'),
  Tag('design', hexTagColor: '#121212'),
  Tag('languages', hexTagColor: '#121212'),
  Tag('machine-learning', hexTagColor: '#121212'),
  Tag('mobile', hexTagColor: '#121212'),
  Tag('web', hexTagColor: '#121212'),
  Tag('memes', hexTagColor: '#121212'),
  Tag('resources', hexTagColor: '#121212'),
  Tag('GCPCrashCourse', hexTagColor: '#121212'),
  Tag('Video Editing', hexTagColor: '#121212'),
  Tag('flutter', hexTagColor: '#121212'),
  Tag('python', hexTagColor: '#121212'),
  Tag('neural-networks', hexTagColor: '#121212'),
  Tag(
    'More...',
    children: <Tag>[
      Tag('tensorflow'),
      Tag('dart-language'),
      Tag('android'),
    ],
  ),
];
