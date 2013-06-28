.class public Lcom/duokan/airkan/common/video/VideoResolution;
.super Ljava/lang/Object;
.source "VideoResolution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/common/video/VideoResolution$1;,
        Lcom/duokan/airkan/common/video/VideoResolution$Resolution;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static byteResolutionToEnum(B)Lcom/duokan/airkan/common/video/VideoResolution$Resolution;
    .locals 1
    .parameter "resolution"

    .prologue
    .line 41
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 42
    sget-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->STANDARD_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    .line 50
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    .line 44
    sget-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->HIGH_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p0, :cond_2

    .line 46
    sget-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->SUPER_HIGH_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p0, :cond_3

    .line 48
    sget-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->AUTO_SELECT:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    goto :goto_0

    .line 50
    :cond_3
    sget-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->AUTO_SELECT:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    goto :goto_0
.end method

.method public static enumResolutionToByte(Lcom/duokan/airkan/common/video/VideoResolution$Resolution;)B
    .locals 3
    .parameter "resolution"

    .prologue
    const/4 v0, 0x4

    .line 27
    sget-object v1, Lcom/duokan/airkan/common/video/VideoResolution$1;->$SwitchMap$com$duokan$airkan$common$video$VideoResolution$Resolution:[I

    invoke-virtual {p0}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 37
    :goto_0
    :pswitch_0
    return v0

    .line 29
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 33
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static stringToByteResolution(Ljava/lang/String;)B
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x4

    .line 54
    sget-object v1, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->STANDARD_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    invoke-virtual {v1}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const/4 v0, 0x1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    sget-object v1, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->HIGH_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    invoke-virtual {v1}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const/4 v0, 0x2

    goto :goto_0

    .line 58
    :cond_2
    sget-object v1, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->SUPER_HIGH_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    invoke-virtual {v1}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    const/4 v0, 0x3

    goto :goto_0

    .line 60
    :cond_3
    sget-object v1, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->AUTO_SELECT:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    invoke-virtual {v1}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
