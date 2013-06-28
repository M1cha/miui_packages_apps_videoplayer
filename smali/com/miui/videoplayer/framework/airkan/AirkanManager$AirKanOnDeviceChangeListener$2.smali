.class Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$2;
.super Ljava/lang/Object;
.source "AirkanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->onOpened()V
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
    .line 222
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$2;->this$1:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start airkan directly"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 228
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$2;->this$1:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;

    iget-object v1, v1, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkanUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$300(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 230
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$2;->this$1:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;

    iget-object v1, v1, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkanUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$300(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/videoplayer/framework/utils/DuoKanUtils;->isValidFormatVideo(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$2;->this$1:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;

    iget-object v1, v1, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$700(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    :cond_0
    return-void
.end method
