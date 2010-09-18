.class public Lcom/google/common/task/RunnableWithParamsAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final methodCallId:I

.field private final params:[Ljava/lang/Object;

.field private final runnableParams:Lcom/google/common/task/RunnableWithParams;


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;Lcom/google/common/task/RunnableWithParams;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/task/RunnableWithParamsAdapter;->methodCallId:I

    iput-object p2, p0, Lcom/google/common/task/RunnableWithParamsAdapter;->params:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/task/RunnableWithParamsAdapter;->runnableParams:Lcom/google/common/task/RunnableWithParams;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/task/RunnableWithParamsAdapter;->runnableParams:Lcom/google/common/task/RunnableWithParams;

    iget v1, p0, Lcom/google/common/task/RunnableWithParamsAdapter;->methodCallId:I

    iget-object v2, p0, Lcom/google/common/task/RunnableWithParamsAdapter;->params:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/common/task/RunnableWithParams;->run(I[Ljava/lang/Object;)V

    return-void
.end method
