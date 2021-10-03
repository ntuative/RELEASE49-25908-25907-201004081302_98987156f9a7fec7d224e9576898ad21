package com.sulake.core.utils.profiler
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import flash.utils.getQualifiedClassName;
   
   public class ProfilerAgent extends ProfilerAgentTask implements IDisposable
   {
       
      
      protected var var_944:IUpdateReceiver;
      
      public function ProfilerAgent(param1:IUpdateReceiver)
      {
         var_944 = param1;
         var _loc2_:String = getQualifiedClassName(var_944);
         super(_loc2_.slice(_loc2_.lastIndexOf(":") + 1,_loc2_.length));
      }
      
      override public function dispose() : void
      {
         var_944 = null;
         super.dispose();
      }
      
      public function get receiver() : IUpdateReceiver
      {
         return var_944;
      }
      
      public function update(param1:int) : void
      {
         super.start();
         var_944.update(param1);
         super.stop();
      }
   }
}
