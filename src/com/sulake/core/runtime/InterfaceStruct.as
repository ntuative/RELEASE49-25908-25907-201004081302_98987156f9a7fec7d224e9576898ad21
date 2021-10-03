package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_401:uint;
      
      private var var_996:IUnknown;
      
      private var var_1189:String;
      
      private var var_995:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_995 = param1;
         var_1189 = getQualifiedClassName(var_995);
         var_996 = param2;
         var_401 = 0;
      }
      
      public function get iid() : IID
      {
         return var_995;
      }
      
      public function get disposed() : Boolean
      {
         return var_996 == null;
      }
      
      public function get references() : uint
      {
         return var_401;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_401) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_996;
      }
      
      public function get iis() : String
      {
         return var_1189;
      }
      
      public function reserve() : uint
      {
         return ++var_401;
      }
      
      public function dispose() : void
      {
         var_995 = null;
         var_1189 = null;
         var_996 = null;
         var_401 = 0;
      }
   }
}
