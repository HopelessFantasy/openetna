.class public Lorg/bouncycastle/i18n/TextBundle;
.super Lorg/bouncycastle/i18n/LocalizedMessage;
.source "TextBundle.java"


# static fields
.field public static final TEXT_ENTRY:Ljava/lang/String; = "text"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "resource"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .parameter "resource"
    .parameter "id"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/i18n/LocalizedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getText(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .parameter "loc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/i18n/MissingEntryException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "text"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/i18n/TextBundle;->getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 4
    .parameter "loc"
    .parameter "timezone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/i18n/MissingEntryException;
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "text"

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/i18n/TextBundle;->getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
