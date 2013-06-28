.class public Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;
.super Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;
.source "TopStatusBarPopupWindowV5.java"


# instance fields
.field private localOnlineTextView:Landroid/widget/TextView;

.field private mBackImageView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mMediaCiTextview:Landroid/widget/TextView;

.field private mMediaNameTextView:Landroid/widget/TextView;

.field private mSeperateImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->setHeight(I)V

    .line 29
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->localOnlineTextView:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mBackImageView:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mMediaNameTextView:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mSeperateImageView:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mMediaCiTextview:Landroid/widget/TextView;

    .line 36
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f030020

    return v0
.end method

.method public getMediaNameTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mMediaNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public show(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 6
    .parameter "anchor"
    .parameter "uri"
    .parameter "mediaTitle"
    .parameter "mediaCi"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->updateLayout()V

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->show(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->localOnlineTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const-string v1, "mediaci: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v1, -0x1

    if-eq p4, v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mSeperateImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mMediaCiTextview:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mMediaCiTextview:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->localOnlineTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v0           #scheme:Ljava/lang/String;
    :cond_1
    return-void

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mSeperateImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mMediaCiTextview:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateLayout()V
    .locals 4

    .prologue
    .line 69
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getScreenOrientation()I

    move-result v2

    .line 70
    .local v2, orientation:I
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    .local v0, backLp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->mMediaNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 72
    .local v1, mediaNameLp:Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v2, :cond_0

    .line 73
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 74
    const/4 v3, 0x4

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 80
    return-void

    .line 76
    :cond_0
    const/16 v3, 0x14

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 77
    const/16 v3, 0x18

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method
