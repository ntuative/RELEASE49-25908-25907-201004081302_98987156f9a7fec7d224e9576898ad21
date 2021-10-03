package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1838:Boolean;
      
      private var var_1441:Array;
      
      private var var_1841:Boolean;
      
      private var var_1840:Boolean;
      
      private var var_1836:Boolean;
      
      private var var_150:Array;
      
      private var var_1837:Boolean;
      
      private var var_1843:Boolean;
      
      private var var_1442:Array;
      
      private var var_1842:Boolean;
      
      private var var_1839:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1839;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1838;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1841;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1837;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1843;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1441;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_150 = [];
         var_1441 = [];
         _roomMessageTemplates = [];
         var_1442 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_150.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1441.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1442.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1837 = param1.readBoolean();
         var_1836 = param1.readBoolean();
         var_1841 = param1.readBoolean();
         var_1840 = param1.readBoolean();
         var_1839 = param1.readBoolean();
         var_1843 = param1.readBoolean();
         var_1838 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1842 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1840;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1442;
      }
      
      public function get issues() : Array
      {
         return var_150;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1842;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1836;
      }
   }
}
