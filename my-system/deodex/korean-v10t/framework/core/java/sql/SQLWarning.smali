.class public Ljava/sql/SQLWarning;
.super Ljava/sql/SQLException;
.source "SQLWarning.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x365d2d0aa3e484d8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "theReason"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "theReason"
    .parameter "theSQLState"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "theReason"
    .parameter "theSQLState"
    .parameter "theErrorCode"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    return-void
.end method


# virtual methods
.method public getNextWarning()Ljava/sql/SQLWarning;
    .registers 4

    .prologue
    .line 98
    invoke-super {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    .line 99
    .local v0, next:Ljava/sql/SQLException;
    if-nez v0, :cond_8

    .line 100
    const/4 v1, 0x0

    .line 103
    .end local v0           #next:Ljava/sql/SQLException;
    :goto_7
    return-object v1

    .line 102
    .restart local v0       #next:Ljava/sql/SQLException;
    :cond_8
    instance-of v1, v0, Ljava/sql/SQLWarning;

    if-eqz v1, :cond_10

    .line 103
    check-cast v0, Ljava/sql/SQLWarning;

    .end local v0           #next:Ljava/sql/SQLException;
    move-object v1, v0

    goto :goto_7

    .line 105
    .restart local v0       #next:Ljava/sql/SQLException;
    :cond_10
    new-instance v1, Ljava/lang/Error;

    const-string v2, "sql.8"

    invoke-static {v2}, Lorg/apache/harmony/sql/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setNextWarning(Ljava/sql/SQLWarning;)V
    .registers 2
    .parameter "w"

    .prologue
    .line 116
    invoke-super {p0, p1}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    .line 117
    return-void
.end method
