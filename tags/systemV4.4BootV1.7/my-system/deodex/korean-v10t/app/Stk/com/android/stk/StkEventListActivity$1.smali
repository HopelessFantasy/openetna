.class Lcom/android/stk/StkEventListActivity$1;
.super Ljava/lang/Object;
.source "StkEventListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkEventListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$gsm$stk$SetEventList:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->values()[Lcom/android/internal/telephony/gsm/stk/SetEventList;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/stk/StkEventListActivity$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$SetEventList:[I

    :try_start_9
    sget-object v0, Lcom/android/stk/StkEventListActivity$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$SetEventList:[I

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetEventList;->BROWSER_TERMINATION_EVENT:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
