.class Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$2;
.super Ljava/lang/Object;
.source "AirKanDevicesPopupWindowV5.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$2;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 154
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$2;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->queryAirkanDevices()Ljava/util/List;

    move-result-object v0

    .line 155
    .local v0, deviceNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$000()Ljava/lang/String;

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

    .line 156
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 157
    .local v1, m:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 158
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$2;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$300(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    return-void
.end method
