.class public Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;
.source "BottomControllerPopupWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "contentView"

    .prologue
    .line 16
    invoke-direct {p0, p2}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;-><init>(Landroid/view/View;)V

    .line 17
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->setWidth(I)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 19
    .local v1, height:I
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->setHeight(I)V

    .line 21
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 22
    .local v0, backgroudColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    const/16 v2, 0xb3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public show(Landroid/view/View;)V
    .locals 2
    .parameter "anchor"

    .prologue
    const/4 v1, 0x0

    .line 30
    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 31
    return-void
.end method

.method public updateHeight(Z)V
    .locals 3
    .parameter "airkan"

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, height:I
    if-eqz p1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 40
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->setHeight(I)V

    .line 41
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/BottomControllerPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method
