.class Lcom/miui/videoplayer/framework/views/OriginMediaController$11;
.super Ljava/lang/Object;
.source "OriginMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 758
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    new-instance v1, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;-><init>(Landroid/content/Context;Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V

    #setter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;
    invoke-static {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2302(Lcom/miui/videoplayer/framework/views/OriginMediaController;Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 773
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mUriArray:[Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayingIndex:I
    invoke-static {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$1400(Lcom/miui/videoplayer/framework/views/OriginMediaController;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;->setVideoUri(Landroid/net/Uri;)V

    .line 774
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirkanDevicePopupWindow:Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2300(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAnchor:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$2000(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mPlayer:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$500(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/miui/videoplayer/framework/popup/IAirKanDevicesPopupWindow;->show(Landroid/view/View;Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V

    .line 776
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$700(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaController$11;->this$0:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    #getter for: Lcom/miui/videoplayer/framework/views/OriginMediaController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->access$100(Lcom/miui/videoplayer/framework/views/OriginMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 780
    :cond_1
    return-void
.end method
