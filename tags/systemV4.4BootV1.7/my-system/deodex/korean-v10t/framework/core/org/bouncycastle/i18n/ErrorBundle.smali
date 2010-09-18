.class public Lorg/bouncycastle/i18n/ErrorBundle;
.super Lorg/bouncycastle/i18n/MessageBundle;
.source "ErrorBundle.java"


# static fields
.field public static final DETAIL_ENTRY:Ljava/lang/String; = "details"

.field public static final SUMMARY_ENTRY:Ljava/lang/String; = "summary"


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
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/i18n/MessageBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
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
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/i18n/MessageBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getDetail(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .parameter "loc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/i18n/MissingEntryException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v0, "details"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/i18n/ErrorBundle;->getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetail(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 4
    .parameter "loc"
    .parameter "timezone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/i18n/MissingEntryException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "details"

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/i18n/ErrorBundle;->getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4
    .parameter "loc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/i18n/MissingEntryException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v0, "summary"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/i18n/ErrorBundle;->getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary(Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 4
    .parameter "loc"
    .parameter "timezone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/i18n/MissingEntryException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "summary"

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/i18n/ErrorBundle;->getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
