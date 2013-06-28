.class public Lcom/miui/videoplayer/views/DuoKanCodecVideoView;
.super Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;
.source "DuoKanCodecVideoView.java"

# interfaces
.implements Lcom/miui/videoplayer/views/ITempVideoView;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/videoplayer/views/DuoKanCodecOriginVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-object p1, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private attachDuoKanMediaController()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 79
    new-instance v2, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    iget-object v3, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    .line 80
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 81
    .local v1, vp:Landroid/view/ViewGroup;
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 82
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method


# virtual methods
.method public checkNetwork(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->checkNetwork(Landroid/net/Uri;)V

    .line 139
    return-void
.end method

.method public getPlayingUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->getPlayingUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreate()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onActivityCreate()V

    .line 117
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->bindAirkanService()V

    .line 118
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onActivityDestroy()V

    .line 123
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->unbindAirkanService()V

    .line 124
    return-void
.end method

.method public onActivityStart()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onActivityStart()V

    .line 95
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onActivityStop()V

    .line 99
    return-void
.end method

.method public onNewIntent()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->onNewIntent()V

    .line 134
    return-void
.end method

.method public setDirectAirkanUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setDirectAirkanUri(Landroid/net/Uri;)V

    .line 107
    return-void
.end method

.method public setInput(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .parameter "uri"
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 60
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 61
    .local v0, uris:[Ljava/lang/String;
    invoke-virtual {p0, v0, v2, p2}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->setInput([Ljava/lang/String;ILandroid/app/Activity;)V

    .line 62
    return-void
.end method

.method public setInput(Ljava/lang/String;Landroid/app/Activity;Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;)V
    .locals 3
    .parameter "uri"
    .parameter "activity"
    .parameter "airkanExistDeviceInfo"

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 66
    .local v0, uris:[Ljava/lang/String;
    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->setInput([Ljava/lang/String;ILandroid/app/Activity;Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;)V

    .line 67
    return-void
.end method

.method public setInput([Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 1
    .parameter "uris"
    .parameter "playIndex"
    .parameter "activity"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->attachDuoKanMediaController()V

    .line 72
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setInput([Ljava/lang/String;ILandroid/app/Activity;)V

    .line 73
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setLocalMediaPlayerControl(Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;)V

    .line 74
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setVideoSizeAdjustable(Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;)V

    .line 75
    return-void
.end method

.method public setInput([Ljava/lang/String;ILandroid/app/Activity;Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;)V
    .locals 1
    .parameter "uris"
    .parameter "playIndex"
    .parameter "activity"
    .parameter "airkanExistDeviceInfo"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->attachDuoKanMediaController()V

    .line 87
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p4}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setAirkanExistDeviceInfo(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;)V

    .line 88
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setInput([Ljava/lang/String;ILandroid/app/Activity;)V

    .line 89
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setLocalMediaPlayerControl(Lcom/miui/videoplayer/framework/ui/LocalMediaPlayerControl;)V

    .line 90
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p0}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setVideoSizeAdjustable(Lcom/miui/videoplayer/framework/ui/LocalVideoPlaySizeAdjustable;)V

    .line 91
    return-void
.end method

.method public setTitleMap(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;>;"
    iget-object v0, p0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->mDuoKanMediaController:Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/framework/ui/DuoKanMediaController;->setTitleMap(Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public startLocalPlayForAirkan(Landroid/net/Uri;)V
    .locals 0
    .parameter "videoUri"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->startLocalPlayForMediaSwitch(Landroid/net/Uri;)V

    .line 44
    return-void
.end method

.method public startLocalPlayForMediaSwitch(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->setVisibility(I)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 56
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->start()V

    .line 57
    return-void
.end method

.method public stopLocalPlayForAirkan()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->stopLocalPlayForMediaSwitch()V

    .line 39
    return-void
.end method

.method public stopLocalPlayForMediaSwitch()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->setVisibility(I)V

    .line 50
    return-void
.end method
