.class Lcom/android/alarmclock/SetAlarm$1;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/SetAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/SetAlarm;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/alarmclock/SetAlarm$1;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 171
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$1;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$400(Lcom/android/alarmclock/SetAlarm;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    const/16 v1, 0x19

    .line 145
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$1;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$400(Lcom/android/alarmclock/SetAlarm;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-le v0, v1, :cond_53

    invoke-static {}, Lcom/android/alarmclock/SetAlarm;->access$500()Z

    move-result v0

    if-nez v0, :cond_53

    .line 147
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$502(Z)Z

    .line 153
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$1;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$400(Lcom/android/alarmclock/SetAlarm;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/alarmclock/SetAlarm;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/alarmclock/SetAlarm;->access$600()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/alarmclock/SetAlarm$1;->this$0:Lcom/android/alarmclock/SetAlarm;

    const v2, 0x7f070030

    invoke-virtual {v1, v2}, Lcom/android/alarmclock/SetAlarm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/alarmclock/SetAlarm$1$1;

    invoke-direct {v2, p0}, Lcom/android/alarmclock/SetAlarm$1$1;-><init>(Lcom/android/alarmclock/SetAlarm$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 167
    :cond_52
    :goto_52
    return-void

    .line 164
    :cond_53
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$1;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$400(Lcom/android/alarmclock/SetAlarm;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-le v0, v1, :cond_52

    invoke-static {}, Lcom/android/alarmclock/SetAlarm;->access$500()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 165
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$1;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$400(Lcom/android/alarmclock/SetAlarm;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/alarmclock/SetAlarm;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52
.end method
