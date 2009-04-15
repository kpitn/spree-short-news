module Admin::News::NewsItemsHelper

  def load_textarea_maxlenght(key)
   javascript_tag("
    (function($) {

          function Left(str, n){
            if (n <= 0)
                return "";
            else if (n > String(str).length)
                return str;
            else
                return String(str).substring(0,n);
          }

             $('#{key}').keypress(function(event){
             var key = event.which;

             //all keys including return.
             if(key >= 32 || key == 13  || key== 86 ) {
                 console.log('OK');
                 var maxLength = $(this).attr('maxlength');
                 var length = this.value.length;
                 if(length >= maxLength) {
                     event.preventDefault();
                 }
             }
         });
        $('#{key}').keyup(function(event){
           $(this).val(this.value.substring(0,$(this).attr('maxlength')));
        });
    })(jQuery)
      ")
  end

end