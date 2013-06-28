.class Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3$1;
.super Ljava/lang/Object;
.source "OptionMenuPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3$1;->this$1:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3$1;->this$1:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;

    iget-object v0, v0, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow$3;->this$0:Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/OptionMenuPopupWindow;->getLocalMediaPlayerControl()Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->start()V

    .line 198
    return-void
.end method
