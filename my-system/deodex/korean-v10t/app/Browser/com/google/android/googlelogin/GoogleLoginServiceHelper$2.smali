.class Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;
.super Ljava/lang/Thread;
.source "GoogleLoginServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$promptUser:Z

.field final synthetic val$requestCode:I

.field final synthetic val$requestExtras:Landroid/os/Bundle;

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;Landroid/os/Handler;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    iput-object p5, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iput p7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "YouTubeUser"

    .line 322
    const/4 v4, 0x0

    .line 323
    .local v4, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v1, b:Landroid/os/Bundle;
    :try_start_a
    new-instance v5, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_dc
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_a .. :try_end_15} :catch_e6

    .line 328
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .local v5, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    const/4 v7, 0x0

    .line 330
    .local v7, requiresGoogleTemp:Z
    :try_start_16
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$100()Ljava/lang/String;

    move-result-object v9

    if-ne v8, v9, :cond_78

    .line 331
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, account:Ljava/lang/String;
    :goto_23
    move v6, v7

    .line 340
    .local v6, requiresGoogle:Z
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-nez v9, :cond_8a

    move v9, v11

    :goto_2b
    invoke-virtual {v5, v0, v8, v9}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v2

    .line 357
    .local v2, credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    const-string v8, "callerExtras"

    iget-object v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 358
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8c

    .line 364
    const-string v8, "authtoken"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v8, "authAccount"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v8, "youtube"

    iget-object v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 369
    const-string v8, "YouTubeUser"

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v9

    const-string v10, "YouTubeUser"

    invoke-virtual {v5, v9, v10}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_67
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v10, -0x1

    iget v11, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-static {v8, v9, v10, v11, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_71
    .catchall {:try_start_16 .. :try_end_71} :catchall_e3
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_16 .. :try_end_71} :catch_c0

    .line 448
    if-eqz v5, :cond_76

    .line 449
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_76
    move-object v4, v5

    .end local v0           #account:Ljava/lang/String;
    .end local v2           #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .end local v6           #requiresGoogle:Z
    .end local v7           #requiresGoogleTemp:Z
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_77
    :goto_77
    return-void

    .line 332
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v7       #requiresGoogleTemp:Z
    :cond_78
    :try_start_78
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$200()Ljava/lang/String;

    move-result-object v9

    if-ne v8, v9, :cond_87

    .line 333
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v0

    .line 334
    .restart local v0       #account:Ljava/lang/String;
    const/4 v7, 0x1

    goto :goto_23

    .line 336
    .end local v0           #account:Ljava/lang/String;
    :cond_87
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$accountName:Ljava/lang/String;

    .restart local v0       #account:Ljava/lang/String;
    goto :goto_23

    .restart local v6       #requiresGoogle:Z
    :cond_8a
    move v9, v10

    .line 340
    goto :goto_2b

    .line 382
    .restart local v2       #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :cond_8c
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_b8

    .line 388
    iget-boolean v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$promptUser:Z

    if-eqz v8, :cond_a7

    .line 394
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;

    invoke-direct {v9, p0, v2, v6}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;-><init>(Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;Lcom/google/android/googleapps/GoogleLoginCredentialsResult;Z)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a0
    .catchall {:try_start_78 .. :try_end_a0} :catchall_e3
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_78 .. :try_end_a0} :catch_c0

    .line 448
    if-eqz v5, :cond_a5

    .line 449
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_a5
    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_77

    .line 428
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_a7
    :try_start_a7
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v10, -0x1

    iget v11, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-static {v8, v9, v10, v11, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_e3
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_a7 .. :try_end_b1} :catch_c0

    .line 448
    if-eqz v5, :cond_b6

    .line 449
    invoke-virtual {v5}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_b6
    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_77

    .line 438
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_b8
    :try_start_b8
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Malformed credentialsResult from helper.getCredentials()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_c0
    .catchall {:try_start_b8 .. :try_end_c0} :catchall_e3
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_b8 .. :try_end_c0} :catch_c0

    .line 441
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .end local v6           #requiresGoogle:Z
    :catch_c0
    move-exception v8

    move-object v3, v8

    move-object v4, v5

    .line 442
    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .end local v7           #requiresGoogleTemp:Z
    .local v3, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :goto_c3
    :try_start_c3
    const-string v8, "errorCode"

    invoke-virtual {v3}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;->getErrorCode()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    iget-object v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    const/4 v10, 0x0

    iget v11, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-static {v8, v9, v10, v11, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
    :try_end_d6
    .catchall {:try_start_c3 .. :try_end_d6} :catchall_dc

    .line 448
    if-eqz v4, :cond_77

    .line 449
    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_77

    .line 448
    .end local v3           #e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :catchall_dc
    move-exception v8

    :goto_dd
    if-eqz v4, :cond_e2

    .line 449
    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_e2
    throw v8

    .line 448
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v5       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v7       #requiresGoogleTemp:Z
    :catchall_e3
    move-exception v8

    move-object v4, v5

    .end local v5           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_dd

    .line 441
    .end local v7           #requiresGoogleTemp:Z
    :catch_e6
    move-exception v8

    move-object v3, v8

    goto :goto_c3
.end method
