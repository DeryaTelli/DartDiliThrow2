import 'package:flutter/material.dart';
void main() {

  print('merhaba');



  returnEdecek();



}



void returnEdecek() {

  try{

    print('>main ');



    hataliKoduCagiran();

    print('<main ');

  } on FormatException catch (e) {



    print(' format exception hatasi oldu ?');

    rethrow; // tamam biz bunla iligili birsey yaptik ama bizi cagiraninda bizdenhaberi olmasi lazim diyerek

    // stacktrace'`i de koruyacak sekilde hatalari rethrow edebililiyoruz



  }

  catch (e){

    print('baska bir hata olustu');

    print(e);

  } finally{

    print('Finally');

  }

  print('finally\`den sonra');

}



void hataliKoduCagiran() {

  print('>hatali koducagiran');

  hataliKod();

  print('<hatali koducagiran');

}



void hataliKod() {

  print('> hataliKod');

  throw new Exception('hata var !'); // digerlerinin calismayacagini anladi ve kodu kendisi durdurdu

  double.parse("bu bir double degildir");

  String? s = null;

  print(s!.length);



  print('<hataliKod');

}





