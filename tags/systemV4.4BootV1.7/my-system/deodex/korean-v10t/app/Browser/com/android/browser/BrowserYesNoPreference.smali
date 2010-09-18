.class Lcom/android/browser/BrowserYesNoPreference;
.super Lcom/android/internal/preference/YesNoPreference;
.source "BrowserYesNoPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/internal/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .registers 5
    .parameter "positiveResult"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/internal/preference/YesNoPreference;->onDialogClosed(Z)V

    .line 35
    if-eqz p1, :cond_20

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserYesNoPreference;->setEnabled(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, context:Landroid/content/Context;
    const-string v1, "privacy_clear_cache"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 40
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearCache(Landroid/content/Context;)V

    .line 55
    .end local v0           #context:Landroid/content/Context;
    :cond_20
    :goto_20
    return-void

    .line 41
    .restart local v0       #context:Landroid/content/Context;
    :cond_21
    const-string v1, "privacy_clear_cookies"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 42
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearCookies(Landroid/content/Context;)V

    goto :goto_20

    .line 43
    :cond_35
    const-string v1, "privacy_clear_history"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 44
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearHistory(Landroid/content/Context;)V

    goto :goto_20

    .line 45
    :cond_49
    const-string v1, "privacy_clear_form_data"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 46
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearFormData(Landroid/content/Context;)V

    goto :goto_20

    .line 47
    :cond_5d
    const-string v1, "privacy_clear_passwords"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 48
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->clearPasswords(Landroid/content/Context;)V

    goto :goto_20

    .line 49
    :cond_71
    const-string v1, "reset_default_preferences"

    invoke-virtual {p0}, Lcom/android/browser/BrowserYesNoPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 51
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->resetDefaultPreferences(Landroid/content/Context;)V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserYesNoPreference;->setEnabled(Z)V

    goto :goto_20
.end method
