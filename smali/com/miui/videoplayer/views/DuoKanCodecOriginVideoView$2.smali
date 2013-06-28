.class Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;
.super Ljava/lang/Object;
.source "DuoKanCodecOriginVideoView.java"

# interfaces
.implements Lcom/duokan/MediaPlayer$OnPreparedListener;


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
    .line 323
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/duokan/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x3

    .line 325
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTotalPausedTime:J
    invoke-static {v1, v2, v3}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$302(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;J)J

    .line 326
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mLastPausedTimeStamp:J
    invoke-static {v1, v2, v3}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$402(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;J)J

    .line 328
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    const/4 v2, 0x2

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I
    invoke-static {v1, v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$502(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I

    .line 342
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    const/4 v4, 0x1

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCanSeekForward:Z
    invoke-static {v3, v4}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$802(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Z)Z

    move-result v3

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCanSeekBack:Z
    invoke-static {v2, v3}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$702(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Z)Z

    move-result v2

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCanPause:Z
    invoke-static {v1, v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$602(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;Z)Z

    .line 345
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$900(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnPreparedListener:Lcom/duokan/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$900(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;
    invoke-static {v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1000(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/duokan/MediaPlayer$OnPreparedListener;->onPrepared(Lcom/duokan/MediaPlayer;)V

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-virtual {p1}, Lcom/duokan/MediaPlayer;->getVideoWidth()I

    move-result v2

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I
    invoke-static {v1, v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$002(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I

    .line 352
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-virtual {p1}, Lcom/duokan/MediaPlayer;->getVideoHeight()I

    move-result v2

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I
    invoke-static {v1, v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$102(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I

    .line 354
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v0

    .line 355
    .local v0, seekToPosition:I
    if-eqz v0, :cond_1

    .line 356
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-virtual {v1, v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->seekTo(I)V

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$000(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-virtual {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I
    invoke-static {v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$000(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I
    invoke-static {v3}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 362
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceWidth:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1200(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoWidth:I
    invoke-static {v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$000(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mSurfaceHeight:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1300(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 366
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1400(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 367
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-virtual {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->start()V

    .line 386
    :cond_2
    :goto_0
    return-void

    .line 371
    :cond_3
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-virtual {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-virtual {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    .line 382
    :cond_4
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1400(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 383
    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$2;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-virtual {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->start()V

    goto :goto_0
.end method
