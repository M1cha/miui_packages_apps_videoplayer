.class Lcom/miui/videoplayer/views/OriginVideoView$2;
.super Ljava/lang/Object;
.source "OriginVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 322
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x3

    .line 324
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mTotalPausedTime:J
    invoke-static {v1, v2, v3}, Lcom/miui/videoplayer/views/OriginVideoView;->access$302(Lcom/miui/videoplayer/views/OriginVideoView;J)J

    .line 325
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mLastPausedTimeStamp:J
    invoke-static {v1, v2, v3}, Lcom/miui/videoplayer/views/OriginVideoView;->access$402(Lcom/miui/videoplayer/views/OriginVideoView;J)J

    .line 327
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    const/4 v2, 0x2

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I
    invoke-static {v1, v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$502(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 341
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    const/4 v4, 0x1

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mCanSeekForward:Z
    invoke-static {v3, v4}, Lcom/miui/videoplayer/views/OriginVideoView;->access$802(Lcom/miui/videoplayer/views/OriginVideoView;Z)Z

    move-result v3

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mCanSeekBack:Z
    invoke-static {v2, v3}, Lcom/miui/videoplayer/views/OriginVideoView;->access$702(Lcom/miui/videoplayer/views/OriginVideoView;Z)Z

    move-result v2

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mCanPause:Z
    invoke-static {v1, v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$602(Lcom/miui/videoplayer/views/OriginVideoView;Z)Z

    .line 344
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$900(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$900(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1000(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I
    invoke-static {v1, v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$002(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 351
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I
    invoke-static {v1, v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$102(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 353
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1100(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v0

    .line 354
    .local v0, seekToPosition:I
    if-eqz v0, :cond_1

    .line 355
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {v1, v0}, Lcom/miui/videoplayer/views/OriginVideoView;->seekTo(I)V

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$000(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$100(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 360
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I
    invoke-static {v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$000(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I
    invoke-static {v3}, Lcom/miui/videoplayer/views/OriginVideoView;->access$100(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 361
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceWidth:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1200(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I
    invoke-static {v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$000(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mSurfaceHeight:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1300(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$100(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 365
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1400(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 366
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->start()V

    .line 385
    :cond_2
    :goto_0
    return-void

    .line 370
    :cond_3
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    .line 381
    :cond_4
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1400(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 382
    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->start()V

    goto :goto_0
.end method
