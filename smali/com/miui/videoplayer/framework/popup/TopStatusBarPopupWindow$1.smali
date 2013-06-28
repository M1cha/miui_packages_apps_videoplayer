.class Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$1;
.super Ljava/lang/Object;
.source "TopStatusBarPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;-><init>(Landroid/content/Context;)V
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
    .line 56
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    .line 60
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mAnchor:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BackKeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BackKeyEvent;-><init>(II)V

    .line 62
    .local v0, backKeyEvent:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BackKeyEvent;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$1;->this$0:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mAnchor:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->access$000(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 64
    .end local v0           #backKeyEvent:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController$BackKeyEvent;
    :cond_0
    return-void
.end method
