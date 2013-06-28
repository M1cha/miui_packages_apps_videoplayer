.class public Lcom/duokan/TimedText$Justification;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Justification"
.end annotation


# instance fields
.field public horizontalJustification:I

.field final synthetic this$0:Lcom/duokan/TimedText;

.field public verticalJustification:I


# direct methods
.method public constructor <init>(Lcom/duokan/TimedText;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 158
    iput-object p1, p0, Lcom/duokan/TimedText$Justification;->this$0:Lcom/duokan/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v0, p0, Lcom/duokan/TimedText$Justification;->horizontalJustification:I

    .line 156
    iput v0, p0, Lcom/duokan/TimedText$Justification;->verticalJustification:I

    .line 158
    return-void
.end method
