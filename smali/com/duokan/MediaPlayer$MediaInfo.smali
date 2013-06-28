.class public Lcom/duokan/MediaPlayer$MediaInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaInfo"
.end annotation


# instance fields
.field public audioCodecId:I

.field public audioCodecName:Ljava/lang/String;

.field public audioSampleRate:I

.field public duration:I

.field final synthetic this$0:Lcom/duokan/MediaPlayer;

.field public videoCodecId:I

.field public videoCodecName:Ljava/lang/String;

.field public videoCodecProfile:Ljava/lang/String;

.field public videoFrameRate:F

.field public videoHeight:I

.field public videoWidth:I


# direct methods
.method public constructor <init>(Lcom/duokan/MediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/duokan/MediaPlayer$MediaInfo;->this$0:Lcom/duokan/MediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method
