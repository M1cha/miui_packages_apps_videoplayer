.class public Lcom/duokan/MediaPlayer$AudioTrackInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioTrackInfo"
.end annotation


# instance fields
.field private mAudioTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelected:I

.field final synthetic this$0:Lcom/duokan/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/duokan/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/duokan/MediaPlayer$AudioTrackInfo;->this$0:Lcom/duokan/MediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duokan/MediaPlayer$AudioTrackInfo;->mAudioTrackList:Ljava/util/List;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/duokan/MediaPlayer$AudioTrackInfo;->mSelected:I

    .line 81
    return-void
.end method


# virtual methods
.method public addAudioTrack(Ljava/lang/String;)V
    .locals 1
    .parameter "audio"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/duokan/MediaPlayer$AudioTrackInfo;->mAudioTrackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public getAudioTrack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/duokan/MediaPlayer$AudioTrackInfo;->mAudioTrackList:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedAudioTrack()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/duokan/MediaPlayer$AudioTrackInfo;->mSelected:I

    return v0
.end method

.method public setSelectedAudioTrack(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 88
    iput p1, p0, Lcom/duokan/MediaPlayer$AudioTrackInfo;->mSelected:I

    .line 89
    return-void
.end method
