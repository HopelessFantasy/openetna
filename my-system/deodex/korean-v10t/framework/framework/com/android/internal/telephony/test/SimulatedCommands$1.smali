.class Lcom/android/internal/telephony/test/SimulatedCommands$1;
.super Ljava/lang/Object;
.source "SimulatedCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/test/SimulatedCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$test$SimulatedCommands$SimLockState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 124
    invoke-static {}, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->values()[Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$1;->$SwitchMap$com$android$internal$telephony$test$SimulatedCommands$SimLockState:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$1;->$SwitchMap$com$android$internal$telephony$test$SimulatedCommands$SimLockState:[I

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PIN:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_45

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$1;->$SwitchMap$com$android$internal$telephony$test$SimulatedCommands$SimLockState:[I

    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->REQUIRE_PUK:Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/test/SimulatedCommands$SimLockState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_43

    .line 108
    :goto_1f
    invoke-static {}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    :try_start_28
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_41

    :goto_33
    :try_start_33
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    goto :goto_3e

    :catch_41
    move-exception v0

    goto :goto_33

    .line 124
    :catch_43
    move-exception v0

    goto :goto_1f

    :catch_45
    move-exception v0

    goto :goto_14
.end method
