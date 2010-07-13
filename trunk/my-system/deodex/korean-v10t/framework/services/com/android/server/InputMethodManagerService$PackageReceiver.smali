.class Lcom/android/server/InputMethodManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v9, "default_input_method"

    const-string v9, "InputManagerService"

    .line 333
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v9, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 334
    :try_start_9
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v11, v11, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v9, v11, v12}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, curIm:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "default_input_method"

    invoke-static {v9, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, curInputMethodId:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 340
    .local v0, N:I
    if-eqz v3, :cond_4f

    .line 341
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2c
    if-ge v5, v0, :cond_4f

    .line 342
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 343
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curIm:Landroid/view/inputmethod/InputMethodInfo;
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 341
    .restart local v2       #curIm:Landroid/view/inputmethod/InputMethodInfo;
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 348
    .end local v5           #i:I
    :cond_4f
    const/4 v1, 0x0

    .line 350
    .local v1, changed:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 351
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_db

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 352
    .local v6, pkg:Ljava/lang/String;
    :goto_5b
    if-eqz v2, :cond_fd

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_64
    .catchall {:try_start_9 .. :try_end_64} :catchall_fa

    move-result v9

    if-eqz v9, :cond_fd

    .line 353
    const/4 v7, 0x0

    .line 355
    .local v7, si:Landroid/content/pm/ServiceInfo;
    :try_start_68
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_68 .. :try_end_78} :catch_13f

    move-result-object v7

    .line 359
    :goto_79
    if-nez v7, :cond_d2

    .line 362
    :try_start_7b
    const-string v9, "InputManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current input method removed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v9}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v4

    .line 364
    .local v4, enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v4, :cond_df

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_df

    .line 365
    const/4 v1, 0x1

    .line 366
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curIm:Landroid/view/inputmethod/InputMethodInfo;
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 367
    .restart local v2       #curIm:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 368
    const-string v9, "InputManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Switching to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "default_input_method"

    invoke-static {v9, v11, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    .end local v4           #enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7           #si:Landroid/content/pm/ServiceInfo;
    :cond_d2
    :goto_d2
    if-eqz v1, :cond_d9

    .line 399
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v9}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked()V

    .line 401
    :cond_d9
    monitor-exit v10

    .line 402
    return-void

    .line 351
    .end local v6           #pkg:Ljava/lang/String;
    :cond_db
    const/4 v9, 0x0

    move-object v6, v9

    goto/16 :goto_5b

    .line 372
    .restart local v4       #enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v6       #pkg:Ljava/lang/String;
    .restart local v7       #si:Landroid/content/pm/ServiceInfo;
    :cond_df
    if-eqz v2, :cond_d2

    .line 373
    const/4 v1, 0x1

    .line 374
    const/4 v2, 0x0

    .line 375
    const-string v3, ""

    .line 376
    const-string v9, "InputManagerService"

    const-string v11, "Unsetting current input method"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "default_input_method"

    invoke-static {v9, v11, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d2

    .line 401
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #curIm:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #curInputMethodId:Ljava/lang/String;
    .end local v4           #enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6           #pkg:Ljava/lang/String;
    .end local v7           #si:Landroid/content/pm/ServiceInfo;
    .end local v8           #uri:Landroid/net/Uri;
    :catchall_fa
    move-exception v9

    monitor-exit v10
    :try_end_fc
    .catchall {:try_start_7b .. :try_end_fc} :catchall_fa

    throw v9

    .line 383
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v2       #curIm:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3       #curInputMethodId:Ljava/lang/String;
    .restart local v6       #pkg:Ljava/lang/String;
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_fd
    if-nez v2, :cond_d2

    .line 386
    :try_start_ff
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v9}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v4

    .line 387
    .restart local v4       #enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v4, :cond_d2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_d2

    .line 388
    const/4 v1, 0x1

    .line 389
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curIm:Landroid/view/inputmethod/InputMethodInfo;
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 390
    .restart local v2       #curIm:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 391
    const-string v9, "InputManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New default input method: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$PackageReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "default_input_method"

    invoke-static {v9, v11, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_13e
    .catchall {:try_start_ff .. :try_end_13e} :catchall_fa

    goto :goto_d2

    .line 357
    .end local v4           #enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v7       #si:Landroid/content/pm/ServiceInfo;
    :catch_13f
    move-exception v9

    goto/16 :goto_79
.end method
