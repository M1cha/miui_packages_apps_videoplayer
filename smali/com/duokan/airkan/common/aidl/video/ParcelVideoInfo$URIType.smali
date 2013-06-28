.class public final enum Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;
.super Ljava/lang/Enum;
.source "ParcelVideoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "URIType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

.field public static final enum URITYPE_DKID:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

.field public static final enum URITYPE_SP:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

.field public static final enum URITYPE_UNKNOWN:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

.field public static final enum URITYPE_URL:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

.field public static final enum URITYPE_VIDEOID:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    const-string v1, "URITYPE_URL"

    invoke-direct {v0, v1, v2}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_URL:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    .line 202
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    const-string v1, "URITYPE_VIDEOID"

    invoke-direct {v0, v1, v3}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_VIDEOID:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    .line 206
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    const-string v1, "URITYPE_SP"

    invoke-direct {v0, v1, v4}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_SP:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    .line 210
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    const-string v1, "URITYPE_DKID"

    invoke-direct {v0, v1, v5}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_DKID:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    .line 214
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    const-string v1, "URITYPE_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_UNKNOWN:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    .line 194
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    sget-object v1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_URL:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_VIDEOID:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_SP:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_DKID:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->URITYPE_UNKNOWN:Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->$VALUES:[Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

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
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;
    .locals 1
    .parameter "name"

    .prologue
    .line 194
    const-class v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    return-object v0
.end method

.method public static values()[Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->$VALUES:[Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    invoke-virtual {v0}, [Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duokan/airkan/common/aidl/video/ParcelVideoInfo$URIType;

    return-object v0
.end method
