.class public Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
.super Ljava/lang/Object;
.source "ParcelDeviceData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/ParcelDeviceData;",
            ">;"
        }
    .end annotation
.end field

.field public static final KDeviceAirKan:I = 0x1

.field public static final KDeviceBTSpeaker:I = 0x2

.field public static parcelVersion:I


# instance fields
.field public extraText:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public platformID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->parcelVersion:I

    .line 21
    new-instance v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    .line 65
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->readFromParcel(Landroid/os/Parcel;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/ParcelDeviceData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/aidl/ParcelDeviceData;)V
    .locals 1
    .parameter "pdd"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    .line 58
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 62
    iget v0, p1, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    iput v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aName"
    .parameter "aType"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    .line 38
    iput-object p1, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aName"
    .parameter "aType"
    .parameter "aIp"
    .parameter "aText"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    .line 43
    iput-object p1, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "aName"
    .parameter "aType"
    .parameter "aIp"
    .parameter "aText"
    .parameter "pID"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    .line 50
    iput-object p1, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 54
    iput p5, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    .line 75
    sget v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->parcelVersion:I

    if-gez v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 77
    sput v2, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->parcelVersion:I

    .line 83
    :cond_0
    :goto_0
    sget v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->parcelVersion:I

    if-ne v0, v2, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    .line 86
    :cond_1
    return-void

    .line 79
    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->parcelVersion:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->extraText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;->platformID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
