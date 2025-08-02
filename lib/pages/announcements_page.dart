import 'package:flutter/material.dart';

class AnnouncementsPage extends StatelessWidget {
  const AnnouncementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text('Announcements'),
        backgroundColor: Colors.red.shade600,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              _buildHeader(),
              const SizedBox(height: 20),
              
              // Announcements List
              _buildAnnouncementsList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red.shade600,
            Colors.red.shade400,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.red.shade200,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.campaign,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 15),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Latest Updates',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Stay informed about our latest news',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementsList() {
    final announcements = [
      {
        'title': '🎉 New Milestone Achieved!',
        'content': 'We\'ve successfully raised over ₹1,00,000 for our community education program! Thank you to all our amazing fundraisers.',
        'time': '2 hours ago',
        'type': 'success',
        'priority': 'high',
      },
      {
        'title': '📢 Referral Program Update',
        'content': 'Great news! We\'ve increased referral rewards. You now earn ₹100 for every successful referral instead of ₹50.',
        'time': '1 day ago',
        'type': 'info',
        'priority': 'medium',
      },
      {
        'title': '🏆 Monthly Leaderboard Reset',
        'content': 'The monthly leaderboard has been reset. Start fresh and climb to the top! Top 3 fundraisers will receive special rewards.',
        'time': '3 days ago',
        'type': 'announcement',
        'priority': 'medium',
      },
      {
        'title': '💡 New Features Coming Soon',
        'content': 'We\'re working on exciting new features including campaign analytics, team fundraising, and mobile app improvements.',
        'time': '5 days ago',
        'type': 'update',
        'priority': 'low',
      },
      {
        'title': '🎯 Week 3 Challenge',
        'content': 'Join our weekly challenge! Raise ₹500 this week and unlock the "Weekly Warrior" badge plus bonus points.',
        'time': '1 week ago',
        'type': 'challenge',
        'priority': 'medium',
      },
      {
        'title': '📱 Mobile App Update Available',
        'content': 'Version 2.1.0 is now available with bug fixes, improved performance, and new dashboard widgets.',
        'time': '1 week ago',
        'type': 'update',
        'priority': 'low',
      },
    ];

    return Column(
      children: announcements.map((announcement) => 
        _buildAnnouncementCard(announcement)
      ).toList(),
    );
  }

  Widget _buildAnnouncementCard(Map<String, String> announcement) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
        border: Border.all(
          color: _getBorderColor(announcement['priority']!),
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with title and priority indicator
          Row(
            children: [
              Expanded(
                child: Text(
                  announcement['title']!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: _getPriorityColor(announcement['priority']!),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  announcement['priority']!.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          
          // Content
          Text(
            announcement['content']!,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade700,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 15),
          
          // Footer with time and type
          Row(
            children: [
              Icon(
                _getTypeIcon(announcement['type']!),
                size: 16,
                color: Colors.grey.shade500,
              ),
              const SizedBox(width: 5),
              Text(
                announcement['type']!.toUpperCase(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.access_time,
                size: 14,
                color: Colors.grey.shade400,
              ),
              const SizedBox(width: 5),
              Text(
                announcement['time']!,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color _getBorderColor(String priority) {
    switch (priority) {
      case 'high':
        return Colors.red.shade300;
      case 'medium':
        return Colors.orange.shade300;
      case 'low':
        return Colors.blue.shade300;
      default:
        return Colors.grey.shade300;
    }
  }

  Color _getPriorityColor(String priority) {
    switch (priority) {
      case 'high':
        return Colors.red.shade600;
      case 'medium':
        return Colors.orange.shade600;
      case 'low':
        return Colors.blue.shade600;
      default:
        return Colors.grey.shade600;
    }
  }

  IconData _getTypeIcon(String type) {
    switch (type) {
      case 'success':
        return Icons.check_circle;
      case 'info':
        return Icons.info;
      case 'announcement':
        return Icons.campaign;
      case 'update':
        return Icons.system_update;
      case 'challenge':
        return Icons.emoji_events;
      default:
        return Icons.notifications;
    }
  }
}
