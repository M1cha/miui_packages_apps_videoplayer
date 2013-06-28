.class public Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ProgressBarOnlyPopupWindow.java"


# instance fields
.field private mDuration:I

.field private mDurationTextView:Landroid/widget/TextView;

.field private mPositionTextView:Landroid/widget/TextView;

.field private mSeekbar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 27
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->setWidth(I)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 29
    .local v1, height:I
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->setHeight(I)V

    .line 31
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 32
    .local v0, backgroudColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    const/16 v2, 0xb3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->setupWindows()V

    .line 36
    return-void
.end method

.method private setupWindows()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, contentView:Landroid/view/View;
    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mSeekbar:Landroid/widget/SeekBar;

    .line 44
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mSeekbar:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 45
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setPressed(Z)V

    .line 46
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mSeekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow$1;

    invoke-direct {v2, p0}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow$1;-><init>(Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 67
    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mPositionTextView:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mDurationTextView:Landroid/widget/TextView;

    .line 69
    return-void
.end method


# virtual methods
.method public setDuration(I)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mDurationTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iput p1, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mDuration:I

    .line 78
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 2
    .parameter "anchor"

    .prologue
    const/4 v1, 0x0

    .line 72
    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 73
    return-void
.end method

.method public updatePosition(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mPositionTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mDuration:I

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mSeekbar:Landroid/widget/SeekBar;

    const-wide/16 v1, 0x3e8

    int-to-long v3, p1

    mul-long/2addr v1, v3

    iget v3, p0, Lcom/miui/videoplayer/framework/popup/ProgressBarOnlyPopupWindow;->mDuration:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 85
    :cond_0
    return-void
.end method
