import 'package:frontend/models/chat_room_model.dart';
import 'package:frontend/models/feed_model.dart';
import 'package:frontend/models/message_model.dart';
import 'package:frontend/models/user_model.dart';

class Data {
  static final User lukas = User(
      id: 213921840,
      name: 'Lukas',
      imageUrl: 'https://thispersondoesnotexist.com/image',
      message: 'Hello World!');

  static final User tom = User(
      id: 213921841,
      name: '김진영 상담사',
      imageUrl: 'https://water-flavour.com/public/image/repo/face_1.png',
      message: 'Hello World!');

  static final User neo = User(
      id: 213921842,
      name: "이현영 상담사",
      imageUrl: 'https://water-flavour.com/public/image/repo/face_2.png',
      message: 'Good Day!');

  static final User bird = User(
      id: 213921843,
      name: "안지희 상담사",
      imageUrl: 'https://water-flavour.com/public/image/repo/face_3.png',
      message: 'Cheep Cheep!');

  static final User dog = User(
      id: 213921844,
      name: "고하연 상담사",
      imageUrl: 'https://water-flavour.com/public/image/repo/face_4.png',
      message: 'Bark Bark');

  static final User me = lukas;

  static List<ChatRoom> chatRooms = [
    ChatRoom(sender: dog, messages: chat4, type: "상담일정을 정해주세요"),
    ChatRoom(sender: bird, messages: chat3, type: "예약상담 시간이 5시간 남았습니다."),
    ChatRoom(sender: neo, messages: chat2, type: "예약상담 시간이 1일 3시간 남앗습니다."),
    ChatRoom(sender: tom, messages: chat1, type: "모든 상담이 종료되었습니다."),
  ];

  static List<Message> chat1 = [
    Message(
      sender: lukas,
      time: '17:00',
      text: '상담사님 들어오셨나요??',
      unread: false,
    ),
    Message(
      sender: tom,
      time: '17:01',
      text: '네 안녕하세요 김진영상담사입니다.',
      unread: false,
    ),
    Message(
      sender: tom,
      time: '17:01',
      text: '연결에 조금 문제가 있었네요~!',
      unread: false,
    ),
    Message(
      sender: tom,
      time: '17:01',
      text: '상담을 시작해볼까요?\n 어떤고민이 있으신가요?',
      unread: false,
    ),
    Message(
      sender: lukas,
      time: '17:05',
      text: '요즘 무기력하고 힘이 없어요..',
      unread: false,
    ),
    Message(
      sender: tom,
      time: '17:06',
      text: '아 그러시군요.. 어떤 일이 있었나요?',
      unread: false,
    ),
    Message(
      sender: lukas,
      time: '17:07',
      text: '잘 모르겠어요',
      unread: false,
    ),
    Message(
      sender: tom,
      time: '17:08',
      text: '네 그렇군요 그럼 지금부터 몇가지 질문을 해볼께요~!',
      unread: false,
    ),
    Message(
      sender: lukas,
      time: '17:09',
      text: '네 좋아요',
      unread: false,
    ),
  ];

  static List<Message> chat2 = [
    Message(
      sender: neo,
      time: '17:30',
      text: '안녕하세요 이현영 상담사 입니다.',
      unread: false,
    ),
    Message(
      sender: lukas,
      time: '17:31',
      text: '안녕하세요.',
      unread: true,
    ),
  ];

  static List<Message> chat3 = [
    Message(
      sender: bird,
      time: '17:30',
      text: '안녕하세요 안지희 상담사 입니다.',
      unread: false,
    ),
    Message(
      sender: bird,
      time: '17:31',
      text: '요즘 어떤 고민이 있으신가요?',
      unread: false,
    ),
    Message(
      sender: bird,
      time: '18:32',
      text: '1시간이 경과하여 상담을 종료할께요~!',
      unread: false,
    ),
  ];

  static List<Message> chat4 = [
    Message(
      sender: dog,
      time: '17:55',
      text: '안녕하세요 김지연님 고하연 상담사입니다.',
      unread: false,
    ),
    Message(
      sender: me,
      time: '17:56',
      text: '안녕하세요~!',
      unread: false,
    ),
  ];

  static List<Feed> feeds = [
    Feed(
      sender: bird,
      message: 'Photo by Richard Brutyo on Unsplash',
      imageUrl:
          'https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=312&q=80',
      time: '1',
      shareCount: 1,
      likeCount: 5,
    ),
    Feed(
      sender: neo,
      message: 'Photo by Alex Iby on Unsplash',
      imageUrl: 'https://thispersondoesnotexist.com/image',
      time: '5',
      shareCount: 10,
      likeCount: 5,
    ),
    Feed(
      sender: tom,
      message: 'Photo by reza shayestehpour on Unsplash',
      imageUrl:
          'https://images.unsplash.com/photo-1428592953211-077101b2021b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80',
      time: '20',
      shareCount: 20,
      likeCount: 55,
    )
  ];
}
