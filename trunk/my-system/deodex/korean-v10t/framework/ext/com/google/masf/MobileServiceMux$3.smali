.class final Lcom/google/masf/MobileServiceMux$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/masf/MobileServiceMux;->sendRequests(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/masf/MobileServiceMux;

.field final synthetic val$contentLength:I

.field final synthetic val$macroRequest:Lcom/google/common/async/AsyncHttpRequest;

.field final synthetic val$requests:[Lcom/google/masf/protocol/Request;


# direct methods
.method constructor <init>(Lcom/google/masf/MobileServiceMux;Lcom/google/common/async/AsyncHttpRequest;[Lcom/google/masf/protocol/Request;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/masf/MobileServiceMux$3;->this$0:Lcom/google/masf/MobileServiceMux;

    iput-object p2, p0, Lcom/google/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/common/async/AsyncHttpRequest;

    iput-object p3, p0, Lcom/google/masf/MobileServiceMux$3;->val$requests:[Lcom/google/masf/protocol/Request;

    iput p4, p0, Lcom/google/masf/MobileServiceMux$3;->val$contentLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/google/common/async/AsyncHttpRequest;->hasException()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$3;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$3;->val$requests:[Lcom/google/masf/protocol/Request;

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/common/async/AsyncHttpRequest;

    invoke-interface {v2}, Lcom/google/common/async/AsyncHttpRequest;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/masf/MobileServiceMux;->access$200(Lcom/google/masf/MobileServiceMux;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_15
    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$3;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$3;->val$requests:[Lcom/google/masf/protocol/Request;

    invoke-static {v0, v1}, Lcom/google/masf/MobileServiceMux;->access$400(Lcom/google/masf/MobileServiceMux;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$3;->this$0:Lcom/google/masf/MobileServiceMux;

    iget v1, v0, Lcom/google/masf/MobileServiceMux;->bytesSent:I

    iget v2, p0, Lcom/google/masf/MobileServiceMux$3;->val$contentLength:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/masf/MobileServiceMux;->bytesSent:I
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_35

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/google/common/async/AsyncHttpRequest;->close()V

    return-void

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$3;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/common/async/AsyncHttpRequest;

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux$3;->val$requests:[Lcom/google/masf/protocol/Request;

    invoke-static {v0, v1, v2}, Lcom/google/masf/MobileServiceMux;->access$300(Lcom/google/masf/MobileServiceMux;Lcom/google/common/async/AsyncHttpRequest;[Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_15

    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$3;->val$macroRequest:Lcom/google/common/async/AsyncHttpRequest;

    invoke-interface {v1}, Lcom/google/common/async/AsyncHttpRequest;->close()V

    throw v0
.end method
