.class public Ljava/security/GuardedObject;
.super Ljava/lang/Object;
.source "GuardedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x48b9d198f0d259c4L


# instance fields
.field private final guard:Ljava/security/Guard;

.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/security/Guard;)V
    .registers 3
    .parameter "object"
    .parameter "guard"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    .line 55
    iput-object p2, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    .line 56
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    if-eqz v0, :cond_b

    .line 81
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    iget-object v1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/security/Guard;->checkGuard(Ljava/lang/Object;)V

    .line 83
    :cond_b
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 84
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    if-eqz v0, :cond_b

    .line 70
    iget-object v0, p0, Ljava/security/GuardedObject;->guard:Ljava/security/Guard;

    iget-object v1, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/security/Guard;->checkGuard(Ljava/lang/Object;)V

    .line 72
    :cond_b
    iget-object v0, p0, Ljava/security/GuardedObject;->object:Ljava/lang/Object;

    return-object v0
.end method
