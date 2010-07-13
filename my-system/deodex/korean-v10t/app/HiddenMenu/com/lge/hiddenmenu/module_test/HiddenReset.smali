.class public Lcom/lge/hiddenmenu/module_test/HiddenReset;
.super Landroid/preference/PreferenceActivity;
.source "HiddenReset.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final EVENT_SET_HIDDENRESET_COMPLETED:I = 0x65

.field private static final Hidden_Reset_On_Off:Ljava/lang/String; = "hidden_reset_On_Off"

.field public static final packageName:Ljava/lang/String; = "com.lge.hiddenmenu"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHiddenReset:Landroid/preference/CheckBoxPreference;

.field phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/lge/hiddenmenu/module_test/HiddenReset$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/module_test/HiddenReset$1;-><init>(Lcom/lge/hiddenmenu/module_test/HiddenReset;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/HiddenReset;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/module_test/HiddenReset;->addPreferencesFromResource(I)V

    .line 74
    const-string v1, "hidden_reset_On_Off"

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/module_test/HiddenReset;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/lge/hiddenmenu/module_test/HiddenReset;->mHiddenReset:Landroid/preference/CheckBoxPreference;

    .line 75
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/HiddenReset;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hidden_reset"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    move v0, v1

    .line 77
    .local v0, db_hidden_reset:Z
    :goto_22
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/HiddenReset;->mHiddenReset:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 78
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/module_test/HiddenReset;->phone:Lcom/android/internal/telephony/Phone;

    .line 79
    return-void

    .end local v0           #db_hidden_reset:Z
    :cond_2e
    move v0, v3

    .line 75
    goto :goto_22
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    const-string v6, "hidden_reset_On_Off"

    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, ret:I
    const-string v3, "hidden_reset_On_Off"

    const-string v3, "[Blue Debug] onPreferenceTreeClick"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v3, p0, Lcom/lge/hiddenmenu/module_test/HiddenReset;->mHiddenReset:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_39

    .line 94
    iget-object v3, p0, Lcom/lge/hiddenmenu/module_test/HiddenReset;->mHiddenReset:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 95
    .local v0, Is_HiddenReset:Z
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/HiddenReset;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hidden_reset"

    if-eqz v0, :cond_37

    move v5, v7

    :goto_1e
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    iget-object v3, p0, Lcom/lge/hiddenmenu/module_test/HiddenReset;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 100
    .local v1, msg:Landroid/os/Message;
    const-string v3, "hidden_reset_On_Off"

    const-string v3, "[Blue Debug] Call setHiddenReset"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v3, p0, Lcom/lge/hiddenmenu/module_test/HiddenReset;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/Phone;->setHiddenReset(ZLandroid/os/Message;)I

    move-result v2

    .line 107
    .end local v0           #Is_HiddenReset:Z
    .end local v1           #msg:Landroid/os/Message;
    :goto_36
    return v7

    .line 95
    .restart local v0       #Is_HiddenReset:Z
    :cond_37
    const/4 v5, 0x0

    goto :goto_1e

    .line 104
    .end local v0           #Is_HiddenReset:Z
    :cond_39
    const-string v3, "hidden_reset_On_Off"

    const-string v3, "[Blue Debug] Cannot find mHiddenReset"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 84
    return-void
.end method
