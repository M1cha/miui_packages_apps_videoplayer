.class Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;
.super Ljava/lang/Object;
.source "DuoKanCodecOriginVideoView.java"

# interfaces
.implements Lcom/duokan/MediaPlayer$OnErrorListener;


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
    .line 404
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/duokan/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 406
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1600(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/16 v0, -0x3eb

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1700(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->isOnlineVideo(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mRemainRetryTimes:I
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1800(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1600(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-1003 error! re-try url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1700(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " leave times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mRemainRetryTimes:I
    invoke-static {v2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1800(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1810(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)I

    .line 478
    :cond_0
    :goto_0
    return v3

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I
    invoke-static {v0, v4}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$502(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I

    .line 416
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I
    invoke-static {v0, v4}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1402(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I

    .line 422
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1900(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnErrorListener:Lcom/duokan/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1900(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1000(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/duokan/MediaPlayer$OnErrorListener;->onError(Lcom/duokan/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
