.class public Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;
.super Landroid/app/AlertDialog;
.source "NoWifiAlertDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/miui/videoplayer/dialog/NoWifiAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    return-void
.end method
