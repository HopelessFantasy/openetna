.class public Lcom/android/stk/StkEventListActivity;
.super Landroid/app/Activity;
.source "StkEventListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkEventListActivity$1;
    }
.end annotation


# static fields
.field private static addedInfo:I

.field private static mEventValue:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 50
    if-eqz p1, :cond_26

    .line 51
    const-string v1, "EVENT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/stk/StkEventListActivity;->mEventValue:I

    .line 52
    sget v1, Lcom/android/stk/StkEventListActivity;->mEventValue:I

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetEventList;

    move-result-object v0

    .line 53
    .local v0, event:Lcom/android/internal/telephony/gsm/stk/SetEventList;
    sget-object v1, Lcom/android/stk/StkEventListActivity$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$SetEventList:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 61
    .end local v0           #event:Lcom/android/internal/telephony/gsm/stk/SetEventList;
    :goto_1c
    return-void

    .line 55
    .restart local v0       #event:Lcom/android/internal/telephony/gsm/stk/SetEventList;
    :pswitch_1d
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetEventList;->USER_TERMINATION:Lcom/android/internal/telephony/gsm/stk/SetEventList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/SetEventList;->value()I

    move-result v1

    sput v1, Lcom/android/stk/StkEventListActivity;->addedInfo:I

    goto :goto_1c

    .line 59
    .end local v0           #event:Lcom/android/internal/telephony/gsm/stk/SetEventList;
    :cond_26
    invoke-virtual {p0}, Lcom/android/stk/StkEventListActivity;->finish()V

    goto :goto_1c

    .line 53
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method

.method private sendResponse(I)V
    .registers 5
    .parameter "resId"

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const-string v1, "event"

    sget v2, Lcom/android/stk/StkEventListActivity;->mEventValue:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    const-string v1, "cause"

    sget v2, Lcom/android/stk/StkEventListActivity;->addedInfo:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/stk/StkEventListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/stk/StkEventListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/stk/StkEventListActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 37
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/stk/StkEventListActivity;->sendResponse(I)V

    .line 38
    return-void
.end method
