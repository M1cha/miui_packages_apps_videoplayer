.class public Lcom/duokan/airkan/common/video/VideoList;
.super Ljava/lang/Object;
.source "VideoList.java"


# instance fields
.field public length:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/duokan/airkan/common/video/VideoList;->length:I

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duokan/airkan/common/video/VideoList;->url:Ljava/lang/String;

    return-void
.end method
