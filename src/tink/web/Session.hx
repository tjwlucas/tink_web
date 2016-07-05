package tink.web;

import tink.CoreApi;
import haxe.ds.Option;

class Session<User> {
  public var getUser(default, null):Void->Surprise<Option<User>, Error>;
  
  public function new(getUser) {
    this.getUser = getUser;
  }  
  
  static public var BASIC(default, null):Session<{}> = new Session(function () return Future.sync(Success(None)));
}