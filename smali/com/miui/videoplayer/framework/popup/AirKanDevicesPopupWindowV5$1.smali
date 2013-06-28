.class Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;
.super Ljava/lang/Object;
.source "AirKanDevicesPopupWindowV5.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;
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
    .line 67
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnItemClickListener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->takebackToPhone()V

    .line 74
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->dismiss()V

    .line 76
    :cond_0
    if-eqz p3, :cond_1

    .line 77
    const v2, 0x7f090003

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, targetDeviceName:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mVideoUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$200(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->playToDevice(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->dismiss()V

    .line 91
    .end local v0           #targetDeviceName:Ljava/lang/String;
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 83
    .restart local v0       #targetDeviceName:Ljava/lang/String;
    .restart local v1       #textView:Landroid/widget/TextView;
    :cond_2
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v4}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->takebackToPhone()V

    .line 86
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->dismiss()V

    .line 87
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$100(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5$1;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->mVideoUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;->access$200(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindowV5;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->playToDevice(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method
