.class public Lcom/duokan/TimedText$HyperText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HyperText"
.end annotation


# instance fields
.field public URL:Ljava/lang/String;

.field public altString:Ljava/lang/String;

.field public endChar:I

.field public startChar:I

.field final synthetic this$0:Lcom/duokan/TimedText;


# direct methods
.method public constructor <init>(Lcom/duokan/TimedText;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 284
    iput-object p1, p0, Lcom/duokan/TimedText$HyperText;->this$0:Lcom/duokan/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput v0, p0, Lcom/duokan/TimedText$HyperText;->startChar:I

    .line 272
    iput v0, p0, Lcom/duokan/TimedText$HyperText;->endChar:I

    .line 284
    return-void
.end method
