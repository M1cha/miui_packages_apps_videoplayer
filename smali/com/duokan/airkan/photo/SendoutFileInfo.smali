.class public Lcom/duokan/airkan/photo/SendoutFileInfo;
.super Ljava/lang/Object;
.source "SendoutFileInfo.java"


# static fields
.field private static sent:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field public changed:Z

.field public filename:Ljava/lang/String;

.field public format:B

.field public handle:S

.field public lastModifiedTime:J

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/duokan/airkan/photo/SendoutFileInfo;->sent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "SendoutFileInfo"

    iput-object v0, p0, Lcom/duokan/airkan/photo/SendoutFileInfo;->TAG:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/photo/SendoutFileInfo;->filename:Ljava/lang/String;

    .line 11
    iput-short v2, p0, Lcom/duokan/airkan/photo/SendoutFileInfo;->handle:S

    .line 12
    iput-byte v2, p0, Lcom/duokan/airkan/photo/SendoutFileInfo;->format:B

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duokan/airkan/photo/SendoutFileInfo;->lastModifiedTime:J

    .line 14
    iput-boolean v2, p0, Lcom/duokan/airkan/photo/SendoutFileInfo;->changed:Z

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/duokan/airkan/photo/SendoutFileInfo;->rotation:I

    return-void
.end method
