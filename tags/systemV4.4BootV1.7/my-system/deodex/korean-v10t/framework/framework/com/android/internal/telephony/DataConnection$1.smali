.class Lcom/android/internal/telephony/DataConnection$1;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnection$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 123
    invoke-static {}, Lcom/android/internal/telephony/DataConnection$FailCause;->values()[Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_129

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_126

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_123

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_120

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_11d

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_11a

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_117

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_114

    :goto_62
    :try_start_62
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_111

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_10e

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_10b

    :goto_86
    :try_start_86
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_109

    :goto_92
    :try_start_92
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_107

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_105

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_103

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_101

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$FailCause:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_ff

    .line 41
    :goto_ce
    invoke-static {}, Lcom/android/internal/telephony/DataConnection$State;->values()[Lcom/android/internal/telephony/DataConnection$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    :try_start_d7
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e2} :catch_fd

    :goto_e2
    :try_start_e2
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ed} :catch_fb

    :goto_ed
    :try_start_ed
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->INACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f8} :catch_f9

    :goto_f8
    return-void

    :catch_f9
    move-exception v0

    goto :goto_f8

    :catch_fb
    move-exception v0

    goto :goto_ed

    :catch_fd
    move-exception v0

    goto :goto_e2

    .line 123
    :catch_ff
    move-exception v0

    goto :goto_ce

    :catch_101
    move-exception v0

    goto :goto_c2

    :catch_103
    move-exception v0

    goto :goto_b6

    :catch_105
    move-exception v0

    goto :goto_aa

    :catch_107
    move-exception v0

    goto :goto_9e

    :catch_109
    move-exception v0

    goto :goto_92

    :catch_10b
    move-exception v0

    goto/16 :goto_86

    :catch_10e
    move-exception v0

    goto/16 :goto_7a

    :catch_111
    move-exception v0

    goto/16 :goto_6e

    :catch_114
    move-exception v0

    goto/16 :goto_62

    :catch_117
    move-exception v0

    goto/16 :goto_56

    :catch_11a
    move-exception v0

    goto/16 :goto_4b

    :catch_11d
    move-exception v0

    goto/16 :goto_40

    :catch_120
    move-exception v0

    goto/16 :goto_35

    :catch_123
    move-exception v0

    goto/16 :goto_2a

    :catch_126
    move-exception v0

    goto/16 :goto_1f

    :catch_129
    move-exception v0

    goto/16 :goto_14
.end method
