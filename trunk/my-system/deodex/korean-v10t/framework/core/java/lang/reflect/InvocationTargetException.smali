.class public Ljava/lang/reflect/InvocationTargetException;
.super Ljava/lang/Exception;
.source "InvocationTargetException.java"


# static fields
.field private static final serialVersionUID:J = 0x38b1268ed671246fL


# instance fields
.field private target:Ljava/lang/Throwable;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    iput-object p1, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .parameter "exception"
    .parameter "detailMessage"

    .prologue
    .line 73
    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iput-object p1, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    .line 75
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTargetException()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Ljava/lang/reflect/InvocationTargetException;->target:Ljava/lang/Throwable;

    return-object v0
.end method
