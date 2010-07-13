.class Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;
.super Lcom/google/common/task/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/async/AsyncHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchdogTask"
.end annotation


# instance fields
.field request:Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;


# direct methods
.method constructor <init>(Lcom/google/common/task/TaskRunner;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/task/TimerTask;-><init>(Lcom/google/common/task/TaskRunner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->request:Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    invoke-virtual {v0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogFired()V

    return-void
.end method

.method public setRequest(Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->request:Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;

    return-void
.end method
