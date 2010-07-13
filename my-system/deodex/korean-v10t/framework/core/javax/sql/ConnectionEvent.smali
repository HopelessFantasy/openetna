.class public Ljavax/sql/ConnectionEvent;
.super Ljava/util/EventObject;
.source "ConnectionEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x433690c9b56a83b2L


# instance fields
.field private theSQLException:Ljava/sql/SQLException;


# direct methods
.method public constructor <init>(Ljavax/sql/PooledConnection;)V
    .registers 2
    .parameter "theConnection"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljavax/sql/PooledConnection;Ljava/sql/SQLException;)V
    .registers 3
    .parameter "theConnection"
    .parameter "theException"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 65
    iput-object p2, p0, Ljavax/sql/ConnectionEvent;->theSQLException:Ljava/sql/SQLException;

    .line 66
    return-void
.end method


# virtual methods
.method public getSQLException()Ljava/sql/SQLException;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Ljavax/sql/ConnectionEvent;->theSQLException:Ljava/sql/SQLException;

    return-object v0
.end method
