import 'dart:html';

class File{
  String title, detail;

  File(this.title,this.detail);

  void setTitle(String newTitle){
    this.title = newTitle;
  }

  String getTitle(){
    return this.title;
  }

  void setDetail(String newDetail){
    this.detail= newDetail;
  }

  String getDetail(){
    this.detail;
  }
}