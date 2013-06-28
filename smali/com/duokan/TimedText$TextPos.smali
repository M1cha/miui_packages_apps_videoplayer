.class public Lcom/duokan/TimedText$TextPos;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextPos"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field final synthetic this$0:Lcom/duokan/TimedText;

.field public top:I


# direct methods
.method public constructor <init>(Lcom/duokan/TimedText;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 140
    iput-object p1, p0, Lcom/duokan/TimedText$TextPos;->this$0:Lcom/duokan/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v0, p0, Lcom/duokan/TimedText$TextPos;->top:I

    .line 128
    iput v0, p0, Lcom/duokan/TimedText$TextPos;->left:I

    .line 133
    iput v0, p0, Lcom/duokan/TimedText$TextPos;->bottom:I

    .line 138
    iput v0, p0, Lcom/duokan/TimedText$TextPos;->right:I

    .line 140
    return-void
.end method
