.class public Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;
.source "PauseFullScreenPopupWindow.java"


# instance fields
.field private mFullScreenImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v3, v3}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;-><init>(Landroid/view/View;II)V

    .line 21
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->setupWindows()V

    .line 22
    return-void
.end method

.method private setupWindows()V
    .locals 3

    .prologue
    .line 25
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->setAnimationStyle(I)V

    .line 27
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, root:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xb3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 30
    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->mFullScreenImageView:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 34
    const v1, 0x7f020046

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->mFullScreenImageView:Landroid/widget/ImageView;

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public setOnImageViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->mFullScreenImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 2
    .parameter "anchor"

    .prologue
    const/4 v1, 0x0

    .line 45
    const/16 v0, 0x30

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/miui/videoplayer/framework/popup/PauseFullScreenPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 46
    return-void
.end method
