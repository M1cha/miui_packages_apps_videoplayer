.class Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;
.super Ljava/lang/Object;
.source "DuoKanCodecOriginVideoView.java"

# interfaces
.implements Lcom/duokan/MediaPlayer$OnCompletionListener;


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
    .line 390
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/duokan/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x5

    .line 392
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentState:I
    invoke-static {v0, v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$502(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I

    .line 393
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mTargetState:I
    invoke-static {v0, v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1402(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I

    .line 397
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1500(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnCompletionListener:Lcom/duokan/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1500(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$3;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mMediaPlayer:Lcom/duokan/MediaPlayer;
    invoke-static {v1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$1000(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/duokan/MediaPlayer$OnCompletionListener;->onCompletion(Lcom/duokan/MediaPlayer;)V

    .line 400
    :cond_0
    return-void
.end method
