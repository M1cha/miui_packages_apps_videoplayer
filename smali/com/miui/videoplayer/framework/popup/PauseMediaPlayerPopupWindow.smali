.class public Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;
.super Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;
.source "PauseMediaPlayerPopupWindow.java"


# instance fields
.field private mAirkanPaused:Z

.field private mContext:Landroid/content/Context;

.field private mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

.field private mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "contentView"

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;-><init>(Landroid/view/View;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mAirkanPaused:Z

    .line 24
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 1
    .parameter "context"
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 16
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;-><init>(Landroid/view/View;II)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mAirkanPaused:Z

    .line 18
    iput-object p1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    instance-of v0, v0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mAirkanPaused:Z

    if-nez v0, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->start()V

    .line 57
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->updateAirkanPlayingState(Z)V

    .line 58
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->dismiss()V

    .line 61
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mAirkanPaused:Z

    .line 62
    invoke-super {p0}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->dismiss()V

    .line 63
    return-void
.end method

.method public dismiss(Z)V
    .locals 1
    .parameter "remove"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->dismiss()V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/videoplayer/framework/popup/ManagedPopupWindow;->dismiss(Z)V

    .line 71
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 48
    return-void
.end method

.method public show(Landroid/view/View;Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;)V
    .locals 3
    .parameter "anchor"
    .parameter "mediaPlayerControl"

    .prologue
    const/4 v2, 0x0

    .line 28
    iput-object p2, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    .line 29
    iput-boolean v2, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mAirkanPaused:Z

    .line 30
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    instance-of v1, v1, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    if-eqz v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    check-cast v0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    .line 33
    .local v0, remotePlayerControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mAirkanPaused:Z

    .line 35
    .end local v0           #remotePlayerControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;
    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;->pause()V

    .line 36
    invoke-virtual {p0, v2}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->updateAirkanPlayingState(Z)V

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    if-nez v1, :cond_2

    .line 39
    new-instance v1, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    iget-object v2, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    .line 40
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->setBackgroundAlpha(I)V

    .line 42
    :cond_2
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mFullScreenPopupWindow:Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;

    invoke-virtual {v1, p1}, Lcom/miui/videoplayer/framework/popup/FullScreenPopupWindow;->show(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->show(Landroid/view/View;)V

    .line 44
    return-void

    .restart local v0       #remotePlayerControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;
    :cond_3
    move v1, v2

    .line 33
    goto :goto_0
.end method

.method protected updateAirkanPlayingState(Z)V
    .locals 2
    .parameter "playing"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    instance-of v1, v1, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    if-eqz v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/miui/videoplayer/framework/popup/PauseMediaPlayerPopupWindow;->mMediaPlayerControl:Lcom/miui/videoplayer/framework/ui/MediaPlayerControl;

    check-cast v0, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;

    .line 76
    .local v0, remoteMediaPlayerControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;
    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->updatePlayingState(Z)V

    .line 77
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;->showMediaController()V

    .line 79
    .end local v0           #remoteMediaPlayerControl:Lcom/miui/videoplayer/framework/airkan/RemoteTVMediaPlayerControl;
    :cond_0
    return-void
.end method
