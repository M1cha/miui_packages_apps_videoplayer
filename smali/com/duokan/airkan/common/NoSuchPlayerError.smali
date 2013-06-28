.class public Lcom/duokan/airkan/common/NoSuchPlayerError;
.super Lcom/duokan/airkan/common/AirkanException;
.source "NoSuchPlayerError.java"


# static fields
.field private static final serialVersionUID:J = 0x6c1ed360d236bfb7L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/AirkanException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
