package com.sulake.habbo.widget.poll
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetPollMessage;
   
   public class PollOfferDialog implements IPollDialog
   {
      
      public static const const_252:String = "POLL_OFFER_STATE_UNKNOWN";
      
      public static const const_736:String = "POLL_OFFER_STATE_CANCEL";
      
      public static const const_1155:String = "POLL_OFFER_STATE_OK";
       
      
      private var _widget:PollWidget;
      
      private var _disposed:Boolean = false;
      
      private var _window:IFrameWindow;
      
      private var var_31:String = "POLL_OFFER_STATE_UNKNOWN";
      
      private var _id:int = -1;
      
      public function PollOfferDialog(param1:int, param2:String, param3:PollWidget)
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         super();
         _id = param1;
         _widget = param3;
         var _loc4_:XmlAsset = _widget.assets.getAssetByName("poll_offer") as XmlAsset;
         if(_loc4_)
         {
            _window = _widget.windowManager.buildFromXML(_loc4_.content as XML) as IFrameWindow;
            if(_window)
            {
               _window.center();
               _window.procedure = offerDialogEventProc;
               _loc5_ = _window.findChildByName("poll_offer_summary") as ITextWindow;
               if(_loc5_)
               {
                  _loc5_.htmlText = param2;
                  _loc6_ = _window.findChildByName("poll_offer_summary_wrapper") as IItemListWindow;
                  if(_loc6_)
                  {
                     _window.height += _loc6_.scrollableRegion.height - _loc6_.visibleRegion.height;
                  }
               }
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get state() : String
      {
         return var_31;
      }
      
      private function offerDialogEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(var_31 == const_252)
         {
            if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
            {
               switch(param2.name)
               {
                  case "poll_offer_button_ok":
                     var_31 = const_1155;
                     _widget.messageListener.processWidgetMessage(new RoomWidgetPollMessage(RoomWidgetPollMessage.const_541,_id));
                     break;
                  case "poll_offer_button_cancel":
                     var_31 = const_736;
                     _widget.messageListener.processWidgetMessage(new RoomWidgetPollMessage(RoomWidgetPollMessage.const_472,_id));
                     _widget.pollCancelled(_id);
                     break;
                  case "poll_offer_button_later":
                     var_31 = const_736;
                     _widget.pollCancelled(_id);
                     break;
                  case "header_button_close":
                     var_31 = const_736;
                     _widget.messageListener.processWidgetMessage(new RoomWidgetPollMessage(RoomWidgetPollMessage.const_472,_id));
                     _widget.pollCancelled(_id);
               }
            }
         }
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            if(_window)
            {
               _window.dispose();
               _window = null;
            }
            _widget = null;
            _disposed = true;
         }
      }
   }
}
