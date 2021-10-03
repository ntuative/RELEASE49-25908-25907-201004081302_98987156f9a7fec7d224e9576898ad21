package com.sulake.habbo.window.utils
{
   public interface IAlertDialogWithLink extends IAlertDialog
   {
       
      
      function set linkUrl(param1:String) : void;
      
      function set method_12(param1:String) : void;
      
      function get linkUrl() : String;
      
      function get method_12() : String;
   }
}
