.class public abstract Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IPhotoServiceCallback.java"

# interfaces
.implements Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

.field static final TRANSACTION_onAuthReqResponse:I = 0x1

.field static final TRANSACTION_onDisconnected:I = 0x6

.field static final TRANSACTION_onPhotoControlResponse:I = 0x3

.field static final TRANSACTION_onPhotoOffer:I = 0x2

.field static final TRANSACTION_onPhotoPull:I = 0x5

.field static final TRANSACTION_onPhotoQueryResult:I = 0x4

.field static final TRANSACTION_onReleased:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;->onAuthReqResponse(II)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_2
    const-string v5, "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    sget-object v5, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;

    .line 68
    .local v1, _arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;->onPhotoOffer(ILcom/duokan/airkan/common/aidl/photo/ParcelOfferData;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v1           #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;
    goto :goto_1

    .line 74
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelOfferData;
    :sswitch_3
    const-string v5, "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 80
    .local v1, _arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;->onPhotoControlResponse(IBILjava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:I
    .end local v1           #_arg1:B
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    sget-object v5, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;

    .line 100
    .local v1, _arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    :goto_2
    sget-object v5, Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;

    .line 101
    .local v2, _arg2:[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;
    invoke-virtual {p0, v0, v1, v2}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;->onPhotoQueryResult(ILcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    .end local v1           #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    .end local v2           #_arg2:[Lcom/duokan/airkan/common/aidl/photo/ParcelSliderType;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    goto :goto_2

    .line 107
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/duokan/airkan/common/aidl/photo/ParcelPhotoQueryData;
    :sswitch_5
    const-string v5, "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 110
    .local v0, _arg0:[I
    invoke-virtual {p0, v0}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;->onPhotoPull([I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    .end local v0           #_arg0:[I
    :sswitch_6
    const-string v5, "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;->onDisconnected()V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 123
    :sswitch_7
    const-string v5, "com.duokan.airkan.phone.aidl.IPhotoServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/duokan/airkan/phone/aidl/IPhotoServiceCallback$Stub;->onReleased()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
