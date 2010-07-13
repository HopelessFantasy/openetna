.class public Lcom/android/phone/GsmUmtsOptions;
.super Landroid/preference/PreferenceActivity;
.source "GsmUmtsOptions.java"


# static fields
.field private static final BUTTON_APN_EXPAND_KEY:Ljava/lang/String; = "button_apn_key"

.field private static final BUTTON_OPERATOR_SELECTION_EXPAND_KEY:Ljava/lang/String; = "button_carrier_sel_key"

.field private static final CSP_TAG:Ljava/lang/String; = "CSP GSMUMTS"


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "CSP GSMUMTS"

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Lcom/android/phone/GsmUmtsOptions;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 47
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "button_apn_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    .line 48
    const-string v3, "button_carrier_sel_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 51
    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 52
    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 84
    :cond_3f
    :goto_3f
    return-void

    .line 60
    :cond_40
    :try_start_40
    const-string v3, "persist.cust.tel.adapt"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_52

    const-string v3, "persist.cust.tel.efcsp.plmn"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 62
    :cond_52
    const-string v3, "CSP GSMUMTS"

    const-string v4, "system property for ef_csp is set"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCspPlmnStatus()I

    move-result v1

    .line 64
    .local v1, plmnStatus:I
    if-ne v1, v7, :cond_8c

    .line 69
    const-string v3, "CSP GSMUMTS"

    const-string v4, "CSP PLMN bit is set,Enabling Network Operators menu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_70} :catch_71

    goto :goto_3f

    .line 80
    .end local v1           #plmnStatus:I
    :catch_71
    move-exception v3

    move-object v0, v3

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CSP GSMUMTS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in reading ef_csp system property"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 72
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #plmnStatus:I
    :cond_8c
    if-nez v1, :cond_9c

    .line 73
    :try_start_8e
    const-string v3, "CSP GSMUMTS"

    const-string v4, "CSP PLMN bit is not set,Disabling Network Operators menu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_3f

    .line 77
    :cond_9c
    const-string v3, "CSP GSMUMTS"

    const-string v4, "Undefined Csp PLMN Status"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_a3} :catch_71

    goto :goto_3f
.end method
