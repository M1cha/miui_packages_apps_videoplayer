.class Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$2;
.super Landroid/content/BroadcastReceiver;
.source "TopStatusBarPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$2;->this$0:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 166
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$2;->this$0:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    #calls: Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->updateCurrentTime()V
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->access$100(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)V

    .line 169
    :cond_0
    return-void
.end method
