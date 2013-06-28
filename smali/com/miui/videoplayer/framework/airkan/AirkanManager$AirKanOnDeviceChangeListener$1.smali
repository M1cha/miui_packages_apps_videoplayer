.class Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$1;
.super Ljava/lang/Object;
.source "AirkanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->onDeviceCountChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$1;->this$1:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$1;->this$1:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;

    iget-object v1, v1, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->queryAirkanDevices()Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$1;->this$1:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;

    iget-object v1, v1, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$700(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$1;->this$1:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;

    iget-object v1, v1, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$700(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
