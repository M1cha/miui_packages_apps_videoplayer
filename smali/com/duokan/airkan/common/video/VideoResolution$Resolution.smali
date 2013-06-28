.class public final enum Lcom/duokan/airkan/common/video/VideoResolution$Resolution;
.super Ljava/lang/Enum;
.source "VideoResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/common/video/VideoResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duokan/airkan/common/video/VideoResolution$Resolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

.field public static final enum AUTO_SELECT:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

.field public static final enum HIGH_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

.field public static final enum STANDARD_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

.field public static final enum SUPER_HIGH_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    const-string v1, "STANDARD_DEFINITION"

    invoke-direct {v0, v1, v2}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->STANDARD_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    .line 15
    new-instance v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    const-string v1, "HIGH_DEFINITION"

    invoke-direct {v0, v1, v3}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->HIGH_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    .line 19
    new-instance v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    const-string v1, "SUPER_HIGH_DEFINITION"

    invoke-direct {v0, v1, v4}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->SUPER_HIGH_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    .line 23
    new-instance v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    const-string v1, "AUTO_SELECT"

    invoke-direct {v0, v1, v5}, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->AUTO_SELECT:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    sget-object v1, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->STANDARD_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->HIGH_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->SUPER_HIGH_DEFINITION:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->AUTO_SELECT:Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    aput-object v1, v0, v5

    sput-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->$VALUES:[Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duokan/airkan/common/video/VideoResolution$Resolution;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    return-object v0
.end method

.method public static values()[Lcom/duokan/airkan/common/video/VideoResolution$Resolution;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->$VALUES:[Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    invoke-virtual {v0}, [Lcom/duokan/airkan/common/video/VideoResolution$Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duokan/airkan/common/video/VideoResolution$Resolution;

    return-object v0
.end method
