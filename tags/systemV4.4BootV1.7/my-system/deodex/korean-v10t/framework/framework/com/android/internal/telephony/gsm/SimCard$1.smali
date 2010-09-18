.class Lcom/android/internal/telephony/gsm/SimCard$1;
.super Ljava/lang/Object;
.source "SimCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SimCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 202
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->values()[Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_ABSENT:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_fa

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_f7

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_READY:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_f4

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PIN:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_f1

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PUK:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_ee

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_NETWORK_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_eb

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_CARD_IO_ERROR:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_e8

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_NETWORK_SUBSET_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_e5

    :goto_62
    :try_start_62
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_CORPORATE_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_e3

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_SERVICE_PROVIDER_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_e1

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_SIM_PERSONALIZATION:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_df

    :goto_86
    :try_start_86
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$IccStatus:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ICC_PREM_BLOCKED:Lcom/android/internal/telephony/CommandsInterface$IccStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$IccStatus;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_dd

    .line 181
    :goto_92
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    :try_start_9b
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a6} :catch_db

    :goto_a6
    :try_start_a6
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_b1} :catch_d9

    :goto_b1
    :try_start_b1
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bc} :catch_d7

    :goto_bc
    :try_start_bc
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c7} :catch_d5

    :goto_c7
    :try_start_c7
    sget-object v0, Lcom/android/internal/telephony/gsm/SimCard$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d2} :catch_d3

    :goto_d2
    return-void

    :catch_d3
    move-exception v0

    goto :goto_d2

    :catch_d5
    move-exception v0

    goto :goto_c7

    :catch_d7
    move-exception v0

    goto :goto_bc

    :catch_d9
    move-exception v0

    goto :goto_b1

    :catch_db
    move-exception v0

    goto :goto_a6

    .line 202
    :catch_dd
    move-exception v0

    goto :goto_92

    :catch_df
    move-exception v0

    goto :goto_86

    :catch_e1
    move-exception v0

    goto :goto_7a

    :catch_e3
    move-exception v0

    goto :goto_6e

    :catch_e5
    move-exception v0

    goto/16 :goto_62

    :catch_e8
    move-exception v0

    goto/16 :goto_56

    :catch_eb
    move-exception v0

    goto/16 :goto_4b

    :catch_ee
    move-exception v0

    goto/16 :goto_40

    :catch_f1
    move-exception v0

    goto/16 :goto_35

    :catch_f4
    move-exception v0

    goto/16 :goto_2a

    :catch_f7
    move-exception v0

    goto/16 :goto_1f

    :catch_fa
    move-exception v0

    goto/16 :goto_14
.end method
