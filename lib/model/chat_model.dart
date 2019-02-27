class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avtarUrl;

  ChatModel({this.name, this.message, this.time, this.avtarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Rizwan",
      message: "Welcome Rizwan",
      time: "12:59 PM",
      avtarUrl:
          "https://images.unsplash.com/photo-1449130015084-2d48a345ae62?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80"),
  ChatModel(
      name: "Gokul",
      message: "Hi Gokul",
      time: "01:00 PM",
      avtarUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-cDFcTxSrk5JU0-mxxJtha6xbp9IgbB-CgG6iPve53H1Ik9vu"),
  ChatModel(
      name: "Himanshu",
      message: "Where are you?",
      time: "03:47 AM",
      avtarUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9FP2P5a9xqTgZHEsRe-2_sRbtLcTcr5pLvQ860DSqdJH2WSYd"),
  ChatModel(
      name: "Rohit",
      message: "I am Comming!",
      time: "03:47 AM",
      avtarUrl:
      "https://static01.nyt.com/images/2017/01/12/well/move/adam-bryant-headshot/adam-bryant-headshot-square320-v2.jpg"),
  ChatModel(
      name: "Rahul",
      message: "Hello Rahul Here...",
      time: "03:47 AM",
      avtarUrl:
      "https://c.wallhere.com/photos/e5/ea/gary_lucy_man_actor_dark_haired_cardigan_person-780009.jpg!d"),
];
