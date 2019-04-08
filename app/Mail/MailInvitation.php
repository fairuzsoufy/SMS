<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Lang;

class MailInvitation extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $recipient;

    public function __construct($email)
    {
        $this->recipient = $email;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return ($this)
        ->to($this->recipient)
        ->from(env('MAIL_USERNAME'))
        ->view('emails.inv')
        ->with(['email' => $this->recipient])
        ->subject('Stock Market Simulation - Main Event');
    }
}
