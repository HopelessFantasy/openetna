.class public Ljavax/xml/parsers/FactoryConfigurationError;
.super Ljava/lang/Error;
.source "FactoryConfigurationError.java"


# instance fields
.field private cause:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .parameter "cause"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 59
    iput-object p1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->cause:Ljava/lang/Exception;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 3
    .parameter "cause"
    .parameter "message"

    .prologue
    .line 76
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->cause:Ljava/lang/Exception;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Ljavax/xml/parsers/FactoryConfigurationError;->cause:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 116
    invoke-super {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, message:Ljava/lang/String;
    if-eqz v0, :cond_8

    move-object v1, v0

    .line 123
    :goto_7
    return-object v1

    .line 120
    :cond_8
    iget-object v1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->cause:Ljava/lang/Exception;

    if-eqz v1, :cond_13

    .line 121
    iget-object v1, p0, Ljavax/xml/parsers/FactoryConfigurationError;->cause:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 123
    :cond_13
    const/4 v1, 0x0

    goto :goto_7
.end method
