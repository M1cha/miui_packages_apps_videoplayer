.class Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;
.super Ljava/lang/Object;
.source "AirKanDevicesPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 184
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, targetDeviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mVideoUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$500(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->playToDevice(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->dismiss()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->takebackToPhone()V

    .line 196
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->dismiss()V

    .line 197
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$4;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mVideoUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$500(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->playToDevice(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method
