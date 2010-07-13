.class public interface abstract Lcom/lge/sns/BackgroundJobManager$JobListener;
.super Ljava/lang/Object;
.source "BackgroundJobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/BackgroundJobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JobListener"
.end annotation


# virtual methods
.method public abstract onJobCompleted(Lcom/lge/sns/BackgroundJobManager;)V
.end method

.method public abstract onJobExecuted(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)V
.end method

.method public abstract onJobExecuting(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)V
.end method

.method public abstract onJobStarted(Lcom/lge/sns/BackgroundJobManager;)V
.end method
