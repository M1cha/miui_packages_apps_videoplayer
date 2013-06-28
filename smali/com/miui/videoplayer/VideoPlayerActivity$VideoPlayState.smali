.class Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoPlayState"
.end annotation


# instance fields
.field isActivityFinish:Z

.field paused:Z

.field position:I

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->isActivityFinish:Z

    .line 300
    iput v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->position:I

    .line 301
    iput-boolean v1, p0, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->paused:Z

    .line 302
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/videoplayer/VideoPlayerActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/miui/videoplayer/VideoPlayerActivity$VideoPlayState;-><init>()V

    return-void
.end method
