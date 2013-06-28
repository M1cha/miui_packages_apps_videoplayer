.class public Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;
.super Ljava/lang/Object;
.source "ParcelReverseRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public musicControl:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;->musicControl:B

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;->musicControl:B

    .line 29
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;->musicControl:B

    .line 34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 43
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelReverseRequest;->musicControl:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    return-void
.end method
