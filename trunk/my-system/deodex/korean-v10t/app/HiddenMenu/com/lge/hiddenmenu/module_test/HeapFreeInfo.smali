.class public Lcom/lge/hiddenmenu/module_test/HeapFreeInfo;
.super Landroid/preference/PreferenceActivity;
.source "HeapFreeInfo.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final Heap_Free_Info_On_Off:Ljava/lang/String; = "heap_free_info_on_off"


# instance fields
.field private mHeapFreeInfo:Landroid/preference/CheckBoxPreference;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 27
    const-string v0, "com.lge.hiddenmenu"

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/HeapFreeInfo;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v0, "HeapFreeInfo"

    const-string v1, " ### onCreate ###"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/module_test/HeapFreeInfo;->addPreferencesFromResource(I)V

    .line 40
    const-string v0, "heap_free_info_on_off"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/module_test/HeapFreeInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/HeapFreeInfo;->mHeapFreeInfo:Landroid/preference/CheckBoxPreference;

    .line 41
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 46
    iget-object v2, p0, Lcom/lge/hiddenmenu/module_test/HeapFreeInfo;->mHeapFreeInfo:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_29

    .line 47
    iget-object v2, p0, Lcom/lge/hiddenmenu/module_test/HeapFreeInfo;->mHeapFreeInfo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 49
    .local v0, heap:Z
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/module_test/HeapFreeInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_heap_free_info"

    if-eqz v0, :cond_2a

    move v4, v5

    :goto_14
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android"

    const-string v4, "com.android.server.HeapFreeInfoService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 52
    .local v1, service:Landroid/content/Intent;
    if-eqz v0, :cond_2c

    .line 53
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/module_test/HeapFreeInfo;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    .end local v0           #heap:Z
    .end local v1           #service:Landroid/content/Intent;
    :cond_29
    :goto_29
    return v5

    .line 49
    .restart local v0       #heap:Z
    :cond_2a
    const/4 v4, 0x0

    goto :goto_14

    .line 55
    .restart local v1       #service:Landroid/content/Intent;
    :cond_2c
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/module_test/HeapFreeInfo;->stopService(Landroid/content/Intent;)Z

    goto :goto_29
.end method
