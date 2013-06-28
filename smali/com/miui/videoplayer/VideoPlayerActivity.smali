.class public Lcom/miui/videoplayer/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;,
        Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialogShowing:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntent:Landroid/content/Intent;

.field private mPhoneStateBroadcastReceiver:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

.field private mRinging:Z

.field private mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

.field private mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/miui/videoplayer/VideoPlayerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    iput-boolean v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mAlertDialogShowing:Z

    .line 325
    iput-boolean v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mRinging:Z

    .line 326
    return-void
.end method

.method static synthetic access$102(Lcom/miui/videoplayer/VideoPlayerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mAlertDialogShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/views/ITempVideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/videoplayer/VideoPlayerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mRinging:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/videoplayer/VideoPlayerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mRinging:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/videoplayer/VideoPlayerActivity;)Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    return-object v0
.end method

.method private chooseCodecVideoView()V
    .locals 6

    .prologue
    const v5, 0x7f090008

    const v4, 0x7f090007

    const/16 v3, 0x8

    .line 182
    sget-boolean v2, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_DUOKAN_CODEC_PHONE:Z

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p0, v5}, Lcom/miui/videoplayer/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/videoplayer/views/ITempVideoView;

    iput-object v2, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    .line 184
    invoke-virtual {p0, v4}, Lcom/miui/videoplayer/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/videoplayer/views/DuokanVideoView;

    .line 185
    .local v1, duokanVideoView:Lcom/miui/videoplayer/views/DuokanVideoView;
    invoke-virtual {v1, v3}, Lcom/miui/videoplayer/views/DuokanVideoView;->setVisibility(I)V

    .line 191
    .end local v1           #duokanVideoView:Lcom/miui/videoplayer/views/DuokanVideoView;
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, v4}, Lcom/miui/videoplayer/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/videoplayer/views/ITempVideoView;

    iput-object v2, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    .line 188
    invoke-virtual {p0, v5}, Lcom/miui/videoplayer/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;

    .line 189
    .local v0, duokanCodecVideoView:Lcom/miui/videoplayer/views/DuoKanCodecVideoView;
    invoke-virtual {v0, v3}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "contentUri"

    .prologue
    const/4 v3, 0x0

    .line 194
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 195
    .local v2, columns:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 203
    :goto_0
    return-object v3

    .line 199
    :cond_0
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 200
    .local v7, index:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 201
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, result:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 203
    goto :goto_0
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/miui/videoplayer/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    iput-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mIntent:Landroid/content/Intent;

    .line 66
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 67
    .local v7, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 68
    .local v9, uris:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 69
    .local v6, playIndex:I
    if-eqz v7, :cond_0

    .line 70
    const/4 v11, 0x1

    new-array v9, v11, [Ljava/lang/String;

    .end local v9           #uris:[Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v13

    .line 73
    .restart local v9       #uris:[Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v12, "uri_list"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, uriList:[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 75
    move-object v9, v8

    .line 76
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v12, "play_index"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 78
    :cond_1
    invoke-direct {p0, v9}, Lcom/miui/videoplayer/VideoPlayerActivity;->workaroundForNoPermissionContentVideo([Ljava/lang/String;)V

    .line 79
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v12, "direct_airkan"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 80
    .local v1, directAirkan:Z
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v12, "device_name"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, existDeviceName:Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 82
    new-instance v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;

    const/4 v11, 0x0

    invoke-direct {v0, v3, v11}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;-><init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;)V

    .line 83
    .local v0, airkanExistDeviceInfo:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    aget-object v12, v9, v6

    invoke-interface {v11, v12, p0, v0}, Lcom/miui/videoplayer/views/ITempVideoView;->setInput(Ljava/lang/String;Landroid/app/Activity;Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;)V

    .line 84
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    aget-object v12, v9, v6

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/miui/videoplayer/views/ITempVideoView;->setDirectAirkanUri(Landroid/net/Uri;)V

    .line 96
    .end local v0           #airkanExistDeviceInfo:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanExistDeviceInfo;
    :goto_0
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mIntent:Landroid/content/Intent;

    const-string v12, "mediaTitle"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, mediaTitle:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 98
    new-instance v2, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    aget-object v11, v9, v6

    invoke-direct {v2, v11}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    invoke-virtual {v2, v4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setVideoName(Ljava/lang/String;)V

    .line 100
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v5, metaDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;>;"
    aget-object v11, v9, v6

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v11, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "put url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v9, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v11, v5}, Lcom/miui/videoplayer/views/ITempVideoView;->setTitleMap(Ljava/util/Map;)V

    .line 105
    .end local v2           #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .end local v5           #metaDataMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;>;"
    :cond_2
    return-void

    .line 86
    .end local v4           #mediaTitle:Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v11, v9, v6, p0}, Lcom/miui/videoplayer/views/ITempVideoView;->setInput([Ljava/lang/String;ILandroid/app/Activity;)V

    .line 87
    aget-object v11, v9, v6

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 88
    .local v10, videoUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->isOnlineVideo(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {p0}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->isNetworkConncected(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {p0}, Lcom/miui/videoplayer/framework/utils/AndroidUtils;->isFreeNetworkConnected(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 89
    invoke-direct {p0, v10}, Lcom/miui/videoplayer/VideoPlayerActivity;->popupNoWifiAlertDialog(Landroid/net/Uri;)V

    goto :goto_0

    .line 91
    :cond_4
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v11, v10}, Lcom/miui/videoplayer/views/ITempVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 92
    iget-object v11, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v11}, Lcom/miui/videoplayer/views/ITempVideoView;->start()V

    goto :goto_0
.end method

.method private popupNoWifiAlertDialog(Landroid/net/Uri;)V
    .locals 5
    .parameter "videoUri"

    .prologue
    .line 109
    new-instance v1, Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;

    const v3, 0x60d003e

    invoke-direct {v1, p0, v3}, Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 110
    .local v1, dialog:Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;->setCancelable(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/miui/videoplayer/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, continueString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/videoplayer/VideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, exitString:Ljava/lang/String;
    const/4 v3, -0x1

    new-instance v4, Lcom/miui/videoplayer/VideoPlayerActivity$1;

    invoke-direct {v4, p0, v1}, Lcom/miui/videoplayer/VideoPlayerActivity$1;-><init>(Lcom/miui/videoplayer/VideoPlayerActivity;Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;)V

    invoke-virtual {v1, v3, v2, v4}, Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    const/4 v3, -0x2

    new-instance v4, Lcom/miui/videoplayer/VideoPlayerActivity$2;

    invoke-direct {v4, p0, v1, p1}, Lcom/miui/videoplayer/VideoPlayerActivity$2;-><init>(Lcom/miui/videoplayer/VideoPlayerActivity;Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;Landroid/net/Uri;)V

    invoke-virtual {v1, v3, v0, v4}, Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 137
    invoke-virtual {v1}, Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;->show()V

    .line 138
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mAlertDialogShowing:Z

    .line 139
    return-void
.end method

.method private setupViews()V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;-><init>(Lcom/miui/videoplayer/VideoPlayerActivity$1;)V

    iput-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    .line 208
    invoke-direct {p0}, Lcom/miui/videoplayer/VideoPlayerActivity;->chooseCodecVideoView()V

    .line 209
    return-void
.end method

.method private workaroundForNoPermissionContentVideo([Ljava/lang/String;)V
    .locals 12
    .parameter "uris"

    .prologue
    const/4 v11, 0x0

    .line 142
    sget-boolean v8, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    sget-boolean v9, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_DUOKAN_CODEC_PHONE:Z

    if-eq v8, v9, :cond_0

    .line 143
    sget-boolean v8, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->IS_DUOKAN_CODEC_PHONE:Z

    sput-boolean v8, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    .line 144
    sget-object v8, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v9, "used origin codec, now back to duokan codec"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/miui/videoplayer/VideoPlayerActivity;->chooseCodecVideoView()V

    .line 146
    iget-object v8, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_0
    sget-boolean v8, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    if-nez v8, :cond_2

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    if-eqz p1, :cond_1

    array-length v8, p1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 154
    aget-object v7, p1, v11

    .line 155
    .local v7, uriString:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 156
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 159
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, scheme:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v8, "content"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    invoke-direct {p0, p0, v6}, Lcom/miui/videoplayer/VideoPlayerActivity;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, realPath:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 167
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    .line 169
    .local v0, canRead:Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    .line 171
    .local v2, exist:Z
    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    .line 172
    :cond_3
    sget-object v8, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "does not exist or can not read uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const v8, 0x7f090007

    invoke-virtual {p0, v8}, Lcom/miui/videoplayer/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/miui/videoplayer/views/ITempVideoView;

    iput-object v8, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    .line 174
    iget-object v8, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 175
    const v8, 0x7f090008

    invoke-virtual {p0, v8}, Lcom/miui/videoplayer/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;

    .line 176
    .local v1, duokanCodecVideoView:Lcom/miui/videoplayer/views/DuoKanCodecVideoView;
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Lcom/miui/videoplayer/views/DuoKanCodecVideoView;->setVisibility(I)V

    .line 177
    sput-boolean v11, Lcom/miui/videoplayer/framework/DuoKanCodecConstants;->sUseDuokanCodec:Z

    goto :goto_0
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .parameter "focusChange"

    .prologue
    .line 308
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget-object v0, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/miui/videoplayer/VideoPlayerActivity;->setupViews()V

    .line 57
    invoke-direct {p0}, Lcom/miui/videoplayer/VideoPlayerActivity;->init()V

    .line 58
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v0}, Lcom/miui/videoplayer/views/ITempVideoView;->onActivityCreate()V

    .line 60
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    new-instance v0, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;-><init>(Lcom/miui/videoplayer/VideoPlayerActivity;Lcom/miui/videoplayer/VideoPlayerActivity$1;)V

    iput-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mPhoneStateBroadcastReceiver:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 291
    sget-object v0, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v0}, Lcom/miui/videoplayer/views/ITempVideoView;->onActivityDestroy()V

    .line 293
    sget-object v0, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "Super onDestroy start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 295
    sget-object v0, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "Super onDestroy end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 213
    sget-object v1, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v2, "onNewIntent: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 215
    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->isActivityFinish:Z

    .line 216
    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v1}, Lcom/miui/videoplayer/views/ITempVideoView;->onNewIntent()V

    .line 217
    invoke-virtual {p0, p1}, Lcom/miui/videoplayer/VideoPlayerActivity;->setIntent(Landroid/content/Intent;)V

    .line 218
    invoke-direct {p0}, Lcom/miui/videoplayer/VideoPlayerActivity;->init()V

    .line 219
    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v1}, Lcom/miui/videoplayer/views/ITempVideoView;->onActivityCreate()V

    .line 220
    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v1}, Lcom/miui/videoplayer/views/ITempVideoView;->getPlayingUri()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, uri:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/videoplayer/views/ITempVideoView;->checkNetwork(Landroid/net/Uri;)V

    .line 224
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v1}, Lcom/miui/videoplayer/views/ITempVideoView;->getPlayingUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->url:Ljava/lang/String;

    .line 267
    iget-boolean v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mRinging:Z

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v1}, Lcom/miui/videoplayer/views/ITempVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->position:I

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    iget-object v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v1}, Lcom/miui/videoplayer/views/ITempVideoView;->isPaused()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->paused:Z

    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 272
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 261
    return-void
.end method

.method protected onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 228
    sget-object v4, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    const-string v5, "onStart"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 230
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, p0, v5, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 231
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    iget-boolean v4, v4, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->isActivityFinish:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mRinging:Z

    if-nez v4, :cond_3

    .line 232
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v4}, Lcom/miui/videoplayer/views/ITempVideoView;->getAdjustWidth()I

    move-result v3

    .line 233
    .local v3, videoViewWidth:I
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v4}, Lcom/miui/videoplayer/views/ITempVideoView;->getAdjustHeight()I

    move-result v2

    .line 234
    .local v2, videoViewHeight:I
    if-eqz v3, :cond_0

    if-ne v3, v6, :cond_4

    :cond_0
    if-eqz v2, :cond_1

    if-ne v2, v6, :cond_4

    .line 235
    :cond_1
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v4, v6, v6, v8}, Lcom/miui/videoplayer/views/ITempVideoView;->adjustVideoPlayViewSize(IIZ)V

    .line 240
    :goto_0
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    iget-object v4, v4, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 242
    .local v1, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v4, v1}, Lcom/miui/videoplayer/views/ITempVideoView;->checkNetwork(Landroid/net/Uri;)V

    .line 243
    iget-boolean v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mAlertDialogShowing:Z

    if-nez v4, :cond_2

    .line 244
    sget-object v4, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStart ,setVideoURI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    iget-object v6, v6, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seekto "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    iget v6, v6, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->position:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v4, v1}, Lcom/miui/videoplayer/views/ITempVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 246
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    iget-object v5, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    iget v5, v5, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->position:I

    invoke-interface {v4, v5}, Lcom/miui/videoplayer/views/ITempVideoView;->seekTo(I)V

    .line 247
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v4}, Lcom/miui/videoplayer/views/ITempVideoView;->start()V

    .line 249
    :cond_2
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    iput-boolean v7, v4, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->isActivityFinish:Z

    .line 251
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #videoViewHeight:I
    .end local v3           #videoViewWidth:I
    :cond_3
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v4}, Lcom/miui/videoplayer/views/ITempVideoView;->onActivityStart()V

    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mPhoneStateBroadcastReceiver:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    return-void

    .line 237
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    .restart local v2       #videoViewHeight:I
    .restart local v3       #videoViewWidth:I
    :cond_4
    iget-object v4, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v4, v3, v2, v7}, Lcom/miui/videoplayer/views/ITempVideoView;->adjustVideoPlayViewSize(IIZ)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 276
    sget-object v0, Lcom/miui/videoplayer/VideoPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoPlayState:Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;

    invoke-virtual {p0}, Lcom/miui/videoplayer/VideoPlayerActivity;->isFinishing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->isActivityFinish:Z

    .line 278
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 279
    invoke-virtual {p0}, Lcom/miui/videoplayer/VideoPlayerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v0}, Lcom/miui/videoplayer/views/ITempVideoView;->pause()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mVideoView:Lcom/miui/videoplayer/views/ITempVideoView;

    invoke-interface {v0}, Lcom/miui/videoplayer/views/ITempVideoView;->onActivityStop()V

    .line 283
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mPhoneStateBroadcastReceiver:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity;->mPhoneStateBroadcastReceiver:Lcom/miui/videoplayer/VideoPlayerActivity$PhoneStateBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/VideoPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 287
    return-void
.end method
