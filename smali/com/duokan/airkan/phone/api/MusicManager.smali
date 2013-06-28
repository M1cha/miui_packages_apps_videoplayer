.class public Lcom/duokan/airkan/phone/api/MusicManager;
.super Lcom/duokan/airkan/phone/api/VideoManager;
.source "MusicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/api/MusicManager$OnMusicEventListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MusicManager"


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field mCachedUrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/api/MusicManager$OnMusicEventListener;)V
    .locals 1
    .parameter "appName"
    .parameter "deviceManager"
    .parameter "listener"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/duokan/airkan/phone/api/VideoManager;-><init>(Ljava/lang/String;Lcom/duokan/airkan/phone/api/DeviceManager;Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;)V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mCachedUrlMap:Ljava/util/Map;

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duokan/airkan/phone/api/MusicManager;->setMusic(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method protected generateMetadata()Ljava/lang/String;
    .locals 7

    .prologue
    .line 64
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 65
    .local v2, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mArtist:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mAlbum:Ljava/lang/String;

    if-nez v4, :cond_0

    move-object v3, v2

    .line 79
    .end local v2           #str:Ljava/lang/String;
    .local v3, str:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 69
    .end local v3           #str:Ljava/lang/Object;
    .restart local v2       #str:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 71
    const-string v4, "artist"

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mArtist:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1
    iget-object v4, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mAlbum:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 74
    const-string v4, "album"

    iget-object v5, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mAlbum:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 77
    .local v0, jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v4, "MusicManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateMetadata="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 79
    .restart local v3       #str:Ljava/lang/Object;
    goto :goto_0
.end method

.method requestLastMediaItem()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "MusicManager"

    const-string v1, "requestLastMediaItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    instance-of v0, v0, Lcom/duokan/airkan/phone/api/MusicManager$OnMusicEventListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    check-cast v0, Lcom/duokan/airkan/phone/api/MusicManager$OnMusicEventListener;

    invoke-interface {v0}, Lcom/duokan/airkan/phone/api/MusicManager$OnMusicEventListener;->onRequestLastMusic()V

    .line 152
    :cond_0
    return-void
.end method

.method requestNextMediaItem()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "MusicManager"

    const-string v1, "requestNextMediaItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    instance-of v0, v0, Lcom/duokan/airkan/phone/api/MusicManager$OnMusicEventListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/VideoManager;->mOnVideoEventListener:Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;

    check-cast v0, Lcom/duokan/airkan/phone/api/MusicManager$OnMusicEventListener;

    invoke-interface {v0}, Lcom/duokan/airkan/phone/api/MusicManager$OnMusicEventListener;->onRequestNextMusic()V

    .line 144
    :cond_0
    return-void
.end method

.method public setMusicURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "title"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/duokan/airkan/phone/api/MusicManager;->parseUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, url:Ljava/lang/String;
    const-string v1, "MusicManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMusicURI 2 title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0, v0, p3, p4}, Lcom/duokan/airkan/phone/api/MusicManager;->setMusicURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public setMusicURI(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "title"
    .parameter "position"
    .parameter "artist"
    .parameter "album"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/duokan/airkan/phone/api/MusicManager;->parseUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, url:Ljava/lang/String;
    const-string v0, "MusicManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMusicURI 2 title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", artist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", album="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/duokan/airkan/phone/api/MusicManager;->setMusicURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setMusicURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "url"
    .parameter "title"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 57
    const-string v0, "MusicManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMusicURI title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object v3, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mArtist:Ljava/lang/String;

    .line 59
    iput-object v3, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mAlbum:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/duokan/airkan/phone/api/MusicManager;->setVideoURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public setMusicURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "title"
    .parameter "position"
    .parameter "artist"
    .parameter "album"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/duokan/airkan/common/AirkanException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "MusicManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMusicURI title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", artist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", album="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object p4, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mArtist:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/duokan/airkan/phone/api/MusicManager;->mAlbum:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/duokan/airkan/phone/api/MusicManager;->setVideoURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method
