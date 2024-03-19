import 'package:the_real_thing/data/services/base_service.dart';

import '../models/post.dart';

class GetPostService extends ServiceBase<List<Post>> {
  @override
  Future<List<Post>> call() async {
    final result = await get('post');
    return List.generate(
      result['data'].length,
      (index) => Post.fromJson(result['data'][index]),
    );
  }

  Future<List<Post>> mockGetPostServiceCall() async {
    await Future.delayed(const Duration(seconds: 1));

    Map<String, dynamic> mockData = {
      'data': [
        {
          'id': 1,
          'message':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae semper ipsum. Suspendisse potenti. Fusce ultrices, nunc non convallis feugiat, lorem diam.',
          'owner': {
            'id': 1,
            'firstName': 'John',
            'lastName': 'Doe',
            'mobile': '1234567890',
            'birthday': '2000-01-01',
            'gender': 'Male',
            'visibleGender': true,
          },
          'date': '2022-01-01T00:00:00.000Z',
          'image':
              'https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        },
        {
          'id': 2,
          'message':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae semper ipsum. Suspendisse potenti. Fusce ultrices, nunc non convallis feugiat, lorem diam.',
          'owner': {
            'id': 2,
            'firstName': 'Jane',
            'lastName': 'Doe',
            'mobile': '0987654321',
            'birthday': '2001-01-01',
            'gender': 'Female',
            'visibleGender': true,
          },
          'date': '2022-01-02T00:00:00.000Z',
          'image':
              'https://images.pexels.com/photos/1906658/pexels-photo-1906658.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        },
      ],
    };

    return List.generate(
      mockData['data'].length,
      (index) => Post.fromJson(mockData['data'][index]),
    );
  }
}
