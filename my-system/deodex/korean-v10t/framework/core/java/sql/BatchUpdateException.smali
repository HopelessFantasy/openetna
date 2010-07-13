.class public Ljava/sql/BatchUpdateException;
.super Ljava/sql/SQLException;
.source "BatchUpdateException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x52f473c0c18b0e5dL


# instance fields
.field private updateCounts:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[I)V
    .registers 6
    .parameter "reason"
    .parameter "SQLState"
    .parameter "vendorCode"
    .parameter "updateCounts"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 138
    iput-object p4, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 5
    .parameter "reason"
    .parameter "SQLState"
    .parameter "updateCounts"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 115
    iput-object p3, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I)V
    .registers 4
    .parameter "reason"
    .parameter "updateCounts"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 93
    iput-object p2, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 94
    return-void
.end method

.method public constructor <init>([I)V
    .registers 3
    .parameter "updateCounts"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 74
    iput-object p1, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    .line 75
    return-void
.end method


# virtual methods
.method public getUpdateCounts()[I
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Ljava/sql/BatchUpdateException;->updateCounts:[I

    return-object v0
.end method
