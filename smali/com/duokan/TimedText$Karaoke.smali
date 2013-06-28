.class public Lcom/duokan/TimedText$Karaoke;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Karaoke"
.end annotation


# instance fields
.field public endChar:I

.field public endTimeMs:I

.field public startChar:I

.field public startTimeMs:I

.field final synthetic this$0:Lcom/duokan/TimedText;


# direct methods
.method public constructor <init>(Lcom/duokan/TimedText;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 256
    iput-object p1, p0, Lcom/duokan/TimedText$Karaoke;->this$0:Lcom/duokan/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput v0, p0, Lcom/duokan/TimedText$Karaoke;->startTimeMs:I

    .line 244
    iput v0, p0, Lcom/duokan/TimedText$Karaoke;->endTimeMs:I

    .line 249
    iput v0, p0, Lcom/duokan/TimedText$Karaoke;->startChar:I

    .line 254
    iput v0, p0, Lcom/duokan/TimedText$Karaoke;->endChar:I

    .line 256
    return-void
.end method
