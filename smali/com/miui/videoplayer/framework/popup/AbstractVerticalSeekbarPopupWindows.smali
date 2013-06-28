.class public abstract Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;
.super Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;
.source "AbstractVerticalSeekbarPopupWindows.java"


# instance fields
.field private backgroundImageHeight:I

.field private mContext:Landroid/content/Context;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mSeekbarLength:I

.field private mShowProgressNumber:Z

.field private mVerticalSpace:I

.field private progressTextView:Landroid/widget/TextView;

.field private titleImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/content/Context;)V
    .locals 3
    .parameter "contentView"
    .parameter "width"
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;-><init>(Landroid/view/View;)V

    .line 29
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mShowProgressNumber:Z

    .line 35
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 37
    .local v0, verticalBarGroupHeight:I
    invoke-virtual {p0, p2}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->setWidth(I)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->setHeight(I)V

    .line 40
    iput-object p3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->setupWindows()V

    .line 43
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->layoutSeekbarGroup()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private setupWindows()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p0, v5}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, v5}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->setTouchable(Z)V

    .line 52
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbarLength:I

    .line 53
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mVerticalSpace:I

    .line 59
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, contentView:Landroid/view/View;
    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->titleImageView:Landroid/widget/ImageView;

    .line 61
    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->progressTextView:Landroid/widget/TextView;

    .line 63
    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbar:Landroid/widget/SeekBar;

    .line 64
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 65
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 67
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows$1;

    invoke-direct {v4, p0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows$1;-><init>(Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 91
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->titleImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mImageWidth:I

    .line 93
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mImageHeight:I

    .line 95
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->progressTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 96
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->backgroundImageHeight:I

    .line 98
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mShowProgressNumber:Z

    .line 99
    return-void
.end method

.method private updateProgressTextView(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 110
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->progressTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 112
    .local v1, max:I
    int-to-float v4, p1

    int-to-float v5, v1

    div-float v3, v4, v5

    .line 113
    .local v3, percent:F
    iget v4, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mImageHeight:I

    iget v5, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mVerticalSpace:I

    add-int/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v3

    iget v6, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbarLength:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->backgroundImageHeight:I

    sub-int v2, v4, v5

    .line 115
    .local v2, newTopMargin:I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->progressTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 117
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->progressTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->setShowProgressNumber(Z)V

    .line 175
    invoke-super {p0}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->dismiss()V

    .line 176
    return-void
.end method

.method public dismiss(Z)V
    .locals 1
    .parameter "remove"

    .prologue
    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->setShowProgressNumber(Z)V

    .line 181
    invoke-super {p0, p1}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->dismiss(Z)V

    .line 182
    return-void
.end method

.method protected getProgressTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->progressTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSeekbar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method protected getSeekbarLength()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbarLength:I

    return v0
.end method

.method protected getTitleImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->titleImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getVerticalSpace()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mVerticalSpace:I

    return v0
.end method

.method public isAlwaysShowing()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mShowProgressNumber:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract layoutSeekbarGroup()V
.end method

.method public setMaxSeekbarValue(I)V
    .locals 1
    .parameter "maxValue"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 122
    return-void
.end method

.method public setShowProgressNumber(Z)V
    .locals 0
    .parameter "showProgressNumber"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mShowProgressNumber:Z

    .line 135
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->updateProgressNumberVisiblity()V

    .line 146
    invoke-super {p0, p1}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 0
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->updateProgressNumberVisiblity()V

    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 153
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->updateProgressNumberVisiblity()V

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 141
    return-void
.end method

.method public updateProgressNumberVisiblity()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->progressTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    return-void
.end method

.method public updateSeekbarValue(I)V
    .locals 1
    .parameter "currentVolume"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/popup/AbstractVerticalSeekbarPopupWindows;->updateProgressTextView(I)V

    .line 127
    return-void
.end method
