.class Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;
.super Ljava/lang/Thread;
.source "GoogleLoginServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getAccount(Landroid/app/Activity;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$requestCode:I

.field final synthetic val$requireGoogle:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLandroid/os/Handler;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$requireGoogle:Z

    iput-object p3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$handler:Landroid/os/Handler;

    iput p4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v1, b:Landroid/os/Bundle;
    const/4 v5, -0x1

    .line 124
    .local v5, resultCode:I
    const/4 v3, 0x0

    .line 126
    .local v3, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_7
    new-instance v4, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_45
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_7 .. :try_end_12} :catch_33

    .line 128
    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .local v4, helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    const/4 v6, 0x1

    :try_start_13
    new-array v0, v6, [Ljava/lang/String;

    .line 129
    .local v0, accounts:[Ljava/lang/String;
    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$requireGoogle:Z

    invoke-virtual {v4, v7}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 131
    const-string v6, "accounts"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_4c
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_13 .. :try_end_23} :catch_4f

    .line 137
    if-eqz v4, :cond_53

    .line 138
    invoke-virtual {v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    move-object v3, v4

    .line 144
    .end local v0           #accounts:[Ljava/lang/String;
    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_29
    :goto_29
    iget-object v6, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$activity:Landroid/app/Activity;

    iget v8, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$1;->val$requestCode:I

    invoke-static {v6, v7, v5, v8, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$000(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V

    .line 145
    return-void

    .line 132
    :catch_33
    move-exception v6

    move-object v2, v6

    .line 133
    .local v2, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :goto_35
    const/4 v5, 0x0

    .line 134
    :try_start_36
    const-string v6, "errorCode"

    invoke-virtual {v2}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;->getErrorCode()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_45

    .line 137
    if-eqz v3, :cond_29

    .line 138
    invoke-virtual {v3}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_29

    .line 137
    .end local v2           #e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :catchall_45
    move-exception v6

    :goto_46
    if-eqz v3, :cond_4b

    .line 138
    invoke-virtual {v3}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_4b
    throw v6

    .line 137
    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :catchall_4c
    move-exception v6

    move-object v3, v4

    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_46

    .line 132
    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :catch_4f
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_35

    .end local v3           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v0       #accounts:[Ljava/lang/String;
    .restart local v4       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :cond_53
    move-object v3, v4

    .end local v4           #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v3       #helper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto :goto_29
.end method
