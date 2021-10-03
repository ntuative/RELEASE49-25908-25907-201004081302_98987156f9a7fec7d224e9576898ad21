package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_414:int;
      
      private var var_166:String;
      
      private var var_194:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_166 = param1;
         var_194 = param2;
         var_414 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_194.text = var_166.substring(0,param1) + "...";
         return var_194.textWidth > var_414;
      }
   }
}
