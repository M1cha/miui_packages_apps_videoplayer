.class public Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;
.source "ControlListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ViewHolder;,
        Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mControlListAdapter:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

.field private mPlayingIndex:I

.field private mUris:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/miui/videoplayer/framework/views/OriginMediaController;)V
    .locals 3
    .parameter "context"
    .parameter "uris"
    .parameter "mediaController"

    .prologue
    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 38
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mUris:[Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    .line 42
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setupViews()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mPlayingIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)Lcom/miui/videoplayer/framework/views/OriginMediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private computeSelectionIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 187
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mUris:[Ljava/lang/String;

    array-length v0, v1

    .line 188
    .local v0, length:I
    if-le v0, v2, :cond_0

    iget v1, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mPlayingIndex:I

    if-le v1, v2, :cond_0

    .line 189
    iget v1, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mPlayingIndex:I

    add-int/lit8 v1, v1, -0x3

    .line 191
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 46
    invoke-virtual {p0, v5}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0, v5}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setTouchable(Z)V

    .line 48
    invoke-virtual {p0, v5}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setOutsideTouchable(Z)V

    .line 50
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 51
    .local v0, backgroudColorDrawable:Landroid/graphics/drawable/ColorDrawable;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, rootView:Landroid/view/View;
    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mListView:Landroid/widget/ListView;

    .line 56
    new-instance v2, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mUris:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;-><init>(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mControlListAdapter:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;

    .line 57
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mControlListAdapter:Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$ControlListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 59
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$1;

    invoke-direct {v3, p0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$1;-><init>(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$2;

    invoke-direct {v3, p0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow$2;-><init>(Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method public setPlayingIndex(I)V
    .locals 0
    .parameter "playingIndex"

    .prologue
    .line 84
    iput p1, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mPlayingIndex:I

    .line 85
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 8
    .parameter "anchor"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 168
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getScreenOrientation()I

    move-result v1

    .line 170
    .local v1, orientation:I
    if-nez v1, :cond_0

    .line 171
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 172
    .local v3, width:I
    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setWidth(I)V

    .line 173
    invoke-virtual {p0, v7}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setHeight(I)V

    .line 174
    const/4 v4, 0x3

    invoke-virtual {p0, p1, v4, v6, v6}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 182
    .end local v3           #width:I
    :goto_0
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->computeSelectionIndex()I

    move-result v2

    .line 183
    .local v2, selectionIndex:I
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 184
    return-void

    .line 176
    .end local v2           #selectionIndex:I
    :cond_0
    iget-object v4, p0, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 177
    .local v0, height:I
    invoke-virtual {p0, v7}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setWidth(I)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->setHeight(I)V

    .line 179
    const/16 v4, 0x50

    invoke-virtual {p0, p1, v4, v6, v6}, Lcom/miui/videoplayer/framework/popup/ControlListPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
