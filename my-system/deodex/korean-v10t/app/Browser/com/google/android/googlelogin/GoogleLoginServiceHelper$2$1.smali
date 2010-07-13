.class Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;
.super Ljava/lang/Object;
.source "GoogleLoginServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

.field final synthetic val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

.field final synthetic val$requiresGoogle:Z


# direct methods
.method constructor <init>(Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;Lcom/google/android/googleapps/GoogleLoginCredentialsResult;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iput-object p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    iput-boolean p3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->val$requiresGoogle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const-string v4, "optional_message"

    .line 396
    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->val$credentialsResult:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 403
    .local v0, credentialsIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v2, v2, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_1d

    .line 404
    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v2, v2, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    const-string v3, "optional_message"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 406
    .local v1, msg:Ljava/lang/CharSequence;
    const-string v2, "optional_message"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 409
    .end local v1           #msg:Ljava/lang/CharSequence;
    :cond_1d
    const-string v2, "callerExtras"

    iget-object v3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v3, v3, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 412
    const-string v2, "requestCode"

    iget-object v3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget v3, v3, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    const-string v2, "service"

    iget-object v3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v3, v3, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$service:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string v2, "requiresGoogleAccount"

    iget-boolean v3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->val$requiresGoogle:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget-object v2, v2, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2$1;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;

    iget v3, v3, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$2;->val$requestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 421
    return-void
.end method
