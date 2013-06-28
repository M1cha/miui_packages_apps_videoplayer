.class public Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;
.super Ljava/lang/Object;
.source "AirkanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/videoplayer/framework/airkan/AirkanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirkanChangedEvent"
.end annotation


# static fields
.field public static final CODE_AIR_KAN_BACK_TO_PHONE:I = 0x1

.field public static final CODE_AIR_KAN_PLAY_STOPED:I = 0x2

.field public static final CODE_AIR_KAN_PLAY_TO_DEVICE:I


# instance fields
.field private code:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 568
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput p1, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;->code:I

    .line 570
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/miui/videoplayer/framework/airkan/AirkanManager$AirkanChangedEvent;->code:I

    return v0
.end method
