.class public Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;
.source "BrightnessPopupWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;-><init>(Landroid/view/View;ILandroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->mContext:Landroid/content/Context;

    .line 36
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->setMaxSeekbarValue(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "layoutId"

    .prologue
    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;-><init>(Landroid/view/View;ILandroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->mContext:Landroid/content/Context;

    .line 43
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->setMaxSeekbarValue(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected layoutSeekbarGroup()V
    .locals 13

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->getTitleImageView()Landroid/widget/ImageView;

    move-result-object v10

    .line 49
    .local v10, titleImageView:Landroid/widget/ImageView;
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 51
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iput v11, p0, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->mImageHeight:I

    .line 53
    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 54
    .local v3, bitmapLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 56
    .local v4, bitmapLeftMagin:I
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->getSeekbar()Landroid/widget/SeekBar;

    move-result-object v6

    .line 57
    .local v6, mSeekbar:Landroid/widget/SeekBar;
    invoke-virtual {v6}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    .local v8, seekbarLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 60
    .local v0, SEEKBAR_WIDTH:I
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->getSeekbarLength()I

    move-result v11

    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 62
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->getSeekbarLength()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    div-int/lit8 v12, v0, 0x2

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->getVerticalSpace()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 63
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->getSeekbarLength()I

    move-result v11

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    iget v12, p0, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->mImageHeight:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    add-int/2addr v11, v4

    iput v11, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 65
    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const/high16 v11, -0x3d4c

    invoke-virtual {v6, v11}, Landroid/widget/SeekBar;->setRotation(F)V

    .line 68
    iget v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 70
    .local v9, seekbar_topmargin:I
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->getProgressTextView()Landroid/widget/TextView;

    move-result-object v7

    .line 72
    .local v7, progressTextView:Landroid/widget/TextView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 74
    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 76
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 82
    return-void
.end method

.method public show(Landroid/view/View;Landroid/content/Context;)V
    .locals 3
    .parameter "anchor"
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, marginTop:I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 91
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->update()V

    .line 92
    const/16 v1, 0x33

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/videoplayer/framework/popup/BrightnessPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 93
    return-void
.end method
