

 enum HttpRequestType{
   post,
   get
 }

 extension HttpRequestTypeExtension on HttpRequestType{
          
          String get getType {
                switch(this)
                {
                   case HttpRequestType.post:
                   return HttpRequestType.post.name.toUpperCase();
                   case HttpRequestType.get:
                   return HttpRequestType.get.name.toUpperCase();
                }
          }

 }