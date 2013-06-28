.class Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$1;
.super Ljava/lang/Object;
.source "AirKanDevicesPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->updateRemoteDeviceList()V
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
    .line 94
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 98
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->queryAirkanDevices()Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, deviceNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found device number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 101
    .local v1, m:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 102
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$200(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method
