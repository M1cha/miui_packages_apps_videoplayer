.class public Lcom/duokan/airkan/photo/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/photo/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x23

.field public static final FILE_TYPE_DIVX:I = 0x1f

.field public static final FILE_TYPE_GIF:I = 0x21

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x20

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x22

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x24

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x25

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x20

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x7

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x25

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2b

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1f

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duokan/airkan/photo/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x18

    const/16 v7, 0x17

    const/16 v6, 0x15

    const/16 v5, 0xb

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/duokan/airkan/photo/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/duokan/airkan/photo/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 85
    const-string v2, "MP3"

    const/4 v3, 0x1

    const-string v4, "audio/mpeg"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    const-string v2, "M4A"

    const/4 v3, 0x2

    const-string v4, "audio/mp4"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    const-string v2, "WAV"

    const/4 v3, 0x3

    const-string v4, "audio/x-wav"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    const-string v2, "AMR"

    const/4 v3, 0x4

    const-string v4, "audio/amr"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    const-string v2, "AWB"

    const/4 v3, 0x5

    const-string v4, "audio/amr-wb"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    const-string v2, "WMA"

    const/4 v3, 0x6

    const-string v4, "audio/x-ms-wma"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    const-string v2, "OGG"

    const/4 v3, 0x7

    const-string v4, "application/ogg"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    const-string v2, "MID"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    const-string v2, "XMF"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    const-string v2, "RTTTL"

    const-string v3, "audio/midi"

    invoke-static {v2, v5, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 96
    const-string v2, "SMF"

    const/16 v3, 0xc

    const-string v4, "audio/sp-midi"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    const-string v2, "IMY"

    const/16 v3, 0xd

    const-string v4, "audio/imelody"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    const-string v2, "MPEG"

    const-string v3, "video/mpeg"

    invoke-static {v2, v6, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    const-string v2, "MPG"

    const-string v3, "video/mpeg"

    invoke-static {v2, v6, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    const-string v2, "MP4"

    const-string v3, "video/mp4"

    invoke-static {v2, v6, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    const-string v2, "M4V"

    const/16 v3, 0x16

    const-string v4, "video/mp4"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    const-string v2, "3GP"

    const-string v3, "video/3gpp"

    invoke-static {v2, v7, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    const-string v2, "3GPP"

    const-string v3, "video/3gpp"

    invoke-static {v2, v7, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    const-string v2, "3G2"

    const-string v3, "video/3gpp2"

    invoke-static {v2, v8, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    const-string v2, "3GPP2"

    const-string v3, "video/3gpp2"

    invoke-static {v2, v8, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    const-string v2, "MKV"

    const/16 v3, 0x1b

    const-string v4, "video/x-matroska"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    const-string v2, "WEBM"

    const/16 v3, 0x1e

    const-string v4, "video/webm"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    const-string v2, "TS"

    const/16 v3, 0x1c

    const-string v4, "video/mp2ts"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    const-string v2, "AVI"

    const/16 v3, 0x1d

    const-string v4, "video/avi"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    const-string v2, "WMV"

    const/16 v3, 0x19

    const-string v4, "video/x-ms-wmv"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    const-string v2, "ASF"

    const/16 v3, 0x1a

    const-string v4, "video/x-ms-asf"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    const-string v2, "DIVX"

    const/16 v3, 0x1f

    const-string v4, "video/divx"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    const-string v2, "JPG"

    const-string v3, "image/jpeg"

    invoke-static {v2, v9, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    const-string v2, "JPEG"

    const-string v3, "image/jpeg"

    invoke-static {v2, v9, v3}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    const-string v2, "GIF"

    const/16 v3, 0x21

    const-string v4, "image/gif"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    const-string v2, "PNG"

    const/16 v3, 0x22

    const-string v4, "image/png"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    const-string v2, "BMP"

    const/16 v3, 0x23

    const-string v4, "image/x-ms-bmp"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    const-string v2, "WBMP"

    const/16 v3, 0x24

    const-string v4, "image/vnd.wap.wbmp"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    const-string v2, "WEBP"

    const/16 v3, 0x25

    const-string v4, "image/webp"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    const-string v2, "M3U"

    const/16 v3, 0x29

    const-string v4, "audio/x-mpegurl"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    const-string v2, "PLS"

    const/16 v3, 0x2a

    const-string v4, "audio/x-scpls"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    const-string v2, "WPL"

    const/16 v3, 0x2b

    const-string v4, "application/vnd.ms-wpl"

    invoke-static {v2, v3, v4}, Lcom/duokan/airkan/photo/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/duokan/airkan/photo/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 136
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/duokan/airkan/photo/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 79
    sget-object v0, Lcom/duokan/airkan/photo/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcom/duokan/airkan/photo/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcom/duokan/airkan/photo/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/duokan/airkan/photo/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/duokan/airkan/photo/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 162
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 164
    const/4 v1, 0x0

    .line 165
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/duokan/airkan/photo/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/photo/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 204
    sget-object v1, Lcom/duokan/airkan/photo/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 205
    .local v0, value:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static isAudioFileType(I)Z
    .locals 2
    .parameter "fileType"

    .prologue
    const/4 v0, 0x1

    .line 146
    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0xb

    if-lt p0, v1, :cond_2

    const/16 v1, 0xd

    if-gt p0, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAudioFileType(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 170
    invoke-static {p0}, Lcom/duokan/airkan/photo/MediaFile;->getFileType(Ljava/lang/String;)Lcom/duokan/airkan/photo/MediaFile$MediaFileType;

    move-result-object v0

    .line 171
    .local v0, type:Lcom/duokan/airkan/photo/MediaFile$MediaFileType;
    if-eqz v0, :cond_0

    .line 172
    iget v1, v0, Lcom/duokan/airkan/photo/MediaFile$MediaFileType;->fileType:I

    invoke-static {v1}, Lcom/duokan/airkan/photo/MediaFile;->isAudioFileType(I)Z

    move-result v1

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGIF(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 194
    invoke-static {p0}, Lcom/duokan/airkan/photo/MediaFile;->getFileType(Ljava/lang/String;)Lcom/duokan/airkan/photo/MediaFile$MediaFileType;

    move-result-object v0

    .line 195
    .local v0, type:Lcom/duokan/airkan/photo/MediaFile$MediaFileType;
    if-eqz v0, :cond_0

    .line 196
    const/16 v1, 0x21

    iget v2, v0, Lcom/duokan/airkan/photo/MediaFile$MediaFileType;->fileType:I

    if-ne v1, v2, :cond_0

    .line 197
    const/4 v1, 0x1

    .line 199
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 154
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x25

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 186
    invoke-static {p0}, Lcom/duokan/airkan/photo/MediaFile;->getFileType(Ljava/lang/String;)Lcom/duokan/airkan/photo/MediaFile$MediaFileType;

    move-result-object v0

    .line 187
    .local v0, type:Lcom/duokan/airkan/photo/MediaFile$MediaFileType;
    if-eqz v0, :cond_0

    .line 188
    iget v1, v0, Lcom/duokan/airkan/photo/MediaFile$MediaFileType;->fileType:I

    invoke-static {v1}, Lcom/duokan/airkan/photo/MediaFile;->isImageFileType(I)Z

    move-result v1

    .line 190
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 158
    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 150
    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 178
    invoke-static {p0}, Lcom/duokan/airkan/photo/MediaFile;->getFileType(Ljava/lang/String;)Lcom/duokan/airkan/photo/MediaFile$MediaFileType;

    move-result-object v0

    .line 179
    .local v0, type:Lcom/duokan/airkan/photo/MediaFile$MediaFileType;
    if-eqz v0, :cond_0

    .line 180
    iget v1, v0, Lcom/duokan/airkan/photo/MediaFile$MediaFileType;->fileType:I

    invoke-static {v1}, Lcom/duokan/airkan/photo/MediaFile;->isVideoFileType(I)Z

    move-result v1

    .line 182
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
