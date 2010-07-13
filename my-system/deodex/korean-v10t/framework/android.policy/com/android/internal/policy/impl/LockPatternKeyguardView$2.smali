.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;->asyncCheckForAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 2
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    .line 420
    :try_start_1
    invoke-static {p2}, Landroid/accounts/IAccountsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountsService;

    move-result-object v1

    .line 421
    .local v1, accountsService:Landroid/accounts/IAccountsService;
    invoke-interface {v1}, Landroid/accounts/IAccountsService;->getAccounts()[Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, accounts:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    array-length v4, v0

    if-lez v4, :cond_27

    const/4 v4, 0x1

    :goto_f
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_58
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_29

    .line 427
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 428
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 430
    .end local v0           #accounts:[Ljava/lang/String;
    .end local v1           #accountsService:Landroid/accounts/IAccountsService;
    :goto_26
    return-void

    .line 422
    .restart local v0       #accounts:[Ljava/lang/String;
    .restart local v1       #accountsService:Landroid/accounts/IAccountsService;
    :cond_27
    const/4 v4, 0x0

    goto :goto_f

    .line 423
    .end local v0           #accounts:[Ljava/lang/String;
    .end local v1           #accountsService:Landroid/accounts/IAccountsService;
    :catch_29
    move-exception v3

    move-object v2, v3

    .line 425
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2b
    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gls died while attempting to get accounts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_58

    .line 427
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 428
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    goto :goto_26

    .line 427
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_58
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 428
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    throw v3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "className"

    .prologue
    .line 434
    return-void
.end method
