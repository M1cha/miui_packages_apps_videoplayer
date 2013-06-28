.class Lcom/miui/videoplayer/views/OriginVideoView$3;
.super Ljava/lang/Object;
.source "OriginVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 389
    iput-object p1, p0, Lcom/miui/videoplayer/views/OriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x5

    .line 391
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mCurrentState:I
    invoke-static {v0, v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$502(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 392
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/OriginVideoView;->mTargetState:I
    invoke-static {v0, v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1402(Lcom/miui/videoplayer/views/OriginVideoView;I)I

    .line 396
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1500(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/miui/videoplayer/views/OriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1500(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/views/OriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/OriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/OriginVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/miui/videoplayer/views/OriginVideoView;->access$1000(Lcom/miui/videoplayer/views/OriginVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 399
    :cond_0
    return-void
.end method
