.class public Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;
.super Landroid/widget/PopupWindow;
.source "TopStatusBarPopupWindow.java"


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHasRegisterTimeReceiver:Z

.field private mMediaNameTextView:Landroid/widget/TextView;

.field private mTime:Landroid/text/format/Time;

.field private mTimeChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeChangedIntentFilter:Landroid/content/IntentFilter;

.field private mTimeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 37
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mHasRegisterTimeReceiver:Z

    .line 161
    new-instance v4, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$2;

    invoke-direct {v4, p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$2;-><init>(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)V

    iput-object v4, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTimeChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->getLayoutId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->setContentView(Landroid/view/View;)V

    .line 43
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->setWidth(I)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 45
    .local v2, height:I
    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->setHeight(I)V

    .line 46
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mContext:Landroid/content/Context;

    .line 49
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 50
    .local v1, backgroudColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    const/16 v4, 0xb3

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    .line 55
    .local v3, rootView:Landroid/view/View;
    const v4, 0x7f090035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .local v0, backImageView:Landroid/widget/ImageView;
    new-instance v4, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$1;

    invoke-direct {v4, p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow$1;-><init>(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v4, 0x7f090036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mMediaNameTextView:Landroid/widget/TextView;

    .line 69
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mMediaNameTextView:Landroid/widget/TextView;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 71
    const v4, 0x7f090038

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTimeTextView:Landroid/widget/TextView;

    .line 73
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.TIME_TICK"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTimeChangedIntentFilter:Landroid/content/IntentFilter;

    .line 75
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTime:Landroid/text/format/Time;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->updateCurrentTime()V

    return-void
.end method

.method private formatMediaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mediaName"

    .prologue
    .line 135
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 136
    const-string v0, ""

    .line 139
    :cond_0
    return-object p1
.end method

.method private showSystemStatusBar()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method private updateBattery()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->getCurrentBattery(Landroid/content/Context;)F

    move-result v0

    .line 108
    .local v0, battery:F
    const-string v1, "battery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method private updateCurrentTime()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 144
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTimeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTimeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mHasRegisterTimeReceiver:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTimeChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mHasRegisterTimeReceiver:Z

    .line 158
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 159
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f03001f

    return v0
.end method

.method public show(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "anchor"
    .parameter "uri"
    .parameter "mediaTitle"

    .prologue
    const/4 v3, 0x0

    .line 84
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mAnchor:Landroid/view/View;

    .line 85
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mHasRegisterTimeReceiver:Z

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTimeChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mTimeChangedIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mHasRegisterTimeReceiver:Z

    .line 89
    :cond_0
    const/16 v0, 0x30

    invoke-virtual {p0, p1, v0, v3, v3}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 90
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->showSystemStatusBar()V

    .line 91
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->updateBattery()V

    .line 92
    if-eqz p3, :cond_1

    .line 93
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mMediaNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->updateCurrentTime()V

    .line 98
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->updateMediaName(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public updateMediaName(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    .line 112
    if-eqz p1, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, mediaName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    const-string v3, "TopStatusBarPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, realFilePath:Ljava/lang/String;
    const-string v3, "TopStatusBarPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "realFilePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v2, :cond_0

    .line 120
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 121
    .local v1, parsedUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 128
    .end local v1           #parsedUri:Landroid/net/Uri;
    .end local v2           #realFilePath:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 129
    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->mMediaNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->formatMediaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .end local v0           #mediaName:Ljava/lang/String;
    :cond_1
    return-void

    .line 126
    .restart local v0       #mediaName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
