class QuestionData {
  static List<Map<String, dynamic>> questions = [
    {
      'question': 'How do you typically commute to work or school?',
      'answers': [
        {
          'answer': 'Drive alone',
          'metric': 'kg CO2 per mile',
          'carbon': 6.1,
        },
        {
          'answer': 'Carpool',
          'metric': 'kg CO2 per mile',
          'carbon': 3.05,
        },
        {
          'answer': 'Public transit',
          'metric': 'kg CO2 per mile',
          'carbon': 0.44,
        },
        {
          'answer': 'Bike or walk',
          'metric': 'kg CO2 per mile',
          'carbon': 0,
        },
      ]
    },
    {
      'question': 'How often do you drive your car each week?',
      'answers': [
        {
          'answer': 'Less than 50 miles',
          'metric': 'kg CO2 per week',
          'carbon': 30,
        },
        {
          'answer': '50-100 miles',
          'metric': 'kg CO2 per week',
          'carbon': 60,
        },
        {
          'answer': '100-200 miles',
          'metric': 'kg CO2 per week',
          'carbon': 120,
        },
        {
          'answer': 'More than 200 miles',
          'metric': 'kg CO2 per week',
          'carbon': 240,
        },
      ]
    },
    {
      'question': 'How many flights have you taken in the past year?',
      'answers': [
        {
          'answer': 'None',
          'metric': 'kg CO2',
          'carbon': 0,
        },
        {
          'answer': '1-2 flights',
          'metric': 'metric tons CO2 per flight',
          'carbon': 1.6,
        },
        {
          'answer': '3-4 flights',
          'metric': 'metric tons CO2 per flight',
          'carbon': 3.2,
        },
        {
          'answer': '5 or more flights',
          'metric': 'metric tons CO2 per flight',
          'carbon': 4.8,
        },
      ]
    },
    {
      'question': 'How fuel-efficient is your vehicle?',
      'answers': [
        {
          'answer': 'Less than 20 miles per gallon',
          'metric': 'kg CO2 per gallon',
          'carbon': 24,
        },
        {
          'answer': '20-30 miles per gallon',
          'metric': 'kg CO2 per gallon',
          'carbon': 12,
        },
        {
          'answer': '30-40 miles per gallon',
          'metric': 'kg CO2 per gallon',
          'carbon': 8,
        },
        {
          'answer': 'More than 40 miles per gallon',
          'metric': 'kg CO2 per gallon',
          'carbon': 6,
        },
      ]
    },
    {
      'question': 'How often do you perform maintenance on your vehicle?',
      'answers': [
        {
          'answer': 'Regularly',
          'metric': 'metric tons CO2 per year',
          'carbon': 0.5,
        },
        {
          'answer': 'Occasionally',
          'metric': 'metric tons CO2 per year',
          'carbon': 1,
        },
        {
          'answer': 'Rarely or never',
          'metric': 'metric tons CO2 per year',
          'carbon': 1.5,
        },
      ]
    },
    {
      'question': 'How often do you use rideshare services like Uber or Lyft?',
      'answers': [
        {
          'answer': 'Rarely or never',
          'metric': 'kg CO2',
          'carbon': 0,
        },
        {
          'answer': 'Once a week',
          'metric': 'kg CO2 per week',
          'carbon': 4.4,
        },
        {
          'answer': '2-3 times a week',
          'metric': 'kg CO2 per week',
          'carbon': 13.2,
        },
        {
          'answer': 'Daily',
          'metric': 'kg CO2 per week',
          'carbon': 22,
        },
      ]
    },
    {
      'question':
          'How far do you typically drive to run errands or go shopping?',
      'answers': [
        {
          'answer': 'Less than 5 miles',
          'metric': 'kg CO2 per trip',
          'carbon': 3,
        },
        {
          'answer': '5-10 miles',
          'metric': 'kg CO2 per trip',
          'carbon': 6,
        },
        {
          'answer': '10-20 miles',
          'metric': 'kg CO2 per trip',
          'carbon': 12,
        },
        {
          'answer': 'More than 20 miles',
          'metric': 'kg CO2 per trip',
          'carbon': 24,
        },
      ]
    }
  ];
}
