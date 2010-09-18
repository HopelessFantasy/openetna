.class Lcom/android/internal/telephony/gsm/GSMPhone$2;
.super Ljava/lang/Object;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$DataState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 2963
    invoke-static {}, Lcom/android/internal/telephony/Phone$DataState;->values()[Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_c5

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_c2

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_bf

    .line 682
    :goto_2a
    invoke-static {}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->values()[Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    :try_start_33
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_bd

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_bb

    :goto_49
    :try_start_49
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_b9

    .line 651
    :goto_54
    invoke-static {}, Lcom/android/internal/telephony/DataConnectionTracker$State;->values()[Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    :try_start_5d
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_68} :catch_b7

    :goto_68
    :try_start_68
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_b5

    :goto_73
    :try_start_73
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_b3

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_b1

    :goto_89
    :try_start_89
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_af

    :goto_94
    :try_start_94
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_ad

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_aa} :catch_ab

    :goto_aa
    return-void

    :catch_ab
    move-exception v0

    goto :goto_aa

    :catch_ad
    move-exception v0

    goto :goto_9f

    :catch_af
    move-exception v0

    goto :goto_94

    :catch_b1
    move-exception v0

    goto :goto_89

    :catch_b3
    move-exception v0

    goto :goto_7e

    :catch_b5
    move-exception v0

    goto :goto_73

    :catch_b7
    move-exception v0

    goto :goto_68

    .line 682
    :catch_b9
    move-exception v0

    goto :goto_54

    :catch_bb
    move-exception v0

    goto :goto_49

    :catch_bd
    move-exception v0

    goto :goto_3e

    .line 2963
    :catch_bf
    move-exception v0

    goto/16 :goto_2a

    :catch_c2
    move-exception v0

    goto/16 :goto_1f

    :catch_c5
    move-exception v0

    goto/16 :goto_14
.end method
