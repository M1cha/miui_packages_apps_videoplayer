.class Lcom/miui/videoplayer/framework/popup/MenuPopupWindow$1;
.super Ljava/lang/Object;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;)Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x19

    if-eq p2, v0, :cond_0

    const/16 v0, 0x18

    if-ne p2, v0, :cond_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;)Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    .line 62
    :cond_1
    const/16 v0, 0x52

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mIsPopShowing:Z
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->access$100(Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;

    const/4 v1, 0x1

    #setter for: Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mIsPopShowing:Z
    invoke-static {v0, v1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->access$102(Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;Z)Z

    .line 67
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->dismiss()V

    goto :goto_1
.end method
