.class public Lorg/bouncycastle/i18n/LocalizedException;
.super Ljava/lang/Exception;
.source "LocalizedException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field protected message:Lorg/bouncycastle/i18n/ErrorBundle;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/i18n/ErrorBundle;->getText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedException;->message:Lorg/bouncycastle/i18n/ErrorBundle;

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/i18n/ErrorBundle;->getText(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedException;->message:Lorg/bouncycastle/i18n/ErrorBundle;

    .line 33
    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedException;->cause:Ljava/lang/Throwable;

    .line 34
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedException;->message:Lorg/bouncycastle/i18n/ErrorBundle;

    return-object v0
.end method
