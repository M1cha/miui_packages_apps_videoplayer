.class public Lcom/duokan/TimedText$Style;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Style"
.end annotation


# instance fields
.field public colorRGBA:I

.field public endChar:I

.field public fontID:I

.field public fontSize:I

.field public isBold:Z

.field public isItalic:Z

.field public isUnderlined:Z

.field public startChar:I

.field final synthetic this$0:Lcom/duokan/TimedText;


# direct methods
.method public constructor <init>(Lcom/duokan/TimedText;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 208
    iput-object p1, p0, Lcom/duokan/TimedText$Style;->this$0:Lcom/duokan/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput v0, p0, Lcom/duokan/TimedText$Style;->startChar:I

    .line 174
    iput v0, p0, Lcom/duokan/TimedText$Style;->endChar:I

    .line 180
    iput v0, p0, Lcom/duokan/TimedText$Style;->fontID:I

    .line 185
    iput-boolean v1, p0, Lcom/duokan/TimedText$Style;->isBold:Z

    .line 190
    iput-boolean v1, p0, Lcom/duokan/TimedText$Style;->isItalic:Z

    .line 195
    iput-boolean v1, p0, Lcom/duokan/TimedText$Style;->isUnderlined:Z

    .line 200
    iput v0, p0, Lcom/duokan/TimedText$Style;->fontSize:I

    .line 206
    iput v0, p0, Lcom/duokan/TimedText$Style;->colorRGBA:I

    .line 208
    return-void
.end method
