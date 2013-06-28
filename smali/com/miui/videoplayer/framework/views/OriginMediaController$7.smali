.class Lcom/miui/videoplayer/framework/views/OriginMediaController$7;
.super Ljava/lang/Object;
.source "OriginMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 594
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-wide/16 v4, 0xbb8

    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 597
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #calls: Lcom/miui/videoplayer/framework/views/OriginMediaController;->doPauseResume()V
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1600(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V

    .line 599
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 600
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->dismiss()V

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 607
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 609
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 615
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$7;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-virtual {v1, v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setUpdateProgressEnable(Z)V

    goto :goto_0
.end method
