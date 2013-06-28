.class Lcom/miui/videoplayer/framework/views/OriginMediaController$5;
.super Ljava/lang/Object;
.source "OriginMediaController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/views/OriginMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$5;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 521
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$5;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    const/4 v0, 0x0

    .line 527
    :goto_0
    return v0

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$5;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #setter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPrevButtonLongPressed:Z
    invoke-static {v1, v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1002(Lcom/miui/videoplayer/framework/views/OriginMediaController;Z)Z

    .line 525
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$5;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$5;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
