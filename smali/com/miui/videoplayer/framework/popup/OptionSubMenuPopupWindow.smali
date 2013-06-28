.class public Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;
.source "OptionSubMenuPopupWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastSelectedIndex:I

.field private mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;)V
    .locals 2
    .parameter "context"
    .parameter "videoView"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mLastSelectedIndex:I

    .line 26
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    .line 30
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, contentView:Landroid/view/View;
    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->setupViews()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mLastSelectedIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mLastSelectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setupViews()V
    .locals 6

    .prologue
    .line 37
    const/4 v1, 0x6

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 43
    .local v5, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 45
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$1;

    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f030001

    const v4, 0x7f090003

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$1;-><init>(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;Landroid/content/Context;II[Ljava/lang/String;)V

    .line 81
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->getOptionMenuListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->getOptionMenuListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$3;

    invoke-direct {v2, p0}, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow$3;-><init>(Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method protected getBackgroundResId(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    const v0, 0x7f020058

    .line 168
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020059

    goto :goto_0
.end method

.method protected getMenuHeightForPortScreen()I
    .locals 6

    .prologue
    .line 150
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 152
    .local v1, itemHeight:I
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07004a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 154
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 155
    .local v0, divideHeight:I
    const/4 v2, 0x5

    .line 157
    .local v2, space:I
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 158
    .local v3, verticalSpace:I
    add-int/2addr v2, v3

    .line 160
    add-int v4, v1, v0

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v2

    return v4
.end method

.method protected getMenuWidthForLandScreen()I
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 176
    .local v0, width:I
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 178
    return v0
.end method

.method public updateVideoPlayerSize()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 97
    iget v0, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mLastSelectedIndex:I

    .line 98
    .local v0, position:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-interface {v5}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->getVideoWidth()I

    move-result v4

    .line 99
    .local v4, videoWidth:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-interface {v5}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->getVideoHeight()I

    move-result v3

    .line 105
    .local v3, videoHeight:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getScreenWidth()I

    move-result v2

    .line 106
    .local v2, screenWidth:I
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getScreenHeight()I

    move-result v1

    .line 111
    .local v1, screenHeight:I
    if-nez v0, :cond_0

    .line 112
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-interface {v5, v6, v6, v8}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->adjustVideoPlayViewSize(IIZ)V

    .line 116
    :cond_0
    if-ne v0, v8, :cond_1

    .line 117
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-interface {v5, v2, v1, v7}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->adjustVideoPlayViewSize(IIZ)V

    .line 121
    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 122
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-interface {v5, v2, v3, v7}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->adjustVideoPlayViewSize(IIZ)V

    .line 125
    :cond_2
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    .line 126
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    invoke-interface {v5, v4, v1, v7}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->adjustVideoPlayViewSize(IIZ)V

    .line 129
    :cond_3
    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    .line 130
    mul-int/lit8 v5, v2, 0x9

    mul-int/lit8 v6, v1, 0x10

    if-lt v5, v6, :cond_6

    .line 131
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    mul-int/lit8 v6, v1, 0x10

    div-int/lit8 v6, v6, 0x9

    invoke-interface {v5, v6, v1, v7}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->adjustVideoPlayViewSize(IIZ)V

    .line 137
    :cond_4
    :goto_0
    const/4 v5, 0x5

    if-ne v0, v5, :cond_5

    .line 138
    mul-int/lit8 v5, v2, 0x3

    mul-int/lit8 v6, v1, 0x4

    if-lt v5, v6, :cond_7

    .line 139
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    mul-int/lit8 v6, v1, 0x4

    div-int/lit8 v6, v6, 0x3

    invoke-interface {v5, v6, v1, v7}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->adjustVideoPlayViewSize(IIZ)V

    .line 145
    :cond_5
    :goto_1
    return-void

    .line 133
    :cond_6
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    mul-int/lit8 v6, v2, 0x9

    div-int/lit8 v6, v6, 0x10

    invoke-interface {v5, v2, v6, v7}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->adjustVideoPlayViewSize(IIZ)V

    goto :goto_0

    .line 141
    :cond_7
    iget-object v5, p0, Lcom/miui/videoplayer/framework/popup/OptionSubMenuPopupWindow;->mVideoView:Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;

    mul-int/lit8 v6, v2, 0x3

    div-int/lit8 v6, v6, 0x4

    invoke-interface {v5, v2, v6, v7}, Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;->adjustVideoPlayViewSize(IIZ)V

    goto :goto_1
.end method
