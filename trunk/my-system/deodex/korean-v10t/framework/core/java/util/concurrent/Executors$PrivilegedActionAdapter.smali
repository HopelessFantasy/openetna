.class final Ljava/util/concurrent/Executors$PrivilegedActionAdapter;
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
    name = "PrivilegedActionAdapter"
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
.field private final action:Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>(Ljava/security/PrivilegedAction;)V
    .registers 2
    .parameter "action"

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedActionAdapter;->action:Ljava/security/PrivilegedAction;

    .line 427
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedActionAdapter;->action:Ljava/security/PrivilegedAction;

    invoke-interface {v0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
