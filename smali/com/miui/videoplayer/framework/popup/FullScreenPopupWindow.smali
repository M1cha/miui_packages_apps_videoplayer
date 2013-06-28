.class public Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;
.source "FullScreenPopupWindow.java"


# instance fields
.field private mBackgroundAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v3, v3}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;-><init>(Landroid/view/View;II)V

    .line 17
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->setAnimationStyle(I)V

    .line 18
    return-void
.end method


# virtual methods
.method public setBackgroundAlpha(I)V
    .locals 0
    .parameter "backgroundAlpha"

    .prologue
    .line 21
    iput p1, p0, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->mBackgroundAlpha:I

    .line 22
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 3
    .parameter "anchor"

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->mBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 26
    const/16 v0, 0x30

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 27
    return-void
.end method
