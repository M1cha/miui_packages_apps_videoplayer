.class public interface abstract Lcom/miui/videoplayer/framework/DuoKanConstants;
.super Ljava/lang/Object;
.source "DuoKanConstants.java"


# static fields
.field public static final BRIGHTNESS_MAX_VALUE:I = 0xf

.field public static final BRIGHTNESS_STEP:I = 0x11

.field public static final ENABLE_AIRKAN:Z = true

.field public static final ENABLE_V5_UI:Z = true

#the value of this static final field might be set in the static constructor
.field public static final IS_HK_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_INTERNATIONAL_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_MAINLAND_CHINA_VERSION:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_TW_VERSION:Z = false

.field public static final SHARED_PEREFERENCE_KEY_LAST_BRIGHTNESS:Ljava/lang/String; = "shared_pereference_key_last_brightness"

.field public static final SHARED_PEREFERENCE_KEY_ORIENTATION_SENSOR:Ljava/lang/String; = "shared_pereference_key_orientation_sensor"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lmiui/os/Build;->IS_TW_BUILD:Z

    sput-boolean v0, Lcom/miui/videoplayer/framework/DuoKanConstants;->IS_TW_VERSION:Z

    .line 24
    sget-boolean v0, Lmiui/os/Build;->IS_HK_BUILD:Z

    sput-boolean v0, Lcom/miui/videoplayer/framework/DuoKanConstants;->IS_HK_VERSION:Z

    .line 26
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/miui/videoplayer/framework/DuoKanConstants;->IS_INTERNATIONAL_VERSION:Z

    .line 27
    sget-boolean v0, Lcom/miui/videoplayer/framework/DuoKanConstants;->IS_TW_VERSION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/videoplayer/framework/DuoKanConstants;->IS_HK_VERSION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/videoplayer/framework/DuoKanConstants;->IS_INTERNATIONAL_VERSION:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/videoplayer/framework/DuoKanConstants;->IS_MAINLAND_CHINA_VERSION:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
