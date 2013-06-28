.class public Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;
.source "MediaInfoPopupWindow.java"


# static fields
.field private static instance:Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;


# instance fields
.field private audioBitrateTextView:Landroid/widget/TextView;

.field private audioCodingTextView:Landroid/widget/TextView;

.field private frameRateTextView:Landroid/widget/TextView;

.field private lengthTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private resolutionTextView:Landroid/widget/TextView;

.field private videoCodingTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x2

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v3, v3}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;-><init>(Landroid/view/View;II)V

    .line 37
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->setupWindows()V

    .line 40
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    sget-object v0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->instance:Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    invoke-direct {v0, p0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->instance:Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    .line 32
    :cond_0
    sget-object v0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->instance:Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    return-object v0
.end method

.method public static isNull()Z
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->instance:Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setNull()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->instance:Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;

    .line 108
    return-void
.end method

.method private setupWindows()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-virtual {p0, v7}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->setFocusable(Z)V

    .line 44
    invoke-virtual {p0, v7}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->setTouchable(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, contentView:Landroid/view/View;
    const v7, 0x7f09003d

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->lengthTextView:Landroid/widget/TextView;

    .line 48
    const v7, 0x7f09003f

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->resolutionTextView:Landroid/widget/TextView;

    .line 49
    const v7, 0x7f090041

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->videoCodingTextView:Landroid/widget/TextView;

    .line 50
    const v7, 0x7f090043

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->audioCodingTextView:Landroid/widget/TextView;

    .line 51
    const v7, 0x7f090045

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->audioBitrateTextView:Landroid/widget/TextView;

    .line 52
    const v7, 0x7f090047

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->frameRateTextView:Landroid/widget/TextView;

    .line 61
    const v7, 0x7f09003c

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 62
    .local v4, lengthLabelTextView:Landroid/widget/TextView;
    const v7, 0x7f09003e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 63
    .local v5, resolutionLabelTextView:Landroid/widget/TextView;
    const v7, 0x7f090040

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 64
    .local v6, videoCodingLabelTextView:Landroid/widget/TextView;
    const v7, 0x7f090042

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, audioCodingLabelTextView:Landroid/widget/TextView;
    const v7, 0x7f090044

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, audioBitrateLabelTextView:Landroid/widget/TextView;
    const v7, 0x7f090046

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 74
    .local v3, frameRateLabelTextView:Landroid/widget/TextView;
    return-void
.end method


# virtual methods
.method public show(Landroid/view/View;)V
    .locals 4
    .parameter "anchor"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 80
    .local v0, x:I
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 81
    .local v1, y:I
    const/16 v2, 0x33

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 82
    return-void
.end method

.method public updateValues(Lcom/duokan/MediaPlayer$MediaInfo;)V
    .locals 4
    .parameter "mediaInfo"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->lengthTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    move-result-object v2

    iget v3, p1, Lcom/duokan/MediaPlayer$MediaInfo;->duration:I

    invoke-virtual {v2, v3}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->resolutionTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/duokan/MediaPlayer$MediaInfo;->videoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/duokan/MediaPlayer$MediaInfo;->videoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, noVideoString:Ljava/lang/String;
    iget-object v1, p1, Lcom/duokan/MediaPlayer$MediaInfo;->videoCodecName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->videoCodingTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/duokan/MediaPlayer$MediaInfo;->videoCodecName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    iget-object v1, p1, Lcom/duokan/MediaPlayer$MediaInfo;->audioCodecName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->audioCodingTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/duokan/MediaPlayer$MediaInfo;->audioCodecName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->audioBitrateTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/duokan/MediaPlayer$MediaInfo;->audioSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->frameRateTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/duokan/MediaPlayer$MediaInfo;->videoFrameRate:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->videoCodingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MediaInfoPopupWindow;->audioCodingTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
