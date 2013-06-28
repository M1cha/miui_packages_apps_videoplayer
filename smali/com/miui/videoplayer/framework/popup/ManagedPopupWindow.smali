.class public abstract Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ManagedPopupWindow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "contentView"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 10
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->dismiss(Z)V

    .line 41
    return-void
.end method

.method public dismiss(Z)V
    .locals 1
    .parameter "remove"

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->removeShowingPopupWindow(Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;)V

    .line 48
    :cond_0
    return-void
.end method

.method public abstract show(Landroid/view/View;)V
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    .line 28
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->addShowingPopupWindow(Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;)V

    .line 29
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 30
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 34
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->addShowingPopupWindow(Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;)V

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 36
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 22
    invoke-static {}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->getInstance()Lcom/miui/videoplayer/framework/popup/PopupWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/popup/PopupWindowManager;->addShowingPopupWindow(Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;)V

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 24
    return-void
.end method
