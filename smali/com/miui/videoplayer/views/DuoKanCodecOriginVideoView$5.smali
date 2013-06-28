.class Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$5;
.super Ljava/lang/Object;
.source "DuoKanCodecOriginVideoView.java"

# interfaces
.implements Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;


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
    .line 483
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$5;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/duokan/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$5;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #setter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$2002(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;I)I

    .line 486
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$5;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$2100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView$5;->this$0:Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;

    #getter for: Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->mOnBufferingUpdateListener:Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;->access$2100(Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;)Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/duokan/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/duokan/MediaPlayer;I)V

    .line 489
    :cond_0
    return-void
.end method
