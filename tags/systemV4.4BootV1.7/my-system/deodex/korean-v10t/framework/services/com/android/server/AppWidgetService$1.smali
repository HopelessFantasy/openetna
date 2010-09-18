.class Lcom/android/server/AppWidgetService$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .registers 2
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "android.intent.extra.REPLACING"

    .line 1058
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1060
    .local v1, action:Ljava/lang/String;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1061
    iget-object v8, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v8}, Lcom/android/server/AppWidgetService;->sendInitialBroadcasts()V

    .line 1064
    iget-object v8, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iput-boolean v10, v8, Lcom/android/server/AppWidgetService;->mBoot:Z

    .line 1116
    :cond_19
    :goto_19
    return-void

    .line 1065
    :cond_1a
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_77

    iget-object v8, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iget-boolean v8, v8, Lcom/android/server/AppWidgetService;->mBoot:Z

    if-eqz v8, :cond_77

    .line 1066
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 1067
    .local v6, revised:Ljava/util/Locale;
    if-eqz v6, :cond_3e

    iget-object v8, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v8, v8, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    if-eqz v8, :cond_3e

    iget-object v8, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v8, v8, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 1069
    :cond_3e
    iget-object v8, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iput-object v6, v8, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    .line 1071
    iget-object v8, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v8, v8, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1072
    :try_start_47
    iget-object v9, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v9, v9, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1073
    .local v0, N:I
    sub-int v3, v0, v10

    .local v3, i:I
    :goto_51
    if-ltz v3, :cond_6d

    .line 1074
    iget-object v9, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v9, v9, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetService$Provider;

    .line 1075
    .local v4, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v9, v4, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1076
    .local v5, pkgName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v9, v5}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1073
    add-int/lit8 v3, v3, -0x1

    goto :goto_51

    .line 1078
    .end local v4           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_6d
    iget-object v9, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v9}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1079
    monitor-exit v8

    goto :goto_19

    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_74
    move-exception v9

    monitor-exit v8
    :try_end_76
    .catchall {:try_start_47 .. :try_end_76} :catchall_74

    throw v9

    .line 1082
    .end local v6           #revised:Ljava/util/Locale;
    :cond_77
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 1083
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_19

    .line 1086
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 1087
    .restart local v5       #pkgName:Ljava/lang/String;
    if-eqz v5, :cond_19

    .line 1091
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 1092
    iget-object v8, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v8, v8, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1093
    :try_start_90
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1094
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_af

    const-string v9, "android.intent.extra.REPLACING"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 1096
    iget-object v9, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v9, v5}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1101
    :goto_a4
    iget-object v9, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v9}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1102
    monitor-exit v8

    goto/16 :goto_19

    .end local v2           #extras:Landroid/os/Bundle;
    :catchall_ac
    move-exception v9

    monitor-exit v8
    :try_end_ae
    .catchall {:try_start_90 .. :try_end_ae} :catchall_ac

    throw v9

    .line 1099
    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_af
    :try_start_af
    iget-object v9, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v9, v5}, Lcom/android/server/AppWidgetService;->addProvidersForPackageLocked(Ljava/lang/String;)V
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_ac

    goto :goto_a4

    .line 1104
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_b5
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1105
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1106
    .restart local v2       #extras:Landroid/os/Bundle;
    if-eqz v2, :cond_cb

    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_19

    .line 1109
    :cond_cb
    iget-object v8, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v8, v8, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1110
    :try_start_d0
    iget-object v9, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v9, v5}, Lcom/android/server/AppWidgetService;->removeProvidersForPackageLocked(Ljava/lang/String;)V

    .line 1111
    iget-object v9, p0, Lcom/android/server/AppWidgetService$1;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v9}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1112
    monitor-exit v8

    goto/16 :goto_19

    :catchall_dd
    move-exception v9

    monitor-exit v8
    :try_end_df
    .catchall {:try_start_d0 .. :try_end_df} :catchall_dd

    throw v9
.end method
