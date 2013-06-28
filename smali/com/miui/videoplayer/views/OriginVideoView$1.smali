.class Lcom/miui/videoplayer/views/OriginVideoView$1;
.super Ljava/lang/Object;
.source "OriginVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 309
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView$1;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$1;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I
    invoke-static {v0, v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$002(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 312
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$1;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I
    invoke-static {v0, v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$102(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 313
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$1;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$000(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$1;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$100(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$1;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-virtual {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$1;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoWidth:I
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$000(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/videoplayer/views/OriginVideoView$1;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mVideoHeight:I
    invoke-static {v2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$100(Lcom/miui/videoplayer/views/OriginVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$1;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$200(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$1;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$200(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 319
    :cond_1
    return-void
.end method
