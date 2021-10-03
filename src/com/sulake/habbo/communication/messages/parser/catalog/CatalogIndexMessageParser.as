package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.NodeData;
   
   public class CatalogIndexMessageParser implements IMessageParser
   {
       
      
      private var var_117:NodeData;
      
      public function CatalogIndexMessageParser()
      {
         super();
      }
      
      public function get root() : NodeData
      {
         return var_117;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_117 = new NodeData(param1);
         return true;
      }
      
      public function flush() : Boolean
      {
         var_117 = null;
         return true;
      }
   }
}
