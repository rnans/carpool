 $(function(){
      $('#phonenum').keyup(function(){
         if (event.which && (event.which > 36 && event.which < 58 ||
            event.which > 95 && event.which < 106 ||
            event.which == 8 || event.which == 9)){
         }else{
            alert("숫자만 입력해주세요.");
            $('#phonenum').val("");
            $('#phonenum').focus();
         }
      });
   });
 
 $(function(){
     $('#birth').keyup(function(){
        if (event.which && (event.which > 36 && event.which < 58 ||
           event.which > 95 && event.which < 106 ||
           event.which == 8 || event.which == 9)){
        }else{
           alert("숫자만 입력해주세요.");
           $('#birth').val("");
           $('#birth').focus();
        }
     });
  });