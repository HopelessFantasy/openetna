.class Lcom/android/mms/ui/MessagingPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 239
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 240
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$102(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    const/4 v1, -0x1

    .line 243
    .local v1, indexshop:I
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, indexplus:I
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 245
    .local v2, indexstar:I
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 246
    if-gt v2, v8, :cond_36

    if-gt v1, v8, :cond_36

    if-lez v0, :cond_49

    .line 247
    :cond_36
    const/4 v3, 0x0

    .line 248
    .local v3, mToast:Landroid/widget/Toast;
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07009e

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v5, v7

    .line 258
    .end local v3           #mToast:Landroid/widget/Toast;
    :goto_48
    return v5

    .line 254
    :cond_49
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/EditTextPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/EditTextPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    .line 257
    .local v4, smsManager:Landroid/telephony/SmsManager;
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telephony/SmsManager;->updateSCAddress(Ljava/lang/String;)Z

    move v5, v7

    .line 258
    goto :goto_48
.end method
