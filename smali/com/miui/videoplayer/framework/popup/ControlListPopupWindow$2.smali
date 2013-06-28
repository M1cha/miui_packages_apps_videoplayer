.class Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$2;
.super Ljava/lang/Object;
.source "ControlListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$2;->this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 74
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$2;->this$0:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;

    #getter for: Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->access$100(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
