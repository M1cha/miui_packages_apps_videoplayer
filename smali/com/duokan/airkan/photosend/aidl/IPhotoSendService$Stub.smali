.class public abstract Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;
.super Landroid/os/Binder;
.source "IPhotoSendService.java"

# interfaces
.implements Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.duokan.airkan.photosend.aidl.IPhotoSendService"

.field static final TRANSACTION_MultiBlockDataInfo:I = 0x8

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_removeCallback:I = 0x3

.field static final TRANSACTION_sendPhoto:I = 0x5

.field static final TRANSACTION_sendPhotoData:I = 0x6

.field static final TRANSACTION_sendPhotoDataM:I = 0x7

.field static final TRANSACTION_startPhotoSend:I = 0x1

.field static final TRANSACTION_stopPhotoSend:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-virtual {p0, p0, v0}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;
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
    const-string v1, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 42
    :sswitch_0
    const-string v0, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 56
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;->startPhotoSend(Ljava/lang/String;III)I

    move-result v8

    .line 57
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v8           #_result:I
    :sswitch_2
    const-string v0, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;

    move-result-object v1

    .line 66
    .local v1, _arg0:Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;->registerCallback(Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v1           #_arg0:Lcom/duokan/airkan/photosend/aidl/IPhotoSendServiceCallback;
    :sswitch_3
    const-string v0, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;->removeCallback()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    :sswitch_4
    const-string v0, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;->stopPhotoSend()I

    move-result v8

    .line 81
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v8           #_result:I
    :sswitch_5
    const-string v10, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 95
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    move v4, v9

    .line 97
    .local v4, _arg3:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v5, v9

    .local v5, _arg4:Z
    :goto_2
    move-object v0, p0

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;->sendPhoto(Ljava/lang/String;IIZZ)I

    move-result v8

    .line 99
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v8           #_result:I
    :cond_0
    move v4, v0

    .line 95
    goto :goto_1

    .restart local v4       #_arg3:Z
    :cond_1
    move v5, v0

    .line 97
    goto :goto_2

    .line 105
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    :sswitch_6
    const-string v10, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 111
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 113
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    move v5, v9

    .line 117
    .restart local v5       #_arg4:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v6, v9

    .local v6, _arg5:Z
    :goto_4
    move-object v0, p0

    .line 118
    invoke-virtual/range {v0 .. v6}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;->sendPhotoData(Ljava/lang/String;[BIIZZ)I

    move-result v8

    .line 119
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Z
    .end local v8           #_result:I
    :cond_2
    move v5, v0

    .line 115
    goto :goto_3

    .restart local v5       #_arg4:Z
    :cond_3
    move v6, v0

    .line 117
    goto :goto_4

    .line 125
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    :sswitch_7
    const-string v0, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 129
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 132
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;->sendPhotoDataM([BII)I

    move-result v8

    .line 133
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v8           #_result:I
    :sswitch_8
    const-string v10, "com.duokan.airkan.photosend.aidl.IPhotoSendService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 149
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 151
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    move v6, v9

    .line 153
    .restart local v6       #_arg5:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    move v7, v9

    .local v7, _arg6:Z
    :goto_6
    move-object v0, p0

    .line 154
    invoke-virtual/range {v0 .. v7}, Lcom/duokan/airkan/photosend/aidl/IPhotoSendService$Stub;->MultiBlockDataInfo(Ljava/lang/String;IIIIZZ)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v6           #_arg5:Z
    .end local v7           #_arg6:Z
    :cond_4
    move v6, v0

    .line 151
    goto :goto_5

    .restart local v6       #_arg5:Z
    :cond_5
    move v7, v0

    .line 153
    goto :goto_6

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
