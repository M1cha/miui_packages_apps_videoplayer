.class public Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;
.super Lcom/miui/videoplayer/framework/views/OriginMediaController;
.source "OriginMediaControllerV5.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAirkanButton:Landroid/widget/ImageView;

.field private mBufferFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

.field private mBufferingImageView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mPauseImageView:Landroid/widget/ImageView;

.field private mReceiveEventV5PopupWindow:Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "useFastForward"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;-><init>(Landroid/content/Context;Z)V

    .line 46
    iput-object p1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public bufferUpdating(I)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 121
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->setBufferedPercent(I)V

    goto :goto_0
.end method

.method public bufferingEnd()V
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->TAG:Ljava/lang/String;

    const-string v1, "Buffering end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mPauseImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferingImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->dismiss()V

    .line 139
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->show(I)V

    .line 140
    return-void
.end method

.method public bufferingStart()V
    .locals 5

    .prologue
    .line 100
    sget-object v3, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->TAG:Ljava/lang/String;

    const-string v4, "Buffering start"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mPauseImageView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferingImageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f04

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 104
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferingImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

    if-nez v3, :cond_0

    .line 106
    new-instance v3, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

    iget-object v4, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

    .line 110
    :cond_0
    const-string v1, ""

    .line 111
    .local v1, mediaTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;

    if-eqz v3, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    move-result-object v2

    check-cast v2, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;

    .line 113
    .local v2, topStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;
    invoke-virtual {v2}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->getMediaNameTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .end local v2           #topStatusBarPopupWindow:Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;
    :cond_1
    iget-object v3, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getDuoKanMediaController()Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/miui/videoplayer/framework/popup/BufferFullScreenPopupWindow;->show(Landroid/view/View;Ljava/lang/String;)V

    .line 117
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->show(I)V

    .line 118
    return-void
.end method

.method public changeToAirkanSize()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mAirkanButton:Landroid/widget/ImageView;

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    return-void
.end method

.method public changeToLocalPlaySize()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mAirkanButton:Landroid/widget/ImageView;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    return-void
.end method

.method protected getBigPauseImageResId()I
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f020062

    return v0
.end method

.method protected getBigPlayImageResId()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f020065

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f03000f

    return v0
.end method

.method protected getPauseImageResId()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f020062

    return v0
.end method

.method protected getPlayImageResId()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f020065

    return v0
.end method

.method public getReceiveEventV5PopupWindow()Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mReceiveEventV5PopupWindow:Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getDuoKanMediaController()Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;-><init>(Landroid/content/Context;Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mReceiveEventV5PopupWindow:Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mReceiveEventV5PopupWindow:Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->hide()V

    .line 185
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getReceiveEventV5PopupWindow()Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getReceiveEventV5PopupWindow()Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->dismiss()V

    .line 188
    :cond_0
    return-void
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->makeControllerView()Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, result:Landroid/view/View;
    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mBufferingImageView:Landroid/widget/ImageView;

    .line 75
    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mPauseImageView:Landroid/widget/ImageView;

    .line 76
    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->mAirkanButton:Landroid/widget/ImageView;

    .line 77
    return-object v0
.end method

.method public onScreenOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->onScreenOrientationChanged(I)V

    .line 200
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getReceiveEventV5PopupWindow()Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getReceiveEventV5PopupWindow()Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->dismiss()V

    .line 202
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getReceiveEventV5PopupWindow()Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getDuoKanMediaController()Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->show(Landroid/view/View;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getTopStatusBarPopupWindow()Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindow;

    move-result-object v0

    check-cast v0, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/TopStatusBarPopupWindowV5;->updateLayout()V

    .line 207
    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->show(I)V

    .line 177
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getReceiveEventV5PopupWindow()Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getReceiveEventV5PopupWindow()Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/views/OriginMediaControllerV5;->getDuoKanMediaController()Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/popup/ReceiveEventV5PopupWindow;->show(Landroid/view/View;)V

    .line 180
    :cond_0
    return-void
.end method
