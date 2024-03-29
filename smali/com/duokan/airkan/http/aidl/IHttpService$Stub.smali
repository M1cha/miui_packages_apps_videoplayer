.class public abstract Lcom/duokan/airkan/http/aidl/IHttpService$Stub;
.super Landroid/os/Binder;
.source "IHttpService.java"

# interfaces
.implements Lcom/duokan/airkan/http/aidl/IHttpService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/http/aidl/IHttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duokan/airkan/http/aidl/IHttpService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.duokan.airkan.http.aidl.IHttpService"

.field static final TRANSACTION_closeHttpSession:I = 0x3

.field static final TRANSACTION_formatUrl:I = 0x2

.field static final TRANSACTION_formatUrlList:I = 0x5

.field static final TRANSACTION_startHttpd:I = 0x1

.field static final TRANSACTION_stopHttpd:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.duokan.airkan.http.aidl.IHttpService"

    invoke-virtual {p0, p0, v0}, Lcom/duokan/airkan/http/aidl/IHttpService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/duokan/airkan/http/aidl/IHttpService;
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
    const-string v1, "com.duokan.airkan.http.aidl.IHttpService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/duokan/airkan/http/aidl/IHttpService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/duokan/airkan/http/aidl/IHttpService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/duokan/airkan/http/aidl/IHttpService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/duokan/airkan/http/aidl/IHttpService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.duokan.airkan.http.aidl.IHttpService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.duokan.airkan.http.aidl.IHttpService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/duokan/airkan/http/aidl/IHttpService$Stub;->startHttpd()I

    move-result v2

    .line 49
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v2           #_result:I
    :sswitch_2
    const-string v5, "com.duokan.airkan.http.aidl.IHttpService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/duokan/airkan/http/aidl/IHttpService$Stub;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.duokan.airkan.http.aidl.IHttpService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/duokan/airkan/http/aidl/IHttpService$Stub;->closeHttpSession()I

    move-result v2

    .line 67
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v2           #_result:I
    :sswitch_4
    const-string v5, "com.duokan.airkan.http.aidl.IHttpService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/duokan/airkan/http/aidl/IHttpService$Stub;->stopHttpd()I

    move-result v2

    .line 75
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v2           #_result:I
    :sswitch_5
    const-string v5, "com.duokan.airkan.http.aidl.IHttpService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 84
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/duokan/airkan/http/aidl/IHttpService$Stub;->formatUrlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 85
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
