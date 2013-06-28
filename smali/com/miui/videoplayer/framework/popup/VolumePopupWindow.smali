.class public Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;
.super Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;
.source "VolumePopupWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x78

    invoke-direct {p0, v0, v1, p1}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;-><init>(Landroid/view/View;ILandroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "layoutId"

    .prologue
    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x78

    invoke-direct {p0, v1, v2, p1}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;-><init>(Landroid/view/View;ILandroid/content/Context;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 36
    .local v0, width:I
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->setWidth(I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected layoutSeekbarGroup()V
    .locals 11

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->getSeekbar()Landroid/widget/SeekBar;

    move-result-object v6

    .line 44
    .local v6, mSeekbar:Landroid/widget/SeekBar;
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->getTitleImageView()Landroid/widget/ImageView;

    move-result-object v8

    .line 45
    .local v8, titleImageView:Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 46
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 47
    .local v5, mImageWidth:I
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 49
    .local v4, mImageHeight:I
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 50
    .local v2, bitmapLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 52
    .local v3, bitmapLeftMagin:I
    invoke-virtual {v6}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .local v7, seekbarLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 54
    .local v0, SEEKBAR_WIDTH:I
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->getSeekbarLength()I

    move-result v9

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 55
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->getSeekbarLength()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    div-int/lit8 v10, v0, 0x2

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->getVerticalSpace()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 57
    iget v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v10, v5, 0x2

    sub-int/2addr v9, v10

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 59
    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    const/high16 v9, -0x3d4c

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setRotation(F)V

    .line 61
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 72
    return-void
.end method

.method public show(Landroid/view/View;Landroid/content/Context;)V
    .locals 3
    .parameter "anchor"
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, marginTop:I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 81
    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/miui/videoplayer/framework/popup/VolumePopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 83
    return-void
.end method
