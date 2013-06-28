.class Lcom/miui/videoplayer/framework/views/OriginMediaController$2;
.super Ljava/lang/Object;
.source "OriginMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 452
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 457
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 458
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButtonLongPressed:Z
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #setter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mNextButtonLongPressed:Z
    invoke-static {v1, v4}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1102(Lcom/miui/videoplayer/framework/views/OriginMediaController;Z)Z

    .line 460
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->start()V

    .line 461
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 464
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 473
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return v4

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eq v1, v3, :cond_0

    .line 469
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$2;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I
    invoke-static {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1400(Lcom/miui/videoplayer/framework/views/OriginMediaController;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->switchMedia(I)V

    goto :goto_0
.end method
