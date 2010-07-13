.class Lcom/android/phone/InCallScreen$22;
.super Ljava/lang/Object;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

.field static final synthetic $SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

.field static final synthetic $SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 3631
    invoke-static {}, Lcom/android/phone/InCallScreen$InCallScreenMode;->values()[Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    :try_start_9
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_159

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_156

    .line 3277
    :goto_2a
    invoke-static {}, Lcom/android/phone/InCallScreen$InCallInitStatus;->values()[Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    :try_start_33
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_153

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_150

    :goto_49
    :try_start_49
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_14d

    :goto_54
    :try_start_54
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_14a

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_147

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_144

    :goto_75
    :try_start_75
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_141

    :goto_80
    :try_start_80
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->ALREADY_EMERGENCY_SETUP:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_13e

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->FDN_BLOCKED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_13b

    .line 2262
    :goto_98
    invoke-static {}, Lcom/android/internal/telephony/Connection$PostDialState;->values()[Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    :try_start_a1
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ac} :catch_138

    :goto_ac
    :try_start_ac
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_b7} :catch_136

    :goto_b7
    :try_start_b7
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_c2} :catch_134

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_cd} :catch_132

    .line 1857
    :goto_cd
    invoke-static {}, Lcom/android/internal/telephony/Phone$SuppService;->values()[Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    :try_start_d6
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d6 .. :try_end_e1} :catch_130

    :goto_e1
    :try_start_e1
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_ec} :catch_12e

    :goto_ec
    :try_start_ec
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f7} :catch_12c

    :goto_f7
    :try_start_f7
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_102
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_102} :catch_12a

    :goto_102
    :try_start_102
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_102 .. :try_end_10d} :catch_128

    :goto_10d
    :try_start_10d
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_118} :catch_126

    :goto_118
    :try_start_118
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_123
    .catch Ljava/lang/NoSuchFieldError; {:try_start_118 .. :try_end_123} :catch_124

    :goto_123
    return-void

    :catch_124
    move-exception v0

    goto :goto_123

    :catch_126
    move-exception v0

    goto :goto_118

    :catch_128
    move-exception v0

    goto :goto_10d

    :catch_12a
    move-exception v0

    goto :goto_102

    :catch_12c
    move-exception v0

    goto :goto_f7

    :catch_12e
    move-exception v0

    goto :goto_ec

    :catch_130
    move-exception v0

    goto :goto_e1

    .line 2262
    :catch_132
    move-exception v0

    goto :goto_cd

    :catch_134
    move-exception v0

    goto :goto_c2

    :catch_136
    move-exception v0

    goto :goto_b7

    :catch_138
    move-exception v0

    goto/16 :goto_ac

    .line 3277
    :catch_13b
    move-exception v0

    goto/16 :goto_98

    :catch_13e
    move-exception v0

    goto/16 :goto_8c

    :catch_141
    move-exception v0

    goto/16 :goto_80

    :catch_144
    move-exception v0

    goto/16 :goto_75

    :catch_147
    move-exception v0

    goto/16 :goto_6a

    :catch_14a
    move-exception v0

    goto/16 :goto_5f

    :catch_14d
    move-exception v0

    goto/16 :goto_54

    :catch_150
    move-exception v0

    goto/16 :goto_49

    :catch_153
    move-exception v0

    goto/16 :goto_3e

    .line 3631
    :catch_156
    move-exception v0

    goto/16 :goto_2a

    :catch_159
    move-exception v0

    goto/16 :goto_1f

    :catch_15c
    move-exception v0

    goto/16 :goto_14
.end method
