.class Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;
.super Ljava/lang/Object;
.source "DuoKanCodecOriginVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 531
    iget-object v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1600(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "surfaceChanged!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceWidth:I
    invoke-static {v4, p3}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1202(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I

    .line 533
    iget-object v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHeight:I
    invoke-static {v4, p4}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1302(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I

    .line 534
    iget-object v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I
    invoke-static {v4}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1400(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 535
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I
    invoke-static {v4}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$000(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I
    invoke-static {v4}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 536
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;
    invoke-static {v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1000(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 537
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->seekTo(I)V

    .line 540
    :cond_0
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-virtual {v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->start()V

    .line 542
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 534
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 535
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1600(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$2202(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 547
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #calls: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->openVideo()V
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$2300(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)V

    .line 548
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1600(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "surface destroyed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    const/4 v1, 0x0

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$2202(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 558
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    const/4 v1, 0x1

    #calls: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->release(Z)V
    invoke-static {v0, v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$2400(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Z)V

    .line 559
    return-void
.end method
