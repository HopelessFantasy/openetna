.class Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;
.super Ljava/lang/Object;
.source "ApplicationsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/applications/ApplicationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/providers/applications/ApplicationsProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/applications/ApplicationsProvider;)V
    .registers 3
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;->mCancelled:Z

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;->mCancelled:Z

    .line 193
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 198
    const-wide/16 v1, 0x3e8

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_14

    .line 205
    :goto_5
    :try_start_5
    iget-boolean v1, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;->mCancelled:Z

    if-nez v1, :cond_e

    .line 206
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    invoke-static {v1}, Lcom/android/providers/applications/ApplicationsProvider;->access$200(Lcom/android/providers/applications/ApplicationsProvider;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_19

    .line 214
    :cond_e
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    invoke-static {v1, p0}, Lcom/android/providers/applications/ApplicationsProvider;->access$300(Lcom/android/providers/applications/ApplicationsProvider;Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;)V

    .line 216
    :goto_13
    return-void

    .line 199
    :catch_14
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;->mCancelled:Z

    goto :goto_5

    .line 211
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 212
    .local v0, e:Ljava/lang/Exception;
    :try_start_1b
    const-string v1, "ApplicationsProvider"

    const-string v2, "error updating applications list."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_28

    .line 214
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    invoke-static {v1, p0}, Lcom/android/providers/applications/ApplicationsProvider;->access$300(Lcom/android/providers/applications/ApplicationsProvider;Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;)V

    goto :goto_13

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_28
    move-exception v1

    iget-object v2, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    invoke-static {v2, p0}, Lcom/android/providers/applications/ApplicationsProvider;->access$300(Lcom/android/providers/applications/ApplicationsProvider;Lcom/android/providers/applications/ApplicationsProvider$UpdateRunnable;)V

    throw v1
.end method
