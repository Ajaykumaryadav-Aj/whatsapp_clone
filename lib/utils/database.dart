import 'package:flutter/material.dart';

List<Map<String, dynamic>> chating = [
  {
    'assets': 'assets/images/Tiranga.jpg',
    'name': 'Ajay',
    'messages': [
      {'message': ' Hi Ajay', 'time': '8:00 pm'},
      {'message': ' How are you', 'time': '8:02 pm'},
      {'message': ' whats going on', 'time': '8:05 pm'}
    ]
  },
  {
    'assets': 'assets/images/dp image.jpg',
    'name': 'Mrs',
    'messages': [
      {'message': ' Hello bro', 'time': '8:40 pm'},
      {'message': ' How are you', 'time': '8:42 pm'},
      {'message': ' whats going on', 'time': '8:45 pm'}
    ]
  },
  {
    'assets': 'assets/images/Tiranga.jpg',
    'name': 'Maneger',
    'messages': [
      {'message': ' Hello sir', 'time': '7:00 pm'},
      {'message': ' Good morning', 'time': '7:02 pm'},
      {'message': ' Hiiiiiiii', 'time': '7:05 pm'}
    ]
  },
  {
    'assets': 'assets/images/Tiranga.jpg',
    'name': 'saurabh',
    'messages': [
      {'message': ' Hi saurabh', 'time': '8:00 pm'},
      {'message': ' Hello', 'time': '8:02 pm'},
      {'message': ' whats going on', 'time': '8:05 pm'}
    ]
  },
  {
    'assets': 'assets/images/Tiranga.jpg',
    'name': 'Raju',
    'messages': [
      {'message': ' Hello', 'time': '8:00 pm'},
      {'message': ' How are you', 'time': '8:02 pm'},
      {'message': ' whats going on', 'time': '8:05 pm'}
    ]
  },
  {
    'assets': 'assets/images/aj1.jpg',
    'name': 'sonu',
    'messages': [
      {'message': ' Hi bro', 'time': '8:00 pm'},
      {'message': ' How are you', 'time': '8:02 pm'},
      {'message': ' whats going on', 'time': '8:05 pm'}
    ]
  },
  {
    'assets': 'assets/images/aj1.jpg',
    'name': 'abhijeet',
    'messages': [
      {'message': ' Hi Ajay', 'time': '8:00 pm'},
      {'message': ' How are you', 'time': '8:02 pm'},
      {'message': ' whats going on', 'time': '8:05 pm'}
    ]
  },
  {
    'assets': 'assets/images/aj1.jpg',
    'name': 'raj',
    'messages': [
      {'message': ' Raj', 'time': '8:00 pm'},
      {'message': ' haaaaaaaa', 'time': '8:02 pm'},
      {'message': ' whats going on', 'time': '8:05 pm'}
    ]
  },
];

List<Map<String, dynamic>> chatlist = [
  {'name': "Ajay", 'message': 'Hi'},
  {'name': 'Mrs', 'message': 'hello'},
  {'name': 'Maneger', 'message': 'morning'},
  {'name': 'saurabh', 'message': 'Hiiiiii'},
  {'name': 'Raju', 'message': 'hi bro'},
  {'name': 'sonu', 'message': 'Hello'},
  {'name': 'abhijeet', 'message': 'yes'},
  {'name': 'raj', 'message': 'okay'}
];
List<Map<String, dynamic>> chatimage = [
  {'image': "assets/images/Tiranga.jpg"},
  {'image': "assets/images/dp image.jpg"},
  {'image': "assets/images/dp image.jpg"},
  {'image': "assets/images/dp image.jpg"},
  {'image': "assets/images/dp image.jpg"},
  {"image": 'assets/images/aj1.jpg'},
  {"image": 'assets/images/aj1.jpg'},
  {"image": 'assets/images/aj1.jpg'}
];

List<Map<String, dynamic>> statuslist = [
  {
    'name': "Ajay",
    'message': 'Today,3:56 pm',
    'image': 'assets/images/Tiranga.jpg'
  },
  {
    'name': 'Mrs',
    'message': '30 minutes ago',
    'image': 'assets/images/dp image.jpg'
  },
  {
    'name': 'Maneger',
    'message': 'Yesterday,10:00 pm',
    'image': 'assets/images/dp image.jpg'
  },
  {
    'name': 'saurabh',
    'message': 'Today, 8:00 am',
    'image': 'assets/images/aj2.jpg'
  },
  {
    'name': 'Raju',
    'message': '15 minites ago',
    'image': 'assets/images/aj2.jpg'
  },
  {
    'name': 'sonu',
    'message': 'Today,6:00 pm',
    'image': 'assets/images/aj2.jpg'
  },
  {
    'name': 'abhijeet',
    'message': '18 minites ago',
    'image': 'assets/images/aj2.jpg'
  },
  {'name': 'raj', 'message': 'Today,9:00 am', 'image': 'assets/images/aj2.jpg'}
];

List<Map<String, dynamic>> calllist = [
  {'name': "Ajay", 'message': '29 August, 3:21 pm', 'icon': Icons.call},
  {
    'name': 'Mrs',
    'message': 'Yesterday,4:40 pm',
    'icon': Icons.videocam,
  },
  {'name': 'Maneger', 'message': 'Today, 6:00 am', 'icon': Icons.call},
  {'name': 'saurabh', 'message': '31 August, 2:09 pm', 'icon': Icons.call},
  {
    'name': 'Raju',
    'message': '21 August, 8:05 am',
    'icon': Icons.videocam,
  },
  {
    'name': 'sonu',
    'message': '20 August, 5:00 am',
    'icon': Icons.videocam,
  },
  {
    'name': 'abhijeet',
    'message': '18 August, 7:20 pm',
    'icon': Icons.videocam,
  },
  {'name': 'raj', 'message': '15 August, 3:27 pm', 'icon': Icons.call}
];

List<Map<String, dynamic>> settinglist = [
  {
    'icon': Icons.key,
    'name': 'Account',
    'subname': 'Security notification,change number'
  },
  {
    'icon': Icons.lock,
    'name': 'Privacy',
    'subname': 'Block contacts ,disappearing messages'
  },
  {
    'icon': Icons.support_agent_outlined,
    'name': 'Avatar',
    'subname': 'Create, edit,profile photo '
  },
  {
    'icon': Icons.chat,
    'name': 'Chats',
    'subname': 'Theme,wallpapers,chat history '
  },
  {
    'icon': Icons.notifications_none,
    'name': 'Notification',
    'subname': 'Message,group,&call tones '
  },
  {
    'icon': Icons.data_usage,
    'name': 'Storage and data',
    'subname': 'Network usage ,auto download '
  },
  {
    'icon': Icons.language,
    'name': 'App language',
    'subname': 'English (devices language)'
  },
  {
    'icon': Icons.help_outline,
    'name': 'Help',
    'subname': 'Help center,contact us, privacy'
  },
  {'icon': Icons.group, 'name': 'Invite a friend', 'subname': ' '}
];

List<Map<String, dynamic>> addinvite = [
  {"icon": Icons.share, 'name': 'Invite friend'},
  {'icon': Icons.help, 'name': 'contact help'},
];
List<Map<String, dynamic>> addcalllist = [
  {'icon': Icons.link, 'new': 'New call link'},
  {
    'icon': Icons.group,
    'new': 'New group call',
  },
  {'icon': Icons.person_add, 'new': 'New contact', 'sideicon': Icons.qr_code},
];

List<Map<String, dynamic>> addprsnlist = [
  {
    'name': "Ajay",
    'message': 'message yourself',
    'sidetext': '',
    'image': "assets/images/Tiranga.jpg"
  },
  {
    'name': 'Rajesh',
    'message': 'Hey there i am using WhatsApp',
    'sidetext': '',
    'image': "assets/images/Tiranga.jpg"
  },
  {
    'name': 'Maneger',
    'message': '😎',
    'sidetext': '',
    'image': "assets/images/Tiranga.jpg"
  },
  {
    'name': 'saurabh',
    'message': 'keep smiling😀',
    'sidetext': '',
    'image': "assets/images/Tiranga.jpg"
  },
  {
    'name': 'Raju',
    'message': 'Urgent calls only',
    'sidetext': '',
    'image': "assets/images/Tiranga.jpg"
  },
];

List<Map<String, dynamic>> contactlist = [
  {'icon': Icons.group, 'New': 'New group'},
  {'icon': Icons.person_add, 'New': 'New contact', 'sideicon': Icons.qr_code},
  {'icon': Icons.groups, 'New': 'New community'},
];

List<Map<String, dynamic>> contactprsnlist = [
  {'name': "(You)", 'message': 'message yourself', 'sidetext': ''},
  {'name': 'Mrs', 'message': 'Hey there i am using WhatsApp', 'sidetext': ''},
  {'name': 'Maneger', 'message': '😎', 'sidetext': ''},
  {'name': 'saurabh', 'message': 'keep smiling😀', 'sidetext': ''},
  {'name': 'Raju', 'message': 'Urgent calls only', 'sidetext': ''},
];

List<Map<String, dynamic>> invitelist = [
  {'icon': Icons.person, 'name': 'Ramu', 'message': '', 'sidetext': 'Invite'},
  {'icon': Icons.person, 'name': 'aditya', 'message': '', 'sidetext': 'Invite'},
  {'icon': Icons.person, 'name': 'Monu', 'message': '', 'sidetext': 'Invite'},
  {
    'icon': Icons.share,
    'name': 'Share invite link',
    'message': '',
    'sidetext': ''
  },
  {'icon': Icons.help, 'name': 'Contacts help', 'message': '', 'sidetext': ''},
];

List<Map<String, dynamic>> profilelist = [
  {
    'icon': Icons.person,
    'name': 'Name',
    'subname':
        'This is not your username or pin.this name will be visible to your WhatsApp contacts',
    'icons': Icons.edit
  },
  {
    'icon': Icons.error_outline,
    'name': 'About',
    'subname': 'Urgents call only',
    'icons': Icons.edit
  },
  {
    'icon': Icons.call,
    'name': 'About',
    'subname': '+917050606820',
  },
];
