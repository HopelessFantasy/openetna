.class public final enum Lcom/android/internal/telephony/DataConnection$FailCause;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$FailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum MISSING_UKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "OPERATOR_BARRED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "INSUFFICIENT_RESOURCES"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "MISSING_UKNOWN_APN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "UNKNOWN_PDP_ADDRESS"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "USER_AUTHENTICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "ACTIVATION_REJECT_GGSN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "ACTIVATION_REJECT_UNSPECIFIED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "NSAPI_IN_USE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "PROTOCOL_ERRORS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "REGISTRATION_FAIL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "GPRS_REGISTRATION_FAIL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "RADIO_NOT_AVAILABLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    const-string v1, "RADIO_ERROR_RETRY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$FailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 65
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnection$FailCause;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnection$FailCause;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 2
    .parameter "name"

    .prologue
    .line 65
    const-class v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object p0
.end method

.method public static final values()[Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$FailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method


# virtual methods
.method public isEventLoggable()Z
    .registers 2

    .prologue
    .line 112
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p0, v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public isPermanentFail()Z
    .registers 2

    .prologue
    .line 90
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_20

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p0, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isPermanentFail2()Z
    .registers 2

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p0, v0, :cond_18

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 123
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 159
    const-string v0, "Unknown Data Error"

    :goto_d
    return-object v0

    .line 125
    :pswitch_e
    const-string v0, "No Error"

    goto :goto_d

    .line 127
    :pswitch_11
    const-string v0, "Operator Barred"

    goto :goto_d

    .line 129
    :pswitch_14
    const-string v0, "Insufficient Resources"

    goto :goto_d

    .line 131
    :pswitch_17
    const-string v0, "Missing / Unknown APN"

    goto :goto_d

    .line 133
    :pswitch_1a
    const-string v0, "Unknown PDP Address"

    goto :goto_d

    .line 135
    :pswitch_1d
    const-string v0, "Error User Autentication"

    goto :goto_d

    .line 137
    :pswitch_20
    const-string v0, "Activation Reject GGSN"

    goto :goto_d

    .line 139
    :pswitch_23
    const-string v0, "Activation Reject unspecified"

    goto :goto_d

    .line 141
    :pswitch_26
    const-string v0, "Data Not Supported"

    goto :goto_d

    .line 143
    :pswitch_29
    const-string v0, "Data Not subscribed"

    goto :goto_d

    .line 145
    :pswitch_2c
    const-string v0, "Data Services Out of Order"

    goto :goto_d

    .line 147
    :pswitch_2f
    const-string v0, "NSAPI in use"

    goto :goto_d

    .line 149
    :pswitch_32
    const-string v0, "Protocol Errors"

    goto :goto_d

    .line 151
    :pswitch_35
    const-string v0, "Network Registration Failure"

    goto :goto_d

    .line 153
    :pswitch_38
    const-string v0, "Data Network Registration Failure"

    goto :goto_d

    .line 155
    :pswitch_3b
    const-string v0, "Radio Not Available"

    goto :goto_d

    .line 157
    :pswitch_3e
    const-string v0, "Transient Radio Rrror"

    goto :goto_d

    .line 123
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method
