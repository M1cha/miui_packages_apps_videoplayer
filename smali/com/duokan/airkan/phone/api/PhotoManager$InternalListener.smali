.class Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;
.super Ljava/lang/Object;
.source "PhotoManager.java"

# interfaces
.implements Lcom/duokan/airkan/phone/api/DeviceManager$IInternalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duokan/airkan/phone/api/PhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/PhotoManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/PhotoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #getter for: Lcom/duokan/airkan/phone/api/PhotoManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$000(Lcom/duokan/airkan/phone/api/PhotoManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "in onClosed from device Mangager"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/duokan/airkan/phone/api/PhotoManager$InternalListener;->this$0:Lcom/duokan/airkan/phone/api/PhotoManager;

    #calls: Lcom/duokan/airkan/phone/api/PhotoManager;->unbindPhotoSendService()V
    invoke-static {v0}, Lcom/duokan/airkan/phone/api/PhotoManager;->access$2500(Lcom/duokan/airkan/phone/api/PhotoManager;)V

    .line 684
    return-void
.end method
