.class public Lcom/google/common/async/ClientLoginService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/async/LoginService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/async/ClientLoginService$LoginRequestImpl;
    }
.end annotation


# instance fields
.field private factory:Lcom/google/common/async/AsyncHttpRequestFactory;

.field private runner:Lcom/google/common/task/TaskRunner;


# direct methods
.method public constructor <init>(Lcom/google/common/task/TaskRunner;Lcom/google/common/async/AsyncHttpRequestFactory;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/async/ClientLoginService;->runner:Lcom/google/common/task/TaskRunner;

    iput-object p2, p0, Lcom/google/common/async/ClientLoginService;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    return-void
.end method


# virtual methods
.method public createLoginRequest()Lcom/google/common/async/LoginRequest;
    .registers 4

    new-instance v0, Lcom/google/common/async/ClientLoginService$LoginRequestImpl;

    iget-object v1, p0, Lcom/google/common/async/ClientLoginService;->runner:Lcom/google/common/task/TaskRunner;

    iget-object v2, p0, Lcom/google/common/async/ClientLoginService;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    invoke-direct {v0, v1, v2}, Lcom/google/common/async/ClientLoginService$LoginRequestImpl;-><init>(Lcom/google/common/task/TaskRunner;Lcom/google/common/async/AsyncHttpRequestFactory;)V

    return-object v0
.end method
