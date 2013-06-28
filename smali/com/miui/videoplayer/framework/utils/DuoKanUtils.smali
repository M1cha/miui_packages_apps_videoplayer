.class public Lcom/miui/videoplayer/framework/utils/DuoKanUtils;
.super Ljava/lang/Object;
.source "DuoKanUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidFormatVideo(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    if-nez p0, :cond_1

    .line 21
    :cond_0
    :goto_0
    return v1

    .line 13
    :cond_1
    sget-boolean v3, Lcom/miui/videoplayer/framework/DuoKanConstants;->IS_MAINLAND_CHINA_VERSION:Z

    if-nez v3, :cond_2

    move v1, v2

    .line 14
    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, mediaName:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".asf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 21
    goto :goto_0
.end method
