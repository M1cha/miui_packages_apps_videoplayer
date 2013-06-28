.class public Lcom/duokan/airkan/common/aidl/ParcelService;
.super Ljava/lang/Object;
.source "ParcelService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duokan/airkan/common/aidl/ParcelService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:Ljava/lang/String;

.field public extraText:Ljava/lang/String;

.field public ip:[Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public port:I

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/duokan/airkan/common/aidl/ParcelService$1;

    invoke-direct {v0}, Lcom/duokan/airkan/common/aidl/ParcelService$1;-><init>()V

    sput-object v0, Lcom/duokan/airkan/common/aidl/ParcelService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->extraText:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->action:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->extraText:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->action:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/ParcelService;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/duokan/airkan/common/aidl/ParcelService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/duokan/airkan/common/aidl/ParcelService;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->name:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->type:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->port:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->extraText:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 43
    .local v0, len:I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->action:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    iget-object v1, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->extraText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->ip:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/duokan/airkan/common/aidl/ParcelService;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return-void
.end method
