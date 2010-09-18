.class final Ljava/util/concurrent/Executors$PrivilegedExceptionActionAdapter;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PrivilegedExceptionActionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final action:Ljava/security/PrivilegedExceptionAction;


# direct methods
.method constructor <init>(Ljava/security/PrivilegedExceptionAction;)V
    .registers 2
    .parameter "action"

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedExceptionActionAdapter;->action:Ljava/security/PrivilegedExceptionAction;

    .line 440
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedExceptionActionAdapter;->action:Ljava/security/PrivilegedExceptionAction;

    invoke-interface {v0}, Ljava/security/PrivilegedExceptionAction;->run()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
