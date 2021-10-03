package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.utils.Dictionary;
   
   public class FriendListView
   {
      
      private static const const_1424:String = "noconvinfo";
      
      private static const const_1423:String = "messageinput";
       
      
      private var var_1542:int = -1;
      
      private var var_877:IWindowContainer;
      
      private var _friendList:HabboFriendList;
      
      private var var_1541:int = -1;
      
      private var var_1299:ITextWindow;
      
      private var var_1298:FriendListTabsView;
      
      private var var_13:IFrameWindow;
      
      private var var_270:IWindowContainer;
      
      private var var_2105:Boolean;
      
      public function FriendListView(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
         var_1298 = new FriendListTabsView(_friendList);
      }
      
      private function prepare() : void
      {
         var_13 = IFrameWindow(_friendList.getXmlWindow("main_window"));
         var_13.findChildByTag("close").procedure = onWindowClose;
         var_877 = IWindowContainer(var_13.content.findChildByName("main_content"));
         var_270 = IWindowContainer(var_13.content.findChildByName("footer"));
         var_1298.prepare(var_877);
         var_13.procedure = onWindow;
         var_13.content.setParamFlag(HabboWindowParam.const_895,false);
         var_13.content.setParamFlag(HabboWindowParam.const_1315,true);
         var_13.header.setParamFlag(HabboWindowParam.const_719,false);
         var_13.header.setParamFlag(HabboWindowParam.const_1000,true);
         var_13.content.setParamFlag(HabboWindowParam.const_719,false);
         var_13.content.setParamFlag(HabboWindowParam.const_1000,true);
         var_13.findChildByName("open_edit_ctgs_but").procedure = onEditCategoriesButtonClick;
         var_1299 = ITextWindow(var_13.findChildByName("info_text"));
         var_1299.text = "";
         _friendList.refreshButton(var_13,"open_edit_ctgs",true,null,0);
         var_13.title.color = 4294623744;
         var_13.title.textColor = 4287851525;
         refresh("prepare");
         var_13.height = 350;
         var_13.width = 230;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_13.visible = false;
         _friendList.trackFriendListEvent(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED);
      }
      
      public function showInfo(param1:WindowEvent, param2:String) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.type == WindowMouseEvent.const_30)
         {
            var_1299.text = "";
         }
         else if(_loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            var_1299.text = param2;
         }
      }
      
      public function openFriendList() : void
      {
         if(var_13 == null)
         {
            prepare();
            _friendList.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.FRIENDLIST,var_13));
         }
         else
         {
            var_13.visible = true;
            var_13.activate();
         }
      }
      
      private function getTitleBar() : IWindowContainer
      {
         return var_13.findChildByName("titlebar") as IWindowContainer;
      }
      
      public function get tabsView() : FriendListTabsView
      {
         return var_1298;
      }
      
      private function refreshWindowSize() : void
      {
         this.var_2105 = true;
         var_270.visible = false;
         var_270.y = Util.getLowestPoint(var_13.content);
         var_270.width = _friendList.tabs.windowWidth;
         var_270.visible = true;
         var_13.content.height = Util.getLowestPoint(var_13.content);
         var_13.content.width = _friendList.tabs.windowWidth - 10;
         var_13.header.width = _friendList.tabs.windowWidth - 10;
         var_13.height = var_13.content.height + 30;
         var_13.width = _friendList.tabs.windowWidth;
         this.var_2105 = false;
         var_13.scaler.setParamFlag(HabboWindowParam.const_722,false);
         var_13.scaler.setParamFlag(HabboWindowParam.const_950,this._friendList.tabs.findSelectedTab() != null);
         var_13.scaler.setParamFlag(HabboWindowParam.const_719,false);
         var_13.scaler.setParamFlag(HabboWindowParam.const_895,false);
         var_13.scaler.x = 0 - var_13.scaler.width;
         var_13.scaler.y = 0 - var_13.scaler.height;
         var_1541 = var_13.height;
         var_1542 = var_13.width;
         Logger.log("RESIZED: " + _friendList.tabs.windowWidth);
      }
      
      public function isFriendListOpen() : Boolean
      {
         return var_13 != null && false;
      }
      
      public function refresh(param1:String) : void
      {
         if(this.var_13 == null)
         {
            return;
         }
         var_1298.refresh(param1);
         refreshWindowSize();
      }
      
      public function get mainWindow() : IWindowContainer
      {
         return var_13;
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_45 || param2 != var_13)
         {
            return;
         }
         if(this.var_2105)
         {
            return;
         }
         var _loc3_:int = var_1541 == -1 ? 0 : int(0 - var_1541);
         var _loc4_:int = var_1542 == -1 ? 0 : int(0 - var_1542);
         _friendList.tabs.tabContentHeight = Math.max(100,_friendList.tabs.tabContentHeight + _loc3_);
         _friendList.tabs.windowWidth = Math.max(147,_friendList.tabs.windowWidth + _loc4_);
         refresh("resize: " + _loc3_);
      }
      
      private function onEditCategoriesButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         _friendList.view.showInfo(param1,"${friendlist.tip.preferences}");
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Edit categories clicked");
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         _friendList.openHabboWebPage("link.format.friendlist.pref",new Dictionary(),_loc3_.stageX,_loc3_.stageY);
      }
      
      public function close() : void
      {
         if(this.var_13 != null)
         {
            this.var_13.visible = false;
         }
      }
   }
}
