.class public Ljava/sql/SQLException;
.super Ljava/lang/Exception;
.source "SQLException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1da1e930db3e75dcL


# instance fields
.field private SQLState:Ljava/lang/String;

.field private next:Ljava/sql/SQLException;

.field private vendorCode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 51
    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 55
    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "theReason"

    .prologue
    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "theReason"
    .parameter "theSQLState"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "theReason"
    .parameter "theSQLState"
    .parameter "theErrorCode"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 55
    iput-object v1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 109
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 110
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 111
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Ljava/sql/SQLException;->vendorCode:I

    return v0
.end method

.method public getNextException()Ljava/sql/SQLException;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-object v0
.end method

.method public getSQLState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    return-object v0
.end method

.method public setNextException(Ljava/sql/SQLException;)V
    .registers 3
    .parameter "ex"

    .prologue
    .line 162
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    if-eqz v0, :cond_a

    .line 163
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    .line 167
    :goto_9
    return-void

    .line 165
    :cond_a
    iput-object p1, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    goto :goto_9
.end method
