.class Lcom/android/internal/telephony/gsm/stk/StkService$1;
.super Ljava/lang/Object;
.source "StkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/StkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 628
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->values()[Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_1c9

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1c6

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1c3

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1c0

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_ADDITIONAL_EFS_READ:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_1bd

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_1ba

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_MODIFIED_BY_NAA:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_1b7

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_LIMITED_SERVICE:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_1b4

    :goto_62
    :try_start_62
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_1b1

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_NAA_NOT_ACTIVE:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_1ae

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_TONE_NOT_PLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_1ab

    :goto_86
    :try_start_86
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_1a8

    :goto_92
    :try_start_92
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_1a5

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_1a2

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_19f

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_19c

    .line 248
    :goto_c2
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    :try_start_cb
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cb .. :try_end_d6} :catch_199

    :goto_d6
    :try_start_d6
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_e1} :catch_196

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ec} :catch_193

    :goto_ec
    :try_start_ec
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f7} :catch_190

    :goto_f7
    :try_start_f7
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_102
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_102} :catch_18d

    :goto_102
    :try_start_102
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_10d} :catch_18b

    :goto_10d
    :try_start_10d
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_118} :catch_189

    :goto_118
    :try_start_118
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_124} :catch_187

    :goto_124
    :try_start_124
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_130
    .catch Ljava/lang/NoSuchFieldError; {:try_start_124 .. :try_end_130} :catch_185

    :goto_130
    :try_start_130
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_13c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_130 .. :try_end_13c} :catch_183

    :goto_13c
    :try_start_13c
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_148
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13c .. :try_end_148} :catch_181

    :goto_148
    :try_start_148
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_154
    .catch Ljava/lang/NoSuchFieldError; {:try_start_148 .. :try_end_154} :catch_17f

    :goto_154
    :try_start_154
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_160
    .catch Ljava/lang/NoSuchFieldError; {:try_start_154 .. :try_end_160} :catch_17d

    :goto_160
    :try_start_160
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_16c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_160 .. :try_end_16c} :catch_17b

    :goto_16c
    :try_start_16c
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16c .. :try_end_178} :catch_179

    :goto_178
    return-void

    :catch_179
    move-exception v0

    goto :goto_178

    :catch_17b
    move-exception v0

    goto :goto_16c

    :catch_17d
    move-exception v0

    goto :goto_160

    :catch_17f
    move-exception v0

    goto :goto_154

    :catch_181
    move-exception v0

    goto :goto_148

    :catch_183
    move-exception v0

    goto :goto_13c

    :catch_185
    move-exception v0

    goto :goto_130

    :catch_187
    move-exception v0

    goto :goto_124

    :catch_189
    move-exception v0

    goto :goto_118

    :catch_18b
    move-exception v0

    goto :goto_10d

    :catch_18d
    move-exception v0

    goto/16 :goto_102

    :catch_190
    move-exception v0

    goto/16 :goto_f7

    :catch_193
    move-exception v0

    goto/16 :goto_ec

    :catch_196
    move-exception v0

    goto/16 :goto_e1

    :catch_199
    move-exception v0

    goto/16 :goto_d6

    .line 628
    :catch_19c
    move-exception v0

    goto/16 :goto_c2

    :catch_19f
    move-exception v0

    goto/16 :goto_b6

    :catch_1a2
    move-exception v0

    goto/16 :goto_aa

    :catch_1a5
    move-exception v0

    goto/16 :goto_9e

    :catch_1a8
    move-exception v0

    goto/16 :goto_92

    :catch_1ab
    move-exception v0

    goto/16 :goto_86

    :catch_1ae
    move-exception v0

    goto/16 :goto_7a

    :catch_1b1
    move-exception v0

    goto/16 :goto_6e

    :catch_1b4
    move-exception v0

    goto/16 :goto_62

    :catch_1b7
    move-exception v0

    goto/16 :goto_56

    :catch_1ba
    move-exception v0

    goto/16 :goto_4b

    :catch_1bd
    move-exception v0

    goto/16 :goto_40

    :catch_1c0
    move-exception v0

    goto/16 :goto_35

    :catch_1c3
    move-exception v0

    goto/16 :goto_2a

    :catch_1c6
    move-exception v0

    goto/16 :goto_1f

    :catch_1c9
    move-exception v0

    goto/16 :goto_14
.end method
