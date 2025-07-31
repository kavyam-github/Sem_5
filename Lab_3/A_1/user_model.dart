class User_list{
  List<dynamic> _Userlist =[];

  void addUserToList(dynamic user){
    _Userlist.add(user);
  }

  void removeUserFromList(index){
      _Userlist.remove(index);
  }

  List<dynamic>getUserFromList(){
    return _Userlist;
  }

  void updateUserToList(index,user){
      _Userlist[index]=user;
  }
}