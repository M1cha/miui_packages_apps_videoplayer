.class public Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;
.source "AboutPopupWindow.java"


# static fields
.field private static final HEIGHT:I = 0x500

.field private static final TAG:Ljava/lang/String; = null

.field private static final WIDTH:I = 0x2d0


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mRequestedOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->mActivity:Landroid/app/Activity;

    .line 28
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->setFocusable(Z)V

    .line 29
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->setTouchable(Z)V

    .line 30
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->setupViews()V

    .line 33
    return-void
.end method

.method private setupViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    .line 37
    .local v3, contentView:Landroid/view/View;
    const v5, 0x7f090015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, aboutAppNameTextView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 39
    .local v4, shadowColor:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 41
    .local v1, aboutShadowColor:I
    const v5, 0x7f090013

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 44
    .local v2, aboutTextView:Landroid/widget/TextView;
    const/high16 v5, 0x4100

    const/high16 v6, 0x40e0

    invoke-virtual {v2, v5, v7, v6, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 45
    const/high16 v5, 0x4120

    const/high16 v6, 0x4190

    invoke-virtual {v0, v5, v7, v6, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 46
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->TAG:Ljava/lang/String;

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->mRequestedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 87
    invoke-super {p0}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->dismiss()V

    .line 88
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 8
    .parameter "anchor"

    .prologue
    const/16 v7, 0x2d0

    const/16 v6, 0x500

    const/4 v5, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->show(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, containerView:Landroid/view/View;
    sget-object v3, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->TAG:Ljava/lang/String;

    const-string v4, "show"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    iput v3, p0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->mRequestedOrientation:I

    .line 55
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getScreenOrientation()I

    move-result v2

    .line 57
    .local v2, screenOrirentation:I
    if-nez v2, :cond_0

    .line 58
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 59
    invoke-virtual {p0, v6}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->setWidth(I)V

    .line 60
    invoke-virtual {p0, v6}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->setHeight(I)V

    .line 61
    const/high16 v3, -0x3d4c

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 64
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 65
    const/16 v3, 0x118

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 66
    const/16 v3, -0x118

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const/4 v3, 0x3

    invoke-virtual {p0, p1, v3, v5, v5}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 81
    :goto_0
    return-void

    .line 70
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 71
    invoke-virtual {p0, v7}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->setWidth(I)V

    .line 72
    invoke-virtual {p0, v6}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->setHeight(I)V

    .line 73
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 76
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 77
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 78
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 79
    const/16 v3, 0x30

    invoke-virtual {p0, p1, v3, v5, v5}, Lcom/miui/videoplayer/framework/popup/AboutPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
