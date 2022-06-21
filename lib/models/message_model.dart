class Message {
    late String sender;
    late String message;
    late bool isMe;
    late DateTime datetime;
    Message(String sender, String message) {
      this.sender = sender;
      if (sender == 'Антон') isMe = true;
      else isMe = false;
      this.message = message;
      this.datetime = DateTime.now();
    }
}