.class Lcom/miui/videoplayer/views/OriginVideoView$6;
.super Ljava/lang/Object;
.source "OriginVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/views/OriginVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/views/OriginVideoView;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/views/OriginVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

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

    .line 523
    iget-object v4, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1600(Lcom/miui/videoplayer/views/OriginVideoView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "surfaceChanged!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v4, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceWidth:I
    invoke-static {v4, p3}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1202(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 525
    iget-object v4, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHeight:I
    invoke-static {v4, p4}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1302(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 526
    iget-object v4, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I
    invoke-static {v4}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1400(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 527
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I
    invoke-static {v4}, Lcom/miui/videoplayer/views/OriginVideoView;->access$000(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I
    invoke-static {v4}, Lcom/miui/videoplayer/views/OriginVideoView;->access$100(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 528
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1000(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 529
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1100(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1100(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/videoplayer/views/OriginVideoView;->seekTo(I)V

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {v2}, Lcom/miui/videoplayer/views/OriginVideoView;->start()V

    .line 534
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 526
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 527
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1600(Lcom/miui/videoplayer/views/OriginVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$2002(Lcom/miui/videoplayer/views/OriginVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 539
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #calls: Lcom/miui/videoplayer/views/OriginVideoView;->openVideo()V
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$2100(Lcom/miui/videoplayer/views/OriginVideoView;)V

    .line 540
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1600(Lcom/miui/videoplayer/views/OriginVideoView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "surface destroyed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    const/4 v1, 0x0

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$2002(Lcom/miui/videoplayer/views/OriginVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 550
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$6;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    const/4 v1, 0x1

    #calls: Lcom/miui/videoplayer/views/OriginVideoView;->release(Z)V
    invoke-static {v0, v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$2200(Lcom/miui/videoplayer/views/OriginVideoView;Z)V

    .line 551
    return-void
.end method
