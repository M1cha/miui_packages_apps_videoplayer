.class public Lcom/duokan/TimedText$Font;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Font"
.end annotation


# instance fields
.field public ID:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/duokan/TimedText;


# direct methods
.method public constructor <init>(Lcom/duokan/TimedText;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/duokan/TimedText$Font;->this$0:Lcom/duokan/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/duokan/TimedText$Font;->ID:I

    .line 226
    return-void
.end method
