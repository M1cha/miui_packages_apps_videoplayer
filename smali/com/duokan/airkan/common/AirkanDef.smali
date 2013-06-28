.class public Lcom/duokan/airkan/common/AirkanDef;
.super Ljava/lang/Object;
.source "AirkanDef.java"


# static fields
.field public static final AIRKAN_AUTH_FAIL:B = 0x5t

.field public static final AIRKAN_AUTH_SUCCESS:B = 0x4t

.field public static final AIRKAN_HDR_LEN:S = 0x3s

.field public static final AIRKAN_MAX_LEN:S = 0x5dcs

.field public static final AIRKAN_MSG_TYPE_AUTH:B = 0x1t

.field public static final AIRKAN_MSG_TYPE_HEARTBEAT:B = 0x2t

.field public static final AIRKAN_MSG_TYPE_LOCAL:B = -0x2t

.field public static final AIRKAN_MSG_TYPE_PHOTOCTRL:B = 0x9t

.field public static final AIRKAN_MSG_TYPE_PLAYCTRL:B = 0x3t

.field public static final AIRKAN_MSG_TYPE_RELEASE:B = 0x4t

.field public static final AIRKAN_MSG_TYPE_VERSION:B = 0xat

.field public static final LOCALCMD_CODE_CLOSE:B = 0x3t

.field public static final LOCALCMD_CODE_DISCONNECTED:B = 0x2t

.field public static final LOCALCMD_CODE_DISCONNECTED_POST:B = 0x4t

.field public static final LOCALCMD_CODE_SETNAME:B = 0x1t

.field public static final LOCALCMD_HDR_LEN:S = 0x7s

.field public static final PHOTOCTRL_CHECK_AVAILABILITY:B = 0x2t

.field public static final PHOTOCTRL_CHECK_AVAILABILITY_HANDLE:B = 0x4t

.field public static final PHOTOCTRL_CODE_CLEAN_LIST:B = 0x5t

.field public static final PHOTOCTRL_CODE_CLOSE:B = 0x9t

.field public static final PHOTOCTRL_CODE_MAX:B = 0xat

.field public static final PHOTOCTRL_CODE_OFFER:B = 0x2t

.field public static final PHOTOCTRL_CODE_PULL:B = 0xat

.field public static final PHOTOCTRL_CODE_PUSH_LIST:B = 0x3t

.field public static final PHOTOCTRL_CODE_QUERY:B = 0x7t

.field public static final PHOTOCTRL_CODE_QUERY_RESULT:B = 0x8t

.field public static final PHOTOCTRL_CODE_REQ:B = 0x1t

.field public static final PHOTOCTRL_CODE_RES:B = 0x6t

.field public static final PHOTOCTRL_CODE_SHOW:B = 0x4t

.field public static final PHOTOCTRL_HDR_LEN:S = 0x7s

.field public static final PHOTOCTRL_QUERY_HANDLE_ERROR:B = 0x2t

.field public static final PHOTOCTRL_QUERY_HANDLE_HAS_FILE:B = 0x0t

.field public static final PHOTOCTRL_QUERY_HANDLE_NO_FILE:B = 0x1t

.field public static final PHOTOCTRL_QUERY_SHOW:B = 0x1t

.field public static final PHOTOCTRL_QUERY_SLIDERTYPE:B = 0x3t

.field public static final PHOTOCTRL_RES_ERROR:B = 0x1t

.field public static final PHOTOCTRL_RES_NO_FILE:B = 0x2t

.field public static final PHOTOCTRL_RES_SUCCESS:B = 0x0t

.field public static final PHOTOCTRL_SHOW_MANUAL:B = 0x1t

.field public static final PHOTOCTRL_SHOW_SLIDER:B = 0x2t

.field public static final PHOTOCTRL_SHOW_TYPE_CHANGED:B = 0x1t

.field public static final PHOTOCTRL_SHOW_TYPE_NOT_CHANGED:B = 0x2t

.field public static final PHOTOCTRL_TYPE_DEVICENAME:B = 0xdt

.field public static final PHOTOCTRL_TYPE_HANDLE:B = 0xat

.field public static final PHOTOCTRL_TYPE_IP:B = 0xet

.field public static final PHOTOCTRL_TYPE_PORT:B = 0x1t

.field public static final PHOTOCTRL_TYPE_SCREEN_HEIGHT:B = 0x3t

.field public static final PHOTOCTRL_TYPE_SCREEN_WIDTH:B = 0x2t

.field public static final PHOTOCTRL_TYPE_SSTID:B = 0xct

.field public static final PHOTOCTRL_TYPE_TITLE:B = 0xbt

.field public static final PLAYCTRL_CODE_INFORM:B = 0xft

.field public static final PLAYCTRL_CODE_MAX:B = 0x10t

.field public static final PLAYCTRL_CODE_MULTI_PARA_URLS:B = 0xbt

.field public static final PLAYCTRL_CODE_MUSIC_PLAY:B = 0x10t

.field public static final PLAYCTRL_CODE_PAUSE:B = 0x3t

.field public static final PLAYCTRL_CODE_PLAY:B = 0x1t

.field public static final PLAYCTRL_CODE_QUERY:B = 0x7t

.field public static final PLAYCTRL_CODE_QUERY_RESULT:B = 0x8t

.field public static final PLAYCTRL_CODE_RESP:B = 0x6t

.field public static final PLAYCTRL_CODE_RESUME:B = 0x4t

.field public static final PLAYCTRL_CODE_REV_REQ:B = 0x9t

.field public static final PLAYCTRL_CODE_REV_REQ_ACK:B = 0xat

.field public static final PLAYCTRL_CODE_SEEK:B = 0x5t

.field public static final PLAYCTRL_CODE_SET_PREFER_SOURCE:B = 0xdt

.field public static final PLAYCTRL_CODE_SET_RESOLUTION:B = 0xct

.field public static final PLAYCTRL_CODE_SET_VOLUME:B = 0xet

.field public static final PLAYCTRL_CODE_STOP:B = 0x2t

.field public static final PLAYCTRL_HDR_LEN:S = 0x7s

.field public static final PLAYCTRL_RES_ERROR:B = 0x1t

.field public static final PLAYCTRL_RES_INVALIDPOS:B = 0x3t

.field public static final PLAYCTRL_RES_INVALIDURL:B = 0x2t

.field public static final PLAYCTRL_RES_NOPERMISSION:B = 0x4t

.field public static final PLAYCTRL_RES_SUCCESS:B = 0x0t

.field public static final PLAYCTRL_REV_REQ_MUSICCONTROL:B = 0x2t

.field public static final PLAYCTRL_REV_REQ_RESOLUTION:B = 0x1t

.field public static final PLAYCTRL_TYPEINT_LEN:S = 0x5s

.field public static final PLAYCTRL_TYPE_CI:B = 0xbt

.field public static final PLAYCTRL_TYPE_DEVICENAME:B = 0xet

.field public static final PLAYCTRL_TYPE_DUOKAN_VIDEO_INFO:B = 0x6t

.field public static final PLAYCTRL_TYPE_LENGTH:B = 0x1t

.field public static final PLAYCTRL_TYPE_MEDIAID:B = 0xat

.field public static final PLAYCTRL_TYPE_MUSIC_EDIT:B = 0x11t

.field public static final PLAYCTRL_TYPE_MUSIC_METADATA:B = 0x12t

.field public static final PLAYCTRL_TYPE_MUSIC_PLAY_ORDER:B = 0x10t

.field public static final PLAYCTRL_TYPE_MUSIC_PLAY_TYPE:B = 0xft

.field public static final PLAYCTRL_TYPE_PLAYSTATUS:B = 0x7t

.field public static final PLAYCTRL_TYPE_POSITION:B = 0x2t

.field public static final PLAYCTRL_TYPE_RESOLUTION:B = 0x8t

.field public static final PLAYCTRL_TYPE_RES_URLS:B = 0x5t

.field public static final PLAYCTRL_TYPE_SOURCE:B = 0x9t

.field public static final PLAYCTRL_TYPE_SP_PARAMETERS:B = 0xdt

.field public static final PLAYCTRL_TYPE_TITLE:B = 0x4t

.field public static final PLAYCTRL_TYPE_URL:B = 0x3t

.field public static final PLAYCTRL_TYPE_VOLUME:B = 0xct

.field public static final RELEASE_CODE_PHOTO:B = 0x2t

.field public static final RELEASE_CODE_VIDEO:B = 0x1t

.field public static final VERSION_CODE_RES:B = 0x2t

.field public static final VERSION_CODE_VER:B = 0x1t

.field public static final VERSION_TYPE_RES:B = 0x3t

.field public static final VERSION_TYPE_TEXT:B = 0x2t

.field public static final VERSION_TYPE_VER:B = 0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
