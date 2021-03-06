.class public Lcom/broadcom/bt/preference/SharedPreferenceMapper;
.super Ljava/lang/Object;
.source "SharedPreferenceMapper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mDefaultListener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;)V
    .registers 3
    .parameter "defaultListener"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0, v0, p1}, Lcom/broadcom/bt/preference/SharedPreferenceMapper;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;)V
    .registers 4
    .parameter
    .parameter
    .parameter "defaultListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;",
            ">;",
            "Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, prefMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/preference/Preference;>;"
    .local p2, listnerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    .line 23
    iput-object p2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    .line 24
    iput-object p3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mDefaultListener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

    .line 25
    return-void
.end method


# virtual methods
.method public addToMap(Landroid/preference/Preference;)V
    .registers 4
    .parameter "pref"

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    if-nez v1, :cond_f

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    .line 33
    :cond_f
    iget-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public getPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .registers 3
    .parameter "key"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/preference/Preference;

    move-object v0, p0

    goto :goto_5
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "sharedPref"
    .parameter "key"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 92
    .local v1, pref:Landroid/preference/Preference;
    if-eqz v1, :cond_1b

    .line 93
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1c

    .line 94
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

    .line 96
    .local v0, listener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;
    if-eqz v0, :cond_1c

    .line 97
    invoke-interface {v0, v1, p2, p1}, Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/preference/Preference;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 108
    .end local v0           #listener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;
    :cond_1b
    :goto_1b
    return-void

    .line 102
    :cond_1c
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mDefaultListener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

    if-eqz v2, :cond_1b

    .line 103
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mDefaultListener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

    invoke-interface {v2, v1, p2, p1}, Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/preference/Preference;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_1b
.end method

.method public registerPreference(Landroid/preference/Preference;)V
    .registers 4
    .parameter "pref"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    if-nez v1, :cond_f

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    .line 49
    :cond_f
    iget-object v1, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 51
    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 52
    return-void
.end method

.method public registerPreference(Landroid/preference/Preference;Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;)V
    .registers 7
    .parameter "pref"
    .parameter "listener"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    if-nez v3, :cond_f

    .line 58
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    .line 60
    :cond_f
    iget-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    if-nez v3, :cond_1f

    .line 63
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    .line 66
    :cond_1f
    iget-object v3, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;

    .line 67
    .local v1, prevListener:Lcom/broadcom/bt/preference/BrcmOnSharedPreferenceChangeListener;
    if-nez v1, :cond_30

    .line 69
    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 70
    .local v2, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 72
    .end local v2           #sharedPref:Landroid/content/SharedPreferences;
    :cond_30
    return-void
.end method

.method public removeFromMap(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    if-eqz v0, :cond_e

    .line 38
    iget-object v0, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_e
    return-void
.end method

.method public unregisterPreference(Ljava/lang/String;)V
    .registers 5
    .parameter "key"

    .prologue
    .line 75
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 76
    .local v0, pref:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/broadcom/bt/preference/SharedPreferenceMapper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    if-eqz v0, :cond_16

    .line 78
    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 81
    .end local v1           #sharedPref:Landroid/content/SharedPreferences;
    :cond_16
    return-void
.end method
