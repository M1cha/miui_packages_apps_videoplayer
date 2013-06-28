.class Lcom/miui/videoplayer/framework/views/OriginMediaController$1;
.super Landroid/os/Handler;
.source "OriginMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/views/OriginMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0xc8

    const/16 v6, 0xa

    const-wide/16 v4, 0x64

    const/4 v3, 0x6

    .line 334
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 336
    :pswitch_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    .line 337
    invoke-static {}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hide progress"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #calls: Lcom/miui/videoplayer/framework/views/OriginMediaController;->setProgress()I
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$200(Lcom/miui/videoplayer/framework/views/OriginMediaController;)I

    move-result v0

    .line 344
    .local v0, pos:I
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mDragging:Z
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mShowing:Z
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$400(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 346
    rem-int/lit16 v1, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 350
    .end local v0           #pos:I
    :pswitch_2
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mProgressTimePopupWindow:Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->dismiss()V

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->pause()V

    .line 356
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v1

    check-cast v1, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    const/4 v2, 0x1

    invoke-interface {v1, v6, v2}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->enableMultiSpeedPlayback(IZ)Z

    .line 359
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 360
    invoke-virtual {p0, p1, v4, v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #calls: Lcom/miui/videoplayer/framework/views/OriginMediaController;->ffwd()V
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$800(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    .line 364
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 368
    :pswitch_4
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->pause()V

    .line 370
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    if-eqz v1, :cond_2

    .line 371
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v1

    check-cast v1, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    const/4 v2, 0x0

    invoke-interface {v1, v6, v2}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->enableMultiSpeedPlayback(IZ)Z

    .line 373
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 374
    invoke-virtual {p0, p1, v4, v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 377
    :cond_2
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #calls: Lcom/miui/videoplayer/framework/views/OriginMediaController;->rew()V
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$900(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    .line 378
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 382
    :pswitch_5
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #calls: Lcom/miui/videoplayer/framework/views/OriginMediaController;->setProgress()I
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$200(Lcom/miui/videoplayer/framework/views/OriginMediaController;)I

    .line 383
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 384
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButtonLongPressed:Z
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1000(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButtonLongPressed:Z
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    :cond_3
    invoke-virtual {p0, p1, v4, v5}, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 389
    :pswitch_6
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$1;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #calls: Lcom/miui/videoplayer/framework/views/OriginMediaController;->showPauseFullScreenPopupWindow()V
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1200(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    goto/16 :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
