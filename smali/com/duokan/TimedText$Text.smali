.class public Lcom/duokan/TimedText$Text;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Text"
.end annotation


# instance fields
.field public text:[B

.field public textLen:I

.field final synthetic this$0:Lcom/duokan/TimedText;


# direct methods
.method public constructor <init>(Lcom/duokan/TimedText;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/duokan/TimedText$Text;->this$0:Lcom/duokan/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
