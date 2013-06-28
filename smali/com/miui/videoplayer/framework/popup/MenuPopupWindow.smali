.class public abstract Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;
.source "MenuPopupWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

.field private mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

.field private mIsPopShowing:Z

.field private mLocalMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

.field private mMenuDismissed:Z

.field private mOptionMenuListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001b

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;-><init>(Landroid/view/View;)V

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mIsPopShowing:Z

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mMenuDismissed:Z

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setContentView(Landroid/view/View;)V

    .line 37
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 40
    .local v0, width:I
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setWidth(I)V

    .line 41
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setHeight(I)V

    .line 43
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setupWindow()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;)Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mIsPopShowing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mIsPopShowing:Z

    return p1
.end method

.method private setupWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setTouchable(Z)V

    .line 49
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setAnimationStyle(I)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, contentView:Landroid/view/View;
    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mOptionMenuListView:Landroid/widget/ListView;

    .line 54
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mOptionMenuListView:Landroid/widget/ListView;

    new-instance v2, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow$1;

    invoke-direct {v2, p0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow$1;-><init>(Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 71
    return-void
.end method

.method private updateWidthHeight(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    const/4 v2, -0x1

    .line 127
    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->getMenuWidthForLandScreen()I

    move-result v1

    .line 133
    .local v1, width:I
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setWidth(I)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setHeight(I)V

    .line 140
    .end local v1           #width:I
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->getMenuHeightForPortScreen()I

    move-result v0

    .line 137
    .local v0, height:I
    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setWidth(I)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setHeight(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mIsPopShowing:Z

    .line 76
    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mMenuDismissed:Z

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mLocalMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mLocalMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mLocalMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->start()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->dismiss()V

    .line 86
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->dismiss()V

    .line 87
    return-void

    .line 84
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mMenuDismissed:Z

    goto :goto_0
.end method

.method public dismiss(Z)V
    .locals 1
    .parameter "remove"

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mIsPopShowing:Z

    .line 92
    invoke-super {p0, p1}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->dismiss(Z)V

    .line 93
    return-void
.end method

.method protected abstract getBackgroundResId(I)I
.end method

.method protected getFullScreenPopupWindow()Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    return-object v0
.end method

.method protected getLocalMediaPlayerControl()Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mLocalMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    return-object v0
.end method

.method protected abstract getMenuHeightForPortScreen()I
.end method

.method protected abstract getMenuWidthForLandScreen()I
.end method

.method protected getOptionMenuListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mOptionMenuListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public setDuoKanMediaController(Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V
    .locals 0
    .parameter "duoKanMediaController"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    .line 147
    return-void
.end method

.method public setFullScreenPopupWindow(Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;)V
    .locals 0
    .parameter "fullScreenPopupWindow"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    .line 159
    return-void
.end method

.method public setLocalMediaPlayerControl(Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;)V
    .locals 0
    .parameter "localMediaPlayerControl"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mLocalMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    .line 167
    return-void
.end method

.method public setMenuDismissed(Z)V
    .locals 0
    .parameter "menuDismissed"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mMenuDismissed:Z

    .line 97
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 4
    .parameter "anchor"

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mLocalMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mLocalMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mLocalMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;->pause()V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    if-nez v1, :cond_1

    .line 105
    new-instance v1, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    .line 106
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    const/16 v2, 0xb2

    invoke-virtual {v1, v2}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->setBackgroundAlpha(I)V

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    invoke-virtual {v1, p1}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->show(Landroid/view/View;)V

    .line 110
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/utils/DisplayInformationFetcher;->getScreenOrientation()I

    move-result v0

    .line 112
    .local v0, orientation:I
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->getBackgroundResId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    invoke-direct {p0, v0}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->updateWidthHeight(I)V

    .line 115
    if-nez v0, :cond_2

    .line 116
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setAnimationStyle(I)V

    .line 117
    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1, v3, v3}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_2
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->setAnimationStyle(I)V

    .line 120
    const/16 v1, 0x50

    invoke-virtual {p0, p1, v1, v3, v3}, Lcom/miui/videoplayer/framework/popup/MenuPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
