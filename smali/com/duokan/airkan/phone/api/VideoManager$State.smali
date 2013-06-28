.class public final enum Lcom/duokan/airkan/phone/api/VideoManager$State;
.super Ljava/lang/Enum;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duokan/airkan/phone/api/VideoManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duokan/airkan/phone/api/VideoManager$State;

.field public static final enum STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

.field public static final enum STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

.field public static final enum STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

.field public static final enum STATE_INITIALIZED:Lcom/duokan/airkan/phone/api/VideoManager$State;

.field public static final enum STATE_PAUSED:Lcom/duokan/airkan/phone/api/VideoManager$State;

.field public static final enum STATE_STARTED:Lcom/duokan/airkan/phone/api/VideoManager$State;

.field public static final enum STATE_STOPPED:Lcom/duokan/airkan/phone/api/VideoManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1440
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$State;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v3}, Lcom/duokan/airkan/phone/api/VideoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1444
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$State;

    const-string v1, "STATE_DATA"

    invoke-direct {v0, v1, v4}, Lcom/duokan/airkan/phone/api/VideoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1448
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$State;

    const-string v1, "STATE_INITIALIZED"

    invoke-direct {v0, v1, v5}, Lcom/duokan/airkan/phone/api/VideoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_INITIALIZED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1452
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$State;

    const-string v1, "STATE_STARTED"

    invoke-direct {v0, v1, v6}, Lcom/duokan/airkan/phone/api/VideoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STARTED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1456
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$State;

    const-string v1, "STATE_PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/duokan/airkan/phone/api/VideoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_PAUSED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1460
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$State;

    const-string v1, "STATE_STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/duokan/airkan/phone/api/VideoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STOPPED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1464
    new-instance v0, Lcom/duokan/airkan/phone/api/VideoManager$State;

    const-string v1, "STATE_EEEOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/duokan/airkan/phone/api/VideoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    .line 1436
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/duokan/airkan/phone/api/VideoManager$State;

    sget-object v1, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_IDLE:Lcom/duokan/airkan/phone/api/VideoManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_DATA:Lcom/duokan/airkan/phone/api/VideoManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_INITIALIZED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STARTED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_PAUSED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_STOPPED:Lcom/duokan/airkan/phone/api/VideoManager$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/duokan/airkan/phone/api/VideoManager$State;->STATE_EEEOR:Lcom/duokan/airkan/phone/api/VideoManager$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->$VALUES:[Lcom/duokan/airkan/phone/api/VideoManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duokan/airkan/phone/api/VideoManager$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 1436
    const-class v0, Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/phone/api/VideoManager$State;

    return-object v0
.end method

.method public static values()[Lcom/duokan/airkan/phone/api/VideoManager$State;
    .locals 1

    .prologue
    .line 1436
    sget-object v0, Lcom/duokan/airkan/phone/api/VideoManager$State;->$VALUES:[Lcom/duokan/airkan/phone/api/VideoManager$State;

    invoke-virtual {v0}, [Lcom/duokan/airkan/phone/api/VideoManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duokan/airkan/phone/api/VideoManager$State;

    return-object v0
.end method
