.class public Lcom/duokan/airkan/common/MdnsExtraData;
.super Ljava/lang/Object;
.source "MdnsExtraData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MdnsExtraData"


# instance fields
.field private mMusicServiceVersion:Ljava/lang/String;

.field private mPhotoSendPort:I

.field private mPlatformID:I

.field private mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

.field private mRemoteScreenHeight:I

.field private mRemoteScreenWidth:I

.field private mServerAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMusicServiceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mMusicServiceVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoSendPort()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mPhotoSendPort:I

    return v0
.end method

.method public getPlatformID()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mPlatformID:I

    return v0
.end method

.method public getRemoteProtVersion()Lcom/duokan/airkan/common/Version;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    return-object v0
.end method

.method public getRemoteScreenHeight()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenHeight:I

    return v0
.end method

.method public getRemoteScreenWidth()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenWidth:I

    return v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportMusicService()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mMusicServiceVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mMusicServiceVersion:Ljava/lang/String;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 12
    .parameter "extraData"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 14
    const/16 v9, 0x17c9

    iput v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mPhotoSendPort:I

    .line 15
    const/16 v9, 0x500

    iput v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenWidth:I

    .line 16
    const/16 v9, 0x2d0

    iput v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenHeight:I

    .line 17
    iput-object v10, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    .line 18
    iput v7, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mPlatformID:I

    .line 19
    iput-object v10, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mServerAddress:Ljava/lang/String;

    .line 21
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 22
    :cond_0
    const-string v7, "MdnsExtraData"

    const-string v9, "no extra data"

    invoke-static {v7, v9}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 117
    :goto_0
    return v7

    .line 25
    :cond_1
    const/4 v2, 0x0

    .line 27
    .local v2, pos:I
    const/4 v3, 0x0

    .line 29
    .local v3, segText:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 30
    .local v1, len:I
    add-int v9, v1, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v9, v10, :cond_3

    .line 31
    const-string v8, "MdnsExtraData"

    const-string v9, "invalid extra data"

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_3
    add-int/lit8 v9, v2, 0x1

    add-int v10, v2, v1

    add-int/lit8 v10, v10, 0x1

    :try_start_0
    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 41
    const-string v9, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, values:[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    .line 43
    :cond_4
    const-string v8, "MdnsExtraData"

    const-string v9, "invalid segment"

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    .end local v4           #values:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #values:[Ljava/lang/String;
    :cond_5
    const-string v9, "photoport"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 48
    const/4 v9, 0x1

    :try_start_1
    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mPhotoSendPort:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :goto_1
    add-int v9, v2, v1

    add-int/lit8 v2, v9, 0x1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v2, v9, :cond_2

    move v7, v8

    .line 117
    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_6
    const-string v9, "scrnw"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 55
    const/4 v9, 0x1

    :try_start_2
    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenWidth:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 56
    :catch_2
    move-exception v0

    .line 57
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_7
    const-string v9, "scrnh"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 62
    const/4 v9, 0x1

    :try_start_3
    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteScreenHeight:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 63
    :catch_3
    move-exception v0

    .line 64
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_8
    const-string v9, "protver"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 69
    :try_start_4
    iget-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    if-nez v9, :cond_9

    .line 70
    new-instance v9, Lcom/duokan/airkan/common/Version;

    invoke-direct {v9}, Lcom/duokan/airkan/common/Version;-><init>()V

    iput-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    .line 72
    :cond_9
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 73
    .local v5, ver:I
    iget-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    invoke-virtual {v9, v5}, Lcom/duokan/airkan/common/Version;->setVersion(I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 74
    .end local v5           #ver:I
    :catch_4
    move-exception v0

    .line 75
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_a
    const-string v9, "prottext"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 80
    :try_start_5
    iget-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    if-nez v9, :cond_b

    .line 81
    const-string v8, "MdnsExtraData"

    const-string v9, "invalid order"

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 86
    :catch_5
    move-exception v0

    .line 87
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_b
    const/4 v9, 0x1

    :try_start_6
    aget-object v6, v4, v9

    .line 85
    .local v6, vertext:Ljava/lang/String;
    iget-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mRemoteProtVersion:Lcom/duokan/airkan/common/Version;

    invoke-virtual {v9, v6}, Lcom/duokan/airkan/common/Version;->setText(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 90
    .end local v6           #vertext:Ljava/lang/String;
    :cond_c
    const-string v9, "platform_id"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 92
    const/4 v9, 0x1

    :try_start_7
    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mPlatformID:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    .line 93
    :catch_6
    move-exception v0

    .line 94
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_d
    const-string v9, "server_address"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 99
    const/4 v9, 0x1

    :try_start_8
    aget-object v9, v4, v9

    iput-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mServerAddress:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_1

    .line 100
    :catch_7
    move-exception v0

    .line 101
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v8, "MdnsExtraData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " format is not correct."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/duokan/airkan/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_e
    const-string v9, "music_version"

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 106
    const/4 v9, 0x1

    :try_start_9
    aget-object v9, v4, v9

    iput-object v9, p0, Lcom/duokan/airkan/common/MdnsExtraData;->mMusicServiceVersion:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_1

    .line 107
    :catch_8
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 111
    .end local v0           #e:Ljava/lang/Exception;
    :cond_f
    const-string v9, "MdnsExtraData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not known field:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
