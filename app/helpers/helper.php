<?php
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Events\Publicchannel;
use App\Events\UserPresenceChatChannel;
Use Pusher\Pusher;
use App\Models\User;
use App\Models\myBlog\Userchats;


function SendBroadcastDataOnPresenceChannel(array $dataset){
  return broadcast(new UserPresenceChatChannel($dataset));
}










///composer dump-autoload

?>