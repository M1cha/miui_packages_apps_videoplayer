.class Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$2;
.super Ljava/lang/Object;
.source "OptionMenuPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->onScreenShotClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$2;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CAPTURE_SCREENSHOT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, broadcast:Landroid/content/Intent;
    const-string v0, "capture_delay"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 182
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$2;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$700(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$2;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mCaptureScreenshotResultBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$600(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    const/4 v5, -0x1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 183
    return-void
.end method
