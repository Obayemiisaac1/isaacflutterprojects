//Design a Dart class to model a simple blog post. Include attributes/properties for title, content, and author, along with methods for editing and displaying the post.


Class BlogPost {
  String title;
  String content;
  String author;

  BlogPost(this.title, this.content, this.author);

  Void editPost(String newContent) {
    Content = newContent;
    Print(“Post edited successfully.”);
  }

  Void displayPost() {
    Print(“Title: $title”);
    Print(“Content: $content”);
    Print(“Author: $author”);
  }
}

Void main() {
  BlogPost post = BlogPost(
      “Introduction to Dart Programming”,
      “Dart is a client-optimized language for fast apps on any platform.”,
      “John Doe”);

  Post.displayPost();

  Print(“\nEditing post…”);
  Post.editPost(
      “Dart is a programming language developed by Google for building web, mobile, and desktop applications.”);

  Print(“\nUpdated post:”);
  Post.displayPost();
}