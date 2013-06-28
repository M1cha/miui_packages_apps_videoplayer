.class public Lcom/duokan/airkan/common/BufferData;
.super Ljava/lang/Object;
.source "BufferData.java"


# instance fields
.field public data:[B

.field public desc:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/duokan/airkan/common/BufferData;->type:I

    .line 5
    iput-object v1, p0, Lcom/duokan/airkan/common/BufferData;->desc:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/duokan/airkan/common/BufferData;->data:[B

    return-void
.end method
