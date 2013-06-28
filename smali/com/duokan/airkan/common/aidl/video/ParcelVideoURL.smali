.class public Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;
.super Ljava/lang/Object;
.source "ParcelVideoURL.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public header:Ljava/lang/String;

.field public index:S

.field public resolution:B

.field public state:S

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    .line 10
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->title:Ljava/lang/String;

    .line 13
    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->index:S

    .line 14
    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->state:S

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    .line 10
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->title:Ljava/lang/String;

    .line 13
    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->index:S

    .line 14
    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->state:S

    .line 40
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/duokan/airkan/common/video/VideoURL;)V
    .locals 2
    .parameter "vu"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    .line 10
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->title:Ljava/lang/String;

    .line 13
    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->index:S

    .line 14
    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->state:S

    .line 31
    iget-byte v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->resolution:B

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    .line 32
    iget-object v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->header:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->title:Ljava/lang/String;

    .line 35
    iget-short v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->index:S

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->index:S

    .line 36
    iget-short v0, p1, Lcom/duokan/airkan/common/video/VideoURL;->state:S

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->state:S

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->title:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->index:S

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->state:S

    .line 50
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 57
    iget-byte v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->resolution:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->header:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->index:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-short v0, p0, Lcom/duokan/airkan/common/aidl/video/ParcelVideoURL;->state:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
