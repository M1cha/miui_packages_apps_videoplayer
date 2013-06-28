.class Lcom/duokan/airkan/phone/api/VideoManager$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duokan/airkan/phone/api/VideoManager;->initialQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duokan/airkan/phone/api/VideoManager;


# direct methods
.method constructor <init>(Lcom/duokan/airkan/phone/api/VideoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/duokan/airkan/phone/api/VideoManager$1;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager$1;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    const/4 v2, 0x0

    #setter for: Lcom/duokan/airkan/phone/api/VideoManager;->mInitialQueryRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/duokan/airkan/phone/api/VideoManager;->access$002(Lcom/duokan/airkan/phone/api/VideoManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 566
    iget-object v1, p0, Lcom/duokan/airkan/phone/api/VideoManager$1;->this$0:Lcom/duokan/airkan/phone/api/VideoManager;

    #calls: Lcom/duokan/airkan/phone/api/VideoManager;->initialQuery()V
    invoke-static {v1}, Lcom/duokan/airkan/phone/api/VideoManager;->access$100(Lcom/duokan/airkan/phone/api/VideoManager;)V
    :try_end_0
    .catch Lcom/duokan/airkan/common/AirkanException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Lcom/duokan/airkan/common/AirkanException;
    invoke-virtual {v0}, Lcom/duokan/airkan/common/AirkanException;->printStackTrace()V

    goto :goto_0
.end method
