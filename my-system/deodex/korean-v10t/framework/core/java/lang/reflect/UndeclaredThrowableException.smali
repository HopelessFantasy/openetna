.class public Ljava/lang/reflect/UndeclaredThrowableException;
.super Ljava/lang/RuntimeException;
.source "UndeclaredThrowableException.java"


# static fields
.field private static final serialVersionUID:J = 0x494d8dc73f9fcffL


# instance fields
.field private undeclaredThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "exception"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 45
    iput-object p1, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .parameter "exception"
    .parameter "detailMessage"

    .prologue
    .line 62
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 65
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getUndeclaredThrowable()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;->undeclaredThrowable:Ljava/lang/Throwable;

    return-object v0
.end method
