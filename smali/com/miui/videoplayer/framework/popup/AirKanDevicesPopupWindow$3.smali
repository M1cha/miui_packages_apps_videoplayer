.class Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$3;
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
    .line 173
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->mAirKanManager:Lcom/miui/videoplayer/framework/airkan/AirkanManager;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;)Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->takebackToPhone()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/AirKanDevicesPopupWindow;->dismiss()V

    .line 181
    return-void
.end method
