.class public Lcom/miui/videoplayer/framework/history/PlayHistoryManager;
.super Ljava/lang/Object;
.source "PlayHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    }
.end annotation


# static fields
.field private static final ATTR_DATE_PLAY_INFO:Ljava/lang/String; = "datePlayInfo"

.field private static final ATTR_HTML5PAGE:Ljava/lang/String; = "html5Page"

.field private static final ATTR_INBOX:Ljava/lang/String; = "inBox"

.field private static final ATTR_ISSUEDATE:Ljava/lang/String; = "issueDate"

.field private static final ATTR_MEDIASETTYPE:Ljava/lang/String; = "mediaSetType"

.field private static final ATTR_MEDIA_CI:Ljava/lang/String; = "mediaCi"

.field private static final ATTR_MEDIA_ID:Ljava/lang/String; = "mediaId"

.field private static final ATTR_PLAY_PARAMETER:Ljava/lang/String; = "playParameter"

.field private static final ATTR_PLAY_SOURCE:Ljava/lang/String; = "mediaSource"

.field private static final ATTR_POSITION:Ljava/lang/String; = "position"

.field private static final ATTR_QUALITY:Ljava/lang/String; = "quality"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_VIDEO_NAME:Ljava/lang/String; = "videoName"

.field private static final HISTORY_ITEM_MAX_COUNT:I = 0x64

.field public static final JSON_PLAY_INFO_ITEM_BUFFER_TIME_NAME:Ljava/lang/String; = "bufferTime"

.field public static final JSON_PLAY_INFO_ITEM_DATE_NAME:Ljava/lang/String; = "date"

.field public static final JSON_PLAY_INFO_ITEM_PLAYING_TIME:Ljava/lang/String; = "playingTime"

.field public static final JSON_PLAY_INFO_ROOT_NAME:Ljava/lang/String; = "content"

.field private static final NAME_SPACE:Ljava/lang/String; = ""

.field public static final PLAY_HISTORY_FILE:Ljava/lang/String; = "play_history.xml"

.field public static final PLAY_INFO_FILE:Ljava/lang/String; = "play_info.xml"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TAG_PLAY_HISTORY:Ljava/lang/String; = "playHistory"

.field private static final TAG_ROOT:Ljava/lang/String; = "playHistoryList"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mPlayHistoryEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    .line 58
    const-string v0, "play_history.xml"

    iput-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mFileName:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    .line 58
    const-string v0, "play_history.xml"

    iput-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mFileName:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mFileName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private closeIOStream(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 257
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addToHistory(Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    :cond_0
    return-void
.end method

.method public findPlayHistory(Landroid/net/Uri;)Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 265
    if-nez p1, :cond_0

    move-object v0, v2

    .line 273
    :goto_0
    return-object v0

    .line 268
    :cond_0
    iget-object v3, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    .line 269
    .local v0, entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    invoke-virtual {v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0           #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    :cond_2
    move-object v0, v2

    .line 273
    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->readPlayHistoryList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    .line 71
    return-void
.end method

.method public moveToFirst(Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V
    .locals 2
    .parameter "oldEntry"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setTimeStamp(J)V

    .line 282
    iget-object v0, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public readPlayHistoryList()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v19, result:Ljava/util/List;,"Ljava/util/List<Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;>;"
    const/4 v6, 0x0

    .line 79
    .local v6, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 86
    if-nez v6, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v19

    .line 80
    :catch_0
    move-exception v3

    .line 83
    .local v3, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 89
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v24

    .line 91
    .local v24, xmlPullParser:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    const-string v25, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 92
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 93
    .local v5, eventType:I
    :goto_1
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v5, v0, :cond_0

    .line 95
    if-nez v5, :cond_2

    .line 98
    :cond_2
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v5, v0, :cond_5

    .line 100
    const-string v25, "playHistory"

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 101
    new-instance v4, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    const-string v25, ""

    const-string v26, "uri"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v25, ""

    const-string v26, "position"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v16

    .line 105
    .local v16, posString:Ljava/lang/String;
    const/16 v17, 0x0

    .line 106
    .local v17, position:I
    if-eqz v16, :cond_3

    .line 108
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v17

    .line 113
    :cond_3
    :goto_2
    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setPosition(I)V

    .line 114
    const-string v25, ""

    const-string v26, "timeStamp"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v22

    .line 115
    .local v22, timeStampString:Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 116
    .local v20, timeStamp:J
    if-eqz v22, :cond_4

    .line 118
    :try_start_4
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v20

    .line 123
    :cond_4
    :goto_3
    :try_start_5
    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setTimeStamp(J)V

    .line 125
    const-string v25, ""

    const-string v26, "mediaId"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, mediaId:Ljava/lang/String;
    invoke-virtual {v4, v12}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setMediaId(Ljava/lang/String;)V

    .line 127
    const-string v25, ""

    const-string v26, "mediaCi"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, mediaCi:Ljava/lang/String;
    invoke-virtual {v4, v11}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setMediaCi(Ljava/lang/String;)V

    .line 129
    const-string v25, ""

    const-string v26, "mediaSource"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 130
    .local v15, playSource:Ljava/lang/String;
    invoke-virtual {v4, v15}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setPlaySource(Ljava/lang/String;)V

    .line 131
    const-string v25, ""

    const-string v26, "videoName"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 132
    .local v23, videoName:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setVideoName(Ljava/lang/String;)V

    .line 133
    const-string v25, ""

    const-string v26, "quality"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 134
    .local v18, quality:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setQuality(Ljava/lang/String;)V

    .line 135
    const-string v25, ""

    const-string v26, "html5Page"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, html5Page:Ljava/lang/String;
    invoke-virtual {v4, v7}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setHtml5Page(Ljava/lang/String;)V

    .line 139
    const-string v25, ""

    const-string v26, "playParameter"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 140
    .local v14, playParameter:Ljava/lang/String;
    invoke-virtual {v4, v14}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setPlayParameter(Ljava/lang/String;)V

    .line 141
    const-string v25, ""

    const-string v26, "mediaSetType"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 142
    .local v13, mediaSetType:Ljava/lang/String;
    invoke-virtual {v4, v13}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setMediaSetType(Ljava/lang/String;)V

    .line 143
    const-string v25, ""

    const-string v26, "inBox"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, inBox:Ljava/lang/String;
    invoke-virtual {v4, v8}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setInBox(Ljava/lang/String;)V

    .line 145
    const-string v25, ""

    const-string v26, "issueDate"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, issueDate:Ljava/lang/String;
    invoke-virtual {v4, v9}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setIssueDate(Ljava/lang/String;)V

    .line 148
    const-string v25, ""

    const-string v26, "datePlayInfo"

    invoke-interface/range {v24 .. v26}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    .line 149
    .local v2, datePlayInfo:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 152
    :try_start_6
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 157
    .local v10, jsonObject:Lorg/json/JSONObject;
    :goto_4
    :try_start_7
    invoke-virtual {v4, v10}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setDatePlayInfoJsonObject(Lorg/json/JSONObject;)V

    .line 161
    .end local v2           #datePlayInfo:Ljava/lang/String;
    .end local v4           #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .end local v7           #html5Page:Ljava/lang/String;
    .end local v8           #inBox:Ljava/lang/String;
    .end local v9           #issueDate:Ljava/lang/String;
    .end local v10           #jsonObject:Lorg/json/JSONObject;
    .end local v11           #mediaCi:Ljava/lang/String;
    .end local v12           #mediaId:Ljava/lang/String;
    .end local v13           #mediaSetType:Ljava/lang/String;
    .end local v14           #playParameter:Ljava/lang/String;
    .end local v15           #playSource:Ljava/lang/String;
    .end local v16           #posString:Ljava/lang/String;
    .end local v17           #position:I
    .end local v18           #quality:Ljava/lang/String;
    .end local v20           #timeStamp:J
    .end local v22           #timeStampString:Ljava/lang/String;
    .end local v23           #videoName:Ljava/lang/String;
    :cond_5
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v5

    goto/16 :goto_1

    .line 153
    .restart local v2       #datePlayInfo:Ljava/lang/String;
    .restart local v4       #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .restart local v7       #html5Page:Ljava/lang/String;
    .restart local v8       #inBox:Ljava/lang/String;
    .restart local v9       #issueDate:Ljava/lang/String;
    .restart local v11       #mediaCi:Ljava/lang/String;
    .restart local v12       #mediaId:Ljava/lang/String;
    .restart local v13       #mediaSetType:Ljava/lang/String;
    .restart local v14       #playParameter:Ljava/lang/String;
    .restart local v15       #playSource:Ljava/lang/String;
    .restart local v16       #posString:Ljava/lang/String;
    .restart local v17       #position:I
    .restart local v18       #quality:Ljava/lang/String;
    .restart local v20       #timeStamp:J
    .restart local v22       #timeStampString:Ljava/lang/String;
    .restart local v23       #videoName:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 155
    .local v3, e:Lorg/json/JSONException;
    const/4 v10, 0x0

    .restart local v10       #jsonObject:Lorg/json/JSONObject;
    goto :goto_4

    .line 164
    .end local v2           #datePlayInfo:Ljava/lang/String;
    .end local v3           #e:Lorg/json/JSONException;
    .end local v4           #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .end local v5           #eventType:I
    .end local v7           #html5Page:Ljava/lang/String;
    .end local v8           #inBox:Ljava/lang/String;
    .end local v9           #issueDate:Ljava/lang/String;
    .end local v10           #jsonObject:Lorg/json/JSONObject;
    .end local v11           #mediaCi:Ljava/lang/String;
    .end local v12           #mediaId:Ljava/lang/String;
    .end local v13           #mediaSetType:Ljava/lang/String;
    .end local v14           #playParameter:Ljava/lang/String;
    .end local v15           #playSource:Ljava/lang/String;
    .end local v16           #posString:Ljava/lang/String;
    .end local v17           #position:I
    .end local v18           #quality:Ljava/lang/String;
    .end local v20           #timeStamp:J
    .end local v22           #timeStampString:Ljava/lang/String;
    .end local v23           #videoName:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 165
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_0

    .line 166
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v3

    .line 167
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 109
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .restart local v5       #eventType:I
    .restart local v16       #posString:Ljava/lang/String;
    .restart local v17       #position:I
    :catch_4
    move-exception v25

    goto/16 :goto_2

    .line 119
    .restart local v20       #timeStamp:J
    .restart local v22       #timeStampString:Ljava/lang/String;
    :catch_5
    move-exception v25

    goto/16 :goto_3
.end method

.method public recordLastPlayPosition(Ljava/lang/String;I)V
    .locals 3
    .parameter "uri"
    .parameter "position"

    .prologue
    .line 296
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->findPlayHistory(Landroid/net/Uri;)Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    move-result-object v0

    .line 297
    .local v0, entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    .end local v0           #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    invoke-direct {v0, p1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v0       #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setTimeStamp(J)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->addToHistory(Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;)V

    .line 302
    :cond_0
    invoke-virtual {v0, p2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->setPosition(I)V

    .line 303
    return-void
.end method

.method public save()V
    .locals 13

    .prologue
    .line 176
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 177
    .local v7, xmlSerializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 179
    .local v6, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 180
    const-string v8, "UTF-8"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    const-string v8, ""

    const-string v9, "playHistoryList"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    iget-object v8, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mPlayHistoryEntryList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;

    .line 183
    .local v1, entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    const-string v8, ""

    const-string v9, "playHistory"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    const-string v8, ""

    const-string v9, "position"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getPosition()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const-string v8, ""

    const-string v9, "uri"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getUri()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    const-string v8, ""

    const-string v9, "timeStamp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getTimeStamp()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 188
    const-string v8, ""

    const-string v9, "mediaId"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    :cond_0
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaCi()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 191
    const-string v8, ""

    const-string v9, "mediaCi"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaCi()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    :cond_1
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getPlaySource()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 194
    const-string v8, ""

    const-string v9, "mediaSource"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getPlaySource()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    :cond_2
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getVideoName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 197
    const-string v8, ""

    const-string v9, "videoName"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getVideoName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    :cond_3
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getQuality()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 200
    const-string v8, ""

    const-string v9, "quality"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getQuality()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :cond_4
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getHtml5Page()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 203
    const-string v8, ""

    const-string v9, "html5Page"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getHtml5Page()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    :cond_5
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getPlayParameter()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 209
    const-string v8, ""

    const-string v9, "playParameter"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getPlayParameter()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    :cond_6
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaSetType()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 212
    const-string v8, ""

    const-string v9, "mediaSetType"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getMediaSetType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    :cond_7
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getInBox()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 215
    const-string v8, ""

    const-string v9, "inBox"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getInBox()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    :cond_8
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getIssueDate()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 218
    const-string v8, ""

    const-string v9, "issueDate"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getIssueDate()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    :cond_9
    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getDatePlayInfoJsonObject()Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 222
    const-string v8, ""

    const-string v9, "datePlayInfo"

    invoke-virtual {v1}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;->getDatePlayInfoJsonObject()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    :cond_a
    const-string v8, ""

    const-string v9, "playHistory"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 228
    .end local v1           #entry:Lcom/miui/videoplayer/framework/history/PlayHistoryManager$PlayHistoryEntry;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 236
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v2, 0x0

    .line 237
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 239
    .local v4, outputStreamWriter:Ljava/io/OutputStreamWriter;
    :try_start_1
    iget-object v8, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->mFileName:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 240
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 241
    .end local v4           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    .local v5, outputStreamWriter:Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 248
    invoke-direct {p0, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->closeIOStream(Ljava/io/Closeable;)V

    .line 249
    invoke-direct {p0, v5}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->closeIOStream(Ljava/io/Closeable;)V

    move-object v4, v5

    .line 252
    .end local v5           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v4       #outputStreamWriter:Ljava/io/OutputStreamWriter;
    :goto_2
    return-void

    .line 226
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v4           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_b
    :try_start_3
    const-string v8, ""

    const-string v9, "playHistoryList"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 230
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 232
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 233
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 243
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStreamWriter:Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v0

    .line 244
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    invoke-direct {p0, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->closeIOStream(Ljava/io/Closeable;)V

    .line 249
    invoke-direct {p0, v4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->closeIOStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 245
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 246
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 248
    invoke-direct {p0, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->closeIOStream(Ljava/io/Closeable;)V

    .line 249
    invoke-direct {p0, v4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->closeIOStream(Ljava/io/Closeable;)V

    goto :goto_2

    .line 248
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    invoke-direct {p0, v2}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->closeIOStream(Ljava/io/Closeable;)V

    .line 249
    invoke-direct {p0, v4}, Lcom/miui/videoplayer/framework/history/PlayHistoryManager;->closeIOStream(Ljava/io/Closeable;)V

    throw v8

    .line 248
    .end local v4           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v5       #outputStreamWriter:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v4       #outputStreamWriter:Ljava/io/OutputStreamWriter;
    goto :goto_5

    .line 245
    .end local v4           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v5       #outputStreamWriter:Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v4       #outputStreamWriter:Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 243
    .end local v4           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v5       #outputStreamWriter:Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5           #outputStreamWriter:Ljava/io/OutputStreamWriter;
    .restart local v4       #outputStreamWriter:Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method
