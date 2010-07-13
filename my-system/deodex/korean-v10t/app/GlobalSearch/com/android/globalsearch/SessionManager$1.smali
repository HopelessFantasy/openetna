.class Lcom/android/globalsearch/SessionManager$1;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/android/globalsearch/DelayedExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/globalsearch/SessionManager;->createSession()Lcom/android/globalsearch/SuggestionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/SessionManager;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/SessionManager;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/globalsearch/SessionManager$1;->this$0:Lcom/android/globalsearch/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postAtTime(Ljava/lang/Runnable;J)V
    .registers 5
    .parameter "runnable"
    .parameter "uptimeMillis"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/globalsearch/SessionManager$1;->this$0:Lcom/android/globalsearch/SessionManager;

    invoke-static {v0}, Lcom/android/globalsearch/SessionManager;->access$000(Lcom/android/globalsearch/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 135
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .registers 5
    .parameter "runnable"
    .parameter "delayMillis"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/globalsearch/SessionManager$1;->this$0:Lcom/android/globalsearch/SessionManager;

    invoke-static {v0}, Lcom/android/globalsearch/SessionManager;->access$000(Lcom/android/globalsearch/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method
