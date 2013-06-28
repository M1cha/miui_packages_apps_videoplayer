.class public Lcom/duokan/TimedText$CharPos;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CharPos"
.end annotation


# instance fields
.field public endChar:I

.field public startChar:I

.field final synthetic this$0:Lcom/duokan/TimedText;


# direct methods
.method public constructor <init>(Lcom/duokan/TimedText;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 112
    iput-object p1, p0, Lcom/duokan/TimedText$CharPos;->this$0:Lcom/duokan/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput v0, p0, Lcom/duokan/TimedText$CharPos;->startChar:I

    .line 110
    iput v0, p0, Lcom/duokan/TimedText$CharPos;->endChar:I

    .line 112
    return-void
.end method
