import 'package:flutter/material.dart';


class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  bool _isBarGraphMode = false;

  final leaderboardData = [
    {'name': 'Priya Sharma', 'amount': '₹12,500', 'avatar': 'P', 'value': 12500},
    {'name': 'Arjun Patel', 'amount': '₹10,200', 'avatar': 'A', 'value': 10200},
    {'name': 'Sneha Kumar', 'amount': '₹8,750', 'avatar': 'S', 'value': 8750},
    {'name': 'Vikram Singh', 'amount': '₹7,300', 'avatar': 'V', 'value': 7300},
    {'name': 'Ananya Gupta', 'amount': '₹6,100', 'avatar': 'A', 'value': 6100},
    {'name': 'Rohan Mehta', 'amount': '₹5,800', 'avatar': 'R', 'value': 5800},
    {'name': 'Krishna Kumar Agrahari', 'amount': '₹5,000', 'avatar': 'K', 'value': 5000, 'isCurrentUser': true},
    {'name': 'Kavya Reddy', 'amount': '₹4,200', 'avatar': 'K', 'value': 4200},
    {'name': 'Amit Joshi', 'amount': '₹3,900', 'avatar': 'A', 'value': 3900},
    {'name': 'Divya Nair', 'amount': '₹3,500', 'avatar': 'D', 'value': 3500},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text('Leaderboard'),
        backgroundColor: Colors.red.shade600,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(_isBarGraphMode ? Icons.list : Icons.bar_chart),
            onPressed: () {
              setState(() {
                _isBarGraphMode = !_isBarGraphMode;
              });
            },
            tooltip: _isBarGraphMode ? 'Switch to List View' : 'Switch to Bar Chart',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Header Stats
            _buildHeaderStats(),
            
            // View Toggle
            _buildViewToggle(),
            
            // Leaderboard Content
            Expanded(
              child: _isBarGraphMode ? _buildBarGraphView() : _buildListView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderStats() {
    return Container(
      margin: const EdgeInsets.all(20),
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your Rank',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
                const Text(
                  '#7',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.emoji_events,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildViewToggle() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isBarGraphMode = false;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: !_isBarGraphMode ? Colors.red.shade600 : Colors.transparent,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.list,
                      color: !_isBarGraphMode ? Colors.white : Colors.grey.shade600,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'List View',
                      style: TextStyle(
                        color: !_isBarGraphMode ? Colors.white : Colors.grey.shade600,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isBarGraphMode = true;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: _isBarGraphMode ? Colors.red.shade600 : Colors.transparent,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.bar_chart,
                      color: _isBarGraphMode ? Colors.white : Colors.grey.shade600,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Bar Chart',
                      style: TextStyle(
                        color: _isBarGraphMode ? Colors.white : Colors.grey.shade600,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBarGraphView() {
    // Get max value for scaling
    final maxValue = leaderboardData
        .map((e) => e['value'] as int)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'Fundraising Performance',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: leaderboardData.asMap().entries.map((entry) {
                  final index = entry.key;
                  final user = entry.value;
                  final isCurrentUser = user['isCurrentUser'] == true;
                  final rank = index + 1;
                  final value = user['value'] as int;
                  final height = (value / maxValue) * 200; // Max height 200

                  return Container(
                    width: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Amount
                        Text(
                          user['amount'] as String,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: isCurrentUser ? Colors.red.shade700 : Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        
                        // Bar
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 800),
                          height: height,
                          width: 40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: isCurrentUser
                                  ? [Colors.red.shade600, Colors.red.shade400]
                                  : rank <= 3
                                      ? [_getRankColor(rank), _getRankColor(rank).withOpacity(0.7)]
                                      : [Colors.blue.shade400, Colors.blue.shade600],
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          child: Stack(
                            children: [
                              if (rank <= 3)
                                Positioned(
                                  top: 5,
                                  left: 0,
                                  right: 0,
                                  child: Icon(
                                    Icons.emoji_events,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        
                        // Avatar and Name
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: isCurrentUser 
                              ? Colors.red.shade600 
                              : Colors.grey.shade300,
                          child: Text(
                            user['avatar'] as String,
                            style: TextStyle(
                              color: isCurrentUser ? Colors.white : Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          (user['name'] as String).split(' ')[0], // First name only
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: isCurrentUser ? Colors.red.shade700 : Colors.black87,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '#$rank',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: leaderboardData.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final user = leaderboardData[index];
          final isCurrentUser = user['isCurrentUser'] == true;
          final rank = index + 1;
          
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: isCurrentUser ? Colors.red.shade50 : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                // Rank
                Container(
                  width: 30,
                  child: Text(
                    '#$rank',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: _getRankColor(rank),
                    ),
                  ),
                ),
                
                // Rank Icon (for top 3)
                if (rank <= 3) ...[
                  Icon(
                    Icons.emoji_events,
                    color: _getRankColor(rank),
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                ] else
                  const SizedBox(width: 30),
                
                // Avatar
                CircleAvatar(
                  radius: 20,
                  backgroundColor: isCurrentUser 
                      ? Colors.red.shade600 
                      : Colors.grey.shade300,
                  child: Text(
                    user['avatar'] as String,
                    style: TextStyle(
                      color: isCurrentUser ? Colors.white : Colors.grey.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                
                // Name and details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            user['name'] as String,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: isCurrentUser 
                                  ? Colors.red.shade700 
                                  : Colors.black87,
                            ),
                          ),
                          if (isCurrentUser) ...[
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: Colors.red.shade600,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                'You',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                      Text(
                        'Total Raised',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Amount
                Text(
                  user['amount'] as String,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isCurrentUser 
                        ? Colors.red.shade700 
                        : Colors.green.shade600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Color _getRankColor(int rank) {
    switch (rank) {
      case 1:
        return Colors.amber.shade600; // Gold
      case 2:
        return Colors.grey.shade500; // Silver
      case 3:
        return Colors.orange.shade600; // Bronze
      default:
        return Colors.grey.shade400;
    }
  }
}
