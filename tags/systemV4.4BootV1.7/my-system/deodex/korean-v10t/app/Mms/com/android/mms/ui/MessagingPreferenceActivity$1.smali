.class Lcom/android/mms/ui/MessagingPreferenceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 133
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-static {v3, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$002(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 134
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v3, "pref_key_vibrate"

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 135
    .local v1, vibrate:Landroid/preference/CheckBoxPreference;
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 136
    .local v0, valueMode:I
    const-string v2, "BBANGYA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceiver:getRingerMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-nez v0, :cond_43

    .line 138
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    :cond_42
    :goto_42
    return-void

    .line 139
    :cond_43
    if-ne v0, v5, :cond_42

    .line 140
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_42
.end method
