.class public Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;
.super Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;
.source "ProgressTimePopupWindow.java"


# static fields
.field public static final NEXT_MEDIA_NOTICE_POSITION:I = -0x3ea

.field public static final PREV_MEDIA_NOTICE_POSITION:I = -0x3e9


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLeftOrientationImageView:Landroid/widget/ImageView;

.field private mOrientationImageView:Landroid/widget/ImageView;

.field private mSmallFont:Z

.field private mTimeTextView:Landroid/widget/TextView;

.field private mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "smallFont"

    .prologue
    const/4 v0, -0x2

    .line 39
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;-><init>()V

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->setHeight(I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->setWidth(I)V

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->setContentView(Landroid/view/View;)V

    .line 47
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mContext:Landroid/content/Context;

    .line 48
    iput-boolean p2, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mSmallFont:Z

    .line 49
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->setupWindow()V

    .line 50
    return-void
.end method

.method private setupWindow()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mOrientationImageView:Landroid/widget/ImageView;

    .line 55
    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mTimeTextView:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mLeftOrientationImageView:Landroid/widget/ImageView;

    .line 67
    return-void
.end method


# virtual methods
.method public getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    return-object v0
.end method

.method public setOrientation(Z)V
    .locals 4
    .parameter "forward"

    .prologue
    const v3, 0x7f020015

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mOrientationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mOrientationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mLeftOrientationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mOrientationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mOrientationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mLeftOrientationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTopStatusBarPopupWindow(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)V
    .locals 0
    .parameter "topStatusBarPopupWindow"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    .line 30
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 102
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mTopStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->dismiss()V

    .line 111
    :cond_0
    const/16 v0, 0x31

    invoke-super {p0, p1, v0, v1, v1}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 115
    return-void
.end method

.method public updatePosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 71
    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mTimeTextView:Landroid/widget/TextView;

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    const/16 v0, -0x3ea

    if-ne p1, v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mTimeTextView:Landroid/widget/TextView;

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ProgressTimePopupWindow;->mTimeTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
