.class Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 336
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 337
    packed-switch p1, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 339
    :pswitch_0
    invoke-static {}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyManager CALL_STATE_IDLE, ring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v2, v2, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mRinging:Z
    invoke-static {v2}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$500(Lcom/miui/videoplayer/VideoPlayerActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mRinging:Z
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$500(Lcom/miui/videoplayer/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mRinging:Z
    invoke-static {v0, v1}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$502(Lcom/miui/videoplayer/VideoPlayerActivity;Z)Z

    .line 343
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$200(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/views/ITempVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL_STATE_IDLE :start play, seek to position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v2, v2, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;
    invoke-static {v2}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$600(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    move-result-object v2

    iget v2, v2, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$200(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/views/ITempVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v1, v1, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;
    invoke-static {v1}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$600(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    move-result-object v1

    iget v1, v1, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->position:I

    invoke-interface {v0, v1}, Lcom/miui/videoplayer/views/ITempVideoView;->seekTo(I)V

    .line 346
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$200(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/views/ITempVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/videoplayer/views/ITempVideoView;->start()V

    goto/16 :goto_0

    .line 351
    :pswitch_1
    invoke-static {}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 354
    :pswitch_2
    invoke-static {}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mRinging:Z
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$500(Lcom/miui/videoplayer/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$200(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/views/ITempVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$200(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/views/ITempVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/videoplayer/views/ITempVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-static {}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CALL_STATE_RINGING : pause "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$600(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v1, v1, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;
    invoke-static {v1}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$200(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/views/ITempVideoView;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/videoplayer/views/ITempVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->position:I

    .line 359
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    #getter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;
    invoke-static {v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$200(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/views/ITempVideoView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/videoplayer/views/ITempVideoView;->pause()V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver$1;->this$1:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    iget-object v0, v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;->this$0:Lcom/miui/videoplayer/VideoPlayerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/miui/videoplayer/VideoPlayerActivity;->mRinging:Z
    invoke-static {v0, v1}, Lcom/miui/videoplayer/VideoPlayerActivity;->access$502(Lcom/miui/videoplayer/VideoPlayerActivity;Z)Z

    goto/16 :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
