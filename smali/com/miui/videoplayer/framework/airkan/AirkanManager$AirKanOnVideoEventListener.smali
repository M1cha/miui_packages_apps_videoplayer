.class Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;
.super Ljava/lang/Object;
.source "AirkanManager.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/VideoManager$OnVideoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/airkan/AirkanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirKanOnVideoEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;


# direct methods
.method private constructor <init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager;Lcom/miui/videoplayer/framework/airkan/AirkanManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;-><init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V

    return-void
.end method

.method private remotePlayStoped()V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;-><init>(I)V

    .line 267
    .local v0, event:Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;
    iget-object v1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v1, v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->onAirkanChanged(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;)V

    .line 268
    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->remotePlayStoped()V

    .line 245
    return-void
.end method

.method public onDurationUpdated(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 255
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDurationUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 260
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->stopRemotePlay()V

    .line 262
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->remotePlayStoped()V

    .line 263
    return-void
.end method

.method public onPaused()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePlayingState(Z)V

    .line 284
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setUpdateProgressEnable(Z)V

    .line 285
    return-void
.end method

.method public onPlayToSuccess()V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayToSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setUpdateProgressEnable(Z)V

    .line 291
    return-void
.end method

.method public onReleased()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReleased"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->remotePlayStoped()V

    .line 251
    return-void
.end method

.method public onResolutionChanged(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 272
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResolutionChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public onStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 295
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->updatePlayingState(Z)V

    .line 297
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setUpdateProgressEnable(Z)V

    .line 298
    return-void
.end method

.method public onStopped()V
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mMediaController:Lcom/miui/videoplayer/framework/views/OriginMediaController;
    invoke-static {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$500(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Lcom/miui/videoplayer/framework/views/OriginMediaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/videoplayer/framework/views/OriginMediaController;->setUpdateProgressEnable(Z)V

    .line 304
    iget-object v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->stopRemotePlay()V

    .line 305
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnVideoEventListener;->remotePlayStoped()V

    .line 306
    return-void
.end method

.method public onVolumeUpdated(F)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 277
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method
