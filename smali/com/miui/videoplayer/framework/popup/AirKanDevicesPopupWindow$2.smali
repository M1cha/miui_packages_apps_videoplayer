.class Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$2;
.super Landroid/os/Handler;
.source "AirKanDevicesPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$2;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 112
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 113
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 114
    .local v0, deviceNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$2;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->removeRemoteDeviceImageViews()V
    invoke-static {v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$300(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)V

    .line 115
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$2;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->addRemoteDeviceImageViews(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$400(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;Ljava/util/List;)V

    .line 117
    .end local v0           #deviceNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
