.class Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;
.super Ljava/lang/Object;
.source "VideoServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/VideoServiceCallback;->onQueryResult(ILcom/duokan/airkan/common/aidl/video/ParcelQueryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

.field final synthetic val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/VideoServiceCallback;Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    iput-object p2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 120
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 121
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Video Manager is not available - "

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "VSC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v1, " "

    .line 126
    .local v1, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v2, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querylen:B

    if-ne v5, v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playlength:I

    invoke-virtual {v2, v3}, Lcom/duokan/airkan/phone/api/VideoManager;->updateDuration(I)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duartion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playlength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v2, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querypos:B

    if-ne v5, v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->position:I

    invoke-virtual {v2, v3}, Lcom/duokan/airkan/phone/api/VideoManager;->updatePosition(I)V

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v2, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryplaystatus:B

    if-ne v5, v2, :cond_4

    .line 137
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-boolean v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playing:Z

    iget-object v4, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-boolean v4, v4, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->pausing:Z

    invoke-virtual {v2, v3, v4}, Lcom/duokan/airkan/phone/api/VideoManager;->playStatusChange(ZZ)V

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " playing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-boolean v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pausing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-boolean v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->pausing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_4
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v2, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryresolution:B

    if-ne v5, v2, :cond_5

    .line 142
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->resolution:B

    invoke-virtual {v2, v3}, Lcom/duokan/airkan/phone/api/VideoManager;->updateResolution(B)V

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " resolution:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->resolution:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_5
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v2, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryvolume:B

    if-ne v5, v2, :cond_6

    .line 147
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->this$0:Lcom/duokan/airkan/phone/api/VideoServiceCallback;

    #getter for: Lcom/duokan/airkan/phone/api/VideoServiceCallback;->mVideoManager:Lcom/duokan/airkan/phone/api/VideoManager;
    invoke-static {v2}, Lcom/duokan/airkan/phone/api/VideoServiceCallback;->access$000(Lcom/duokan/airkan/phone/api/VideoServiceCallback;)Lcom/duokan/airkan/phone/api/VideoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->volume:B

    invoke-virtual {v2, v3}, Lcom/duokan/airkan/phone/api/VideoManager;->updateVolume(B)V

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " volume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->volume:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_6
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v2, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querymediaid:B

    if-ne v5, v2, :cond_7

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mediaid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-wide v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->mediaid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_7
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v2, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->queryci:B

    if-ne v5, v2, :cond_8

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ci:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->ci:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_8
    iget-object v2, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v2, v2, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->querysource:B

    if-ne v5, v2, :cond_0

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duokan/airkan/phone/api/VideoServiceCallback$4;->val$queryData:Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;

    iget-byte v3, v3, Lcom/duokan/airkan/common/aidl/video/ParcelQueryData;->playsource:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "VSC"

    invoke-static {v2, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
