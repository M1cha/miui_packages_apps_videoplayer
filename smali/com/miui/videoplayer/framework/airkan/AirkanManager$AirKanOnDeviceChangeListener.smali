.class Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;
.super Ljava/lang/Object;
.source "AirkanManager.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/airkan/AirkanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AirKanOnDeviceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onDeviceCountChanged()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$1;

    invoke-direct {v1, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$1;-><init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    return-void
.end method


# virtual methods
.method public onBTDeviceAutoConnected(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 173
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bt device auto connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$600(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    .line 175
    .local v1, listener:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    invoke-interface {v1, p1}, Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;->onBTDeviceAutoConnected(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    goto :goto_0

    .line 177
    .end local v1           #listener:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    :cond_0
    return-void
.end method

.method public onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 181
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device added "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$600(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    .line 183
    .local v1, listener:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    invoke-interface {v1, p1}, Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;->onDeviceAdded(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    goto :goto_0

    .line 185
    .end local v1           #listener:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    :cond_0
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->onDeviceCountChanged()V

    .line 186
    return-void
.end method

.method public onDeviceRemoved(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 207
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device removed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$600(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    .line 209
    .local v1, listener:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    invoke-interface {v1, p1}, Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;->onDeviceRemoved(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V

    goto :goto_0

    .line 211
    .end local v1           #listener:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    :cond_0
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->onDeviceCountChanged()V

    .line 212
    return-void
.end method

.method public onOpened()V
    .locals 4

    .prologue
    .line 216
    invoke-static {}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device opened"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$600(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;

    .line 218
    .local v1, listener:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    invoke-interface {v1}, Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;->onOpened()V

    goto :goto_0

    .line 220
    .end local v1           #listener:Lcom/duokan/airkan/phone/api/DeviceManager$OnDeviceChangeListener;
    :cond_0
    invoke-direct {p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->onDeviceCountChanged()V

    .line 221
    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkan:Z
    invoke-static {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$800(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;->this$0:Lcom/miui/videoplayer/framework/airkan/AirkanManager;

    #getter for: Lcom/miui/videoplayer/framework/airkan/AirkanManager;->mDirectAirkanUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/miui/videoplayer/framework/airkan/AirkanManager;->access$300(Lcom/miui/videoplayer/framework/airkan/AirkanManager;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 222
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$2;

    invoke-direct {v3, p0}, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener$2;-><init>(Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirKanOnDeviceChangeListener;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 236
    :cond_1
    return-void
.end method
