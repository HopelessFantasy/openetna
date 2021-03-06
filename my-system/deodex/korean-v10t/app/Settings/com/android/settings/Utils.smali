.class public Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final UPDATE_PREFERENCE_FLAG_SET_TITLE_TO_MATCHING_ACTIVITY:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .registers 15
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 54
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 55
    .local v5, preference:Landroid/preference/Preference;
    if-nez v5, :cond_9

    .line 88
    :goto_8
    return v7

    .line 59
    :cond_9
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_52

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 63
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 65
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    if-ge v0, v3, :cond_52

    .line 66
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 67
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4f

    .line 71
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 75
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_4d

    .line 77
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4d
    move v7, v10

    .line 80
    goto :goto_8

    .line 65
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 86
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_52
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v7, v10

    .line 88
    goto :goto_8
.end method
