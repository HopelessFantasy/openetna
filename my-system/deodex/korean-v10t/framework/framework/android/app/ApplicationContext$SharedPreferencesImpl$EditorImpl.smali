.class public final Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "ApplicationContext.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationContext$SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/ApplicationContext$SharedPreferencesImpl;


# direct methods
.method public constructor <init>(Landroid/app/ApplicationContext$SharedPreferencesImpl;)V
    .registers 3
    .parameter

    .prologue
    .line 2893
    iput-object p1, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ApplicationContext$SharedPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2894
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 2895
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mClear:Z

    return-void
.end method


# virtual methods
.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 2936
    monitor-enter p0

    .line 2937
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 2938
    monitor-exit p0

    return-object p0

    .line 2939
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public commit()Z
    .registers 16

    .prologue
    .line 2946
    const/4 v6, 0x0

    .line 2947
    .local v6, keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 2949
    .local v9, listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    iget-object v13, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ApplicationContext$SharedPreferencesImpl;

    monitor-enter v13

    .line 2950
    :try_start_5
    iget-object v14, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ApplicationContext$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ApplicationContext$SharedPreferencesImpl;->access$600(Landroid/app/ApplicationContext$SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/WeakHashMap;->size()I

    move-result v14

    if-lez v14, :cond_73

    const/4 v14, 0x1

    move v1, v14

    .line 2951
    .local v1, hasListeners:Z
    :goto_13
    if-eqz v1, :cond_2b

    .line 2952
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_70

    .line 2953
    .end local v6           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v7, keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1a
    new-instance v10, Ljava/util/HashSet;

    iget-object v14, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ApplicationContext$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ApplicationContext$SharedPreferencesImpl;->access$600(Landroid/app/ApplicationContext$SharedPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_ba

    .end local v9           #listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .local v10, listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    move-object v9, v10

    .end local v10           #listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .restart local v9       #listeners:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    move-object v6, v7

    .line 2957
    .end local v7           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    :try_start_2b
    monitor-enter p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_70

    .line 2958
    :try_start_2c
    iget-boolean v14, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v14, :cond_3c

    .line 2959
    iget-object v14, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ApplicationContext$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ApplicationContext$SharedPreferencesImpl;->access$700(Landroid/app/ApplicationContext$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 2960
    const/4 v14, 0x0

    iput-boolean v14, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mClear:Z

    .line 2963
    :cond_3c
    iget-object v14, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2964
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2965
    .local v4, k:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 2966
    .local v12, v:Ljava/lang/Object;
    if-ne v12, p0, :cond_76

    .line 2967
    iget-object v14, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ApplicationContext$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ApplicationContext$SharedPreferencesImpl;->access$700(Landroid/app/ApplicationContext$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2972
    :goto_67
    if-eqz v1, :cond_46

    .line 2973
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 2978
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #k:Ljava/lang/String;
    .end local v12           #v:Ljava/lang/Object;
    :catchall_6d
    move-exception v14

    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_2c .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v14

    .line 2981
    .end local v1           #hasListeners:Z
    :catchall_70
    move-exception v14

    :goto_71
    monitor-exit v13
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_70

    throw v14

    .line 2950
    :cond_73
    const/4 v14, 0x0

    move v1, v14

    goto :goto_13

    .line 2969
    .restart local v0       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1       #hasListeners:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #k:Ljava/lang/String;
    .restart local v12       #v:Ljava/lang/Object;
    :cond_76
    :try_start_76
    iget-object v14, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ApplicationContext$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ApplicationContext$SharedPreferencesImpl;->access$700(Landroid/app/ApplicationContext$SharedPreferencesImpl;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 2977
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #k:Ljava/lang/String;
    .end local v12           #v:Ljava/lang/Object;
    :cond_80
    iget-object v14, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 2978
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_76 .. :try_end_86} :catchall_6d

    .line 2980
    :try_start_86
    iget-object v14, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ApplicationContext$SharedPreferencesImpl;

    invoke-static {v14}, Landroid/app/ApplicationContext$SharedPreferencesImpl;->access$800(Landroid/app/ApplicationContext$SharedPreferencesImpl;)Z

    move-result v11

    .line 2981
    .local v11, returnValue:Z
    monitor-exit v13
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_70

    .line 2983
    if-eqz v1, :cond_b9

    .line 2984
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int v2, v13, v14

    .local v2, i:I
    :goto_96
    if-ltz v2, :cond_b9

    .line 2985
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2986
    .local v5, key:Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a2
    :goto_a2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 2987
    .local v8, listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    if-eqz v8, :cond_a2

    .line 2988
    iget-object v13, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->this$0:Landroid/app/ApplicationContext$SharedPreferencesImpl;

    invoke-interface {v8, v13, v5}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_a2

    .line 2984
    .end local v8           #listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :cond_b6
    add-int/lit8 v2, v2, -0x1

    goto :goto_96

    .line 2994
    .end local v2           #i:I
    .end local v5           #key:Ljava/lang/String;
    :cond_b9
    return v11

    .line 2981
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #returnValue:Z
    .restart local v7       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_ba
    move-exception v14

    move-object v6, v7

    .end local v7           #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #keysModified:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_71
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2922
    monitor-enter p0

    .line 2923
    :try_start_1
    iget-object v0, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2924
    monitor-exit p0

    return-object p0

    .line 2925
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2916
    monitor-enter p0

    .line 2917
    :try_start_1
    iget-object v0, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2918
    monitor-exit p0

    return-object p0

    .line 2919
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2904
    monitor-enter p0

    .line 2905
    :try_start_1
    iget-object v0, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2906
    monitor-exit p0

    return-object p0

    .line 2907
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2910
    monitor-enter p0

    .line 2911
    :try_start_1
    iget-object v0, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    monitor-exit p0

    return-object p0

    .line 2913
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2898
    monitor-enter p0

    .line 2899
    :try_start_1
    iget-object v0, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2900
    monitor-exit p0

    return-object p0

    .line 2901
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .parameter "key"

    .prologue
    .line 2929
    monitor-enter p0

    .line 2930
    :try_start_1
    iget-object v0, p0, Landroid/app/ApplicationContext$SharedPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2931
    monitor-exit p0

    return-object p0

    .line 2932
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
