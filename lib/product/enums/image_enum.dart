
enum ImageEnum {
     entry_img1,
     entry_img2,
     entry_img3
}


extension ImageEnumExtension on ImageEnum{
        
    String imagePath()
    {
       switch (this) {
         case ImageEnum.entry_img1:
          return  "assets/png/${ImageEnum.entry_img1.name}.png";  
         case ImageEnum.entry_img2:
          return  "assets/png/${ImageEnum.entry_img2.name}.png";
          case ImageEnum.entry_img3:
          return  "assets/png/${ImageEnum.entry_img3.name}.png";
       }
    }    


}