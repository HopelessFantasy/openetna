.class public final enum Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;
.super Ljava/lang/Enum;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/FMRxAPI/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FmRxEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_CFG_RECEIVER:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_DISABLE_RECEIVER:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_ENABLE_RECEIVER:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_GET_SIGNAL_THRESHOLD:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_MUTE_MODE_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_PWR_MODE_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RADIO_STATION_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RADIO_TUNE_STATUS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RDS_AF_INFO:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RDS_GROUP_DATA:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RDS_GROUP_OPTIONS_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RDS_LOCK_STATUS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RDS_PI_MATCH_AVAILABLE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RDS_PI_MATCH_REG_DONE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RDS_PROC_REG_DONE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RDS_PS_INFO:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_RDS_RT_INFO:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_SEARCH_CANCELLED:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_SEARCH_COMPLETE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_SEARCH_IN_PROGRESS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_SEARCH_LIST_COMPLETE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_SEARCH_LIST_IN_PROGRESS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_SEARCH_RDS_COMPLETE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_SEARCH_RDS_IN_PROGRESS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_SERVICE_AVAILABLE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_SET_SIGNAL_THRESHOLD:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_STATION_PARAMETERS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_STEREO_MODE_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

.field public static final enum FM_RX_EV_STEREO_STATUS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_ENABLE_RECEIVER"

    invoke-direct {v0, v1, v3}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_ENABLE_RECEIVER:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 196
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_DISABLE_RECEIVER"

    invoke-direct {v0, v1, v4}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_DISABLE_RECEIVER:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 197
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_CFG_RECEIVER"

    invoke-direct {v0, v1, v5}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_CFG_RECEIVER:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 198
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_MUTE_MODE_SET"

    invoke-direct {v0, v1, v6}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_MUTE_MODE_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 199
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_STEREO_MODE_SET"

    invoke-direct {v0, v1, v7}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_STEREO_MODE_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 200
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RADIO_STATION_SET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RADIO_STATION_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 201
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_PWR_MODE_SET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_PWR_MODE_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 202
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_SET_SIGNAL_THRESHOLD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SET_SIGNAL_THRESHOLD:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 203
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RADIO_TUNE_STATUS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RADIO_TUNE_STATUS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 204
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_STATION_PARAMETERS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_STATION_PARAMETERS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 205
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RDS_LOCK_STATUS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_LOCK_STATUS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 206
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_STEREO_STATUS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_STEREO_STATUS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 207
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_SERVICE_AVAILABLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SERVICE_AVAILABLE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 208
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_GET_SIGNAL_THRESHOLD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_GET_SIGNAL_THRESHOLD:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 209
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_SEARCH_IN_PROGRESS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_IN_PROGRESS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 210
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_SEARCH_RDS_IN_PROGRESS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_RDS_IN_PROGRESS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 211
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_SEARCH_LIST_IN_PROGRESS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_LIST_IN_PROGRESS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 212
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_SEARCH_COMPLETE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_COMPLETE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 213
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_SEARCH_RDS_COMPLETE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_RDS_COMPLETE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 214
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_SEARCH_LIST_COMPLETE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_LIST_COMPLETE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 215
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_SEARCH_CANCELLED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_CANCELLED:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 216
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RDS_GROUP_DATA"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_GROUP_DATA:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 217
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RDS_PS_INFO"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_PS_INFO:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 218
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RDS_RT_INFO"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_RT_INFO:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 219
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RDS_AF_INFO"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_AF_INFO:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 220
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RDS_PI_MATCH_AVAILABLE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_PI_MATCH_AVAILABLE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 221
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RDS_GROUP_OPTIONS_SET"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_GROUP_OPTIONS_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 222
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RDS_PROC_REG_DONE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_PROC_REG_DONE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 223
    new-instance v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    const-string v1, "FM_RX_EV_RDS_PI_MATCH_REG_DONE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_PI_MATCH_REG_DONE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    .line 194
    const/16 v0, 0x1d

    new-array v0, v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_ENABLE_RECEIVER:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_DISABLE_RECEIVER:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_CFG_RECEIVER:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_MUTE_MODE_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_STEREO_MODE_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RADIO_STATION_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_PWR_MODE_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SET_SIGNAL_THRESHOLD:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RADIO_TUNE_STATUS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_STATION_PARAMETERS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_LOCK_STATUS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_STEREO_STATUS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SERVICE_AVAILABLE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_GET_SIGNAL_THRESHOLD:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_IN_PROGRESS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_RDS_IN_PROGRESS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_LIST_IN_PROGRESS:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_COMPLETE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_RDS_COMPLETE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_LIST_COMPLETE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_SEARCH_CANCELLED:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_GROUP_DATA:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_PS_INFO:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_RT_INFO:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_AF_INFO:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_PI_MATCH_AVAILABLE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_GROUP_OPTIONS_SET:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_PROC_REG_DONE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->FM_RX_EV_RDS_PI_MATCH_REG_DONE:Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;
    .registers 2
    .parameter "name"

    .prologue
    .line 194
    const-class v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    return-object p0
.end method

.method public static final values()[Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;
    .registers 1

    .prologue
    .line 194
    sget-object v0, Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->$VALUES:[Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    invoke-virtual {v0}, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/FMRxAPI/FmReceiver$FmRxEventType;

    return-object v0
.end method
