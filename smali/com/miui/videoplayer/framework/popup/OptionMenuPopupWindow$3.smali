.class Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;
.super Landroid/content/BroadcastReceiver;
.source "OptionMenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;
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
    .line 188
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "paramContext"
    .parameter "paramIntent"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getLocalMediaPlayerControl()Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->access$800(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3$1;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3$1;-><init>(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    :cond_0
    return-void
.end method
