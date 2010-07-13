.class Lcom/android/settings/MobileNetwork$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileNetwork;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/MobileNetwork$1;->this$0:Lcom/android/settings/MobileNetwork;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 56
    invoke-static {p2}, Lcom/android/settings/MobileNetwork;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    .line 57
    .local v0, state:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v1, Lcom/android/settings/MobileNetwork$4;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 71
    .end local v0           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_1b
    :goto_1b
    return-void

    .line 60
    .restart local v0       #state:Lcom/android/internal/telephony/Phone$DataState;
    :pswitch_1c
    const-string v1, "MobileNetwork"

    const-string v2, "mMobileStateReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/android/settings/MobileNetwork$1;->this$0:Lcom/android/settings/MobileNetwork;

    invoke-static {v1}, Lcom/android/settings/MobileNetwork;->access$100(Lcom/android/settings/MobileNetwork;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1b

    .line 66
    :pswitch_2e
    iget-object v1, p0, Lcom/android/settings/MobileNetwork$1;->this$0:Lcom/android/settings/MobileNetwork;

    invoke-static {v1}, Lcom/android/settings/MobileNetwork;->access$100(Lcom/android/settings/MobileNetwork;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1b

    .line 57
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_2e
    .end packed-switch
.end method
