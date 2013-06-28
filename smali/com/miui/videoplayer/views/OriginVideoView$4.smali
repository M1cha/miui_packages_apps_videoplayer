.class Lcom/miui/videoplayer/views/OriginVideoView$4;
.super Ljava/lang/Object;
.source "OriginVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 403
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 405
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1600(Lcom/miui/videoplayer/views/OriginVideoView;)Ljava/lang/String;

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

    .line 406
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I
    invoke-static {v0, v3}, Lcom/miui/videoplayer/views/OriginVideoView;->access$502(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 407
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I
    invoke-static {v0, v3}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1402(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 413
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1700(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1700(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$4;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1000(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    :cond_0
    return v4
.end method
