<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class UserPresenceChatChannel implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    /**
     * Create a new event instance.
     *
     * @return void
     */
     public $data;
     public function __construct($data)
    {
        $this->data = $data;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    //  public function broadcastAs()//for broadcast as custom class name
    // {
    //     return 'trackUserPresenceChatChannel';
    // }
    //  public function broadcastWith()//for data stucture modification
    // {
    //     return ['custom_message'=>$this->data];
    // }
    public function broadcastOn()
    {
         return new PresenceChannel('trackUserPresenceChatChannel');
    }
}
