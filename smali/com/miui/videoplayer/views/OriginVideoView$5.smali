.class Lcom/miui/videoplayer/views/OriginVideoView$5;
.super Ljava/lang/Object;
.source "OriginVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 474
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView$5;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$5;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1802(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 478
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$5;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1900(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$5;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1900(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 481
    :cond_0
    return-void
.end method
