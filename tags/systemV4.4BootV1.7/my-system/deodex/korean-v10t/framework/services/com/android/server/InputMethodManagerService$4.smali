.class Lcom/android/server/InputMethodManagerService$4;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1431
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1434
    :try_start_5
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v2, :cond_1f

    .line 1435
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v0, v2, p2

    .line 1436
    .local v0, im:Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 1437
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$4;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;)V

    .line 1439
    .end local v0           #im:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1f
    monitor-exit v1

    .line 1440
    return-void

    .line 1439
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v2
.end method
