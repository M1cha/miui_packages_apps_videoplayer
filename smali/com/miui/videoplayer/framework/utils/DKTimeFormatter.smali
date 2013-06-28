.class public Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;
.super Ljava/lang/Object;
.source "DKTimeFormatter.java"


# static fields
.field private static instance:Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;


# instance fields
.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    invoke-direct {v0}, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;-><init>()V

    sput-object v0, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->instance:Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 15
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->mFormatter:Ljava/util/Formatter;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->instance:Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;

    return-object v0
.end method


# virtual methods
.method public getHoursForTime(I)I
    .locals 2
    .parameter "timeMs"

    .prologue
    .line 38
    div-int/lit16 v1, p1, 0x3e8

    .line 39
    .local v1, totalSeconds:I
    div-int/lit16 v0, v1, 0xe10

    .line 40
    .local v0, hours:I
    return v0
.end method

.method public getMinutesForTime(I)I
    .locals 3
    .parameter "timeMs"

    .prologue
    .line 44
    div-int/lit16 v1, p1, 0x3e8

    .line 45
    .local v1, totalSeconds:I
    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v0, v2, 0x3c

    .line 46
    .local v0, minutes:I
    return v0
.end method

.method public getSecondsForTime(I)I
    .locals 2
    .parameter "timeMs"

    .prologue
    .line 50
    div-int/lit16 v1, p1, 0x3e8

    .line 51
    .local v1, totalSeconds:I
    rem-int/lit8 v0, v1, 0x3c

    .line 52
    .local v0, seconds:I
    return v0
.end method

.method public longToDate(J)Ljava/lang/String;
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public longToDayDate(J)Ljava/lang/String;
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 23
    div-int/lit16 v3, p1, 0x3e8

    .line 25
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 26
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 27
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 29
    .local v0, hours:I
    iget-object v4, p0, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 30
    if-lez v0, :cond_0

    .line 31
    iget-object v4, p0, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 33
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/miui/videoplayer/framework/utils/DKTimeFormatter;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
