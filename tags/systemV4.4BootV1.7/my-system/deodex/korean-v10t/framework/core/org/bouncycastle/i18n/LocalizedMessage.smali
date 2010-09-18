.class public Lorg/bouncycastle/i18n/LocalizedMessage;
.super Ljava/lang/Object;
.source "LocalizedMessage.java"


# instance fields
.field protected arguments:[Ljava/lang/Object;

.field protected filter:Lorg/bouncycastle/i18n/filter/Filter;

.field protected filteredArguments:[Ljava/lang/Object;

.field protected final id:Ljava/lang/String;

.field protected final resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "resource"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    .line 34
    if-eqz p1, :cond_a

    if-nez p2, :cond_10

    .line 36
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38
    :cond_10
    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filteredArguments:[Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "resource"
    .parameter "id"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    .line 54
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-nez p3, :cond_12

    .line 56
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_12
    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    .line 61
    iput-object p3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filteredArguments:[Ljava/lang/Object;

    .line 62
    return-void
.end method


# virtual methods
.method protected formatWithTimeZone(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 10
    .parameter "template"
    .parameter "arguments"
    .parameter "locale"
    .parameter "timezone"

    .prologue
    .line 104
    new-instance v2, Ljava/text/MessageFormat;

    const-string v4, " "

    invoke-direct {v2, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, mf:Ljava/text/MessageFormat;
    invoke-virtual {v2, p3}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 106
    invoke-virtual {v2, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 109
    invoke-virtual {v2}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v0

    .line 110
    .local v0, formats:[Ljava/text/Format;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    array-length v4, v0

    if-ge v1, v4, :cond_32

    .line 112
    aget-object v4, v0, v1

    instance-of v4, v4, Ljava/text/DateFormat;

    if-eqz v4, :cond_2f

    .line 114
    aget-object v3, v0, v1

    check-cast v3, Ljava/text/DateFormat;

    .line 115
    .local v3, temp:Ljava/text/DateFormat;
    invoke-virtual {v3, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 116
    invoke-virtual {v2, v1, v3}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    .line 110
    .end local v3           #temp:Ljava/text/DateFormat;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 120
    .end local v0           #formats:[Ljava/text/Format;
    .end local v1           #i:I
    :cond_32
    invoke-virtual {v2, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getArguments()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .registers 12
    .parameter "key"
    .parameter "loc"
    .parameter "timezone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/i18n/MissingEntryException;
        }
    .end annotation

    .prologue
    const-string v7, "."

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, entry:Ljava/lang/String;
    :try_start_1b
    iget-object v4, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 80
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, template:Ljava/lang/String;
    iget-object v4, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    array-length v4, v4

    if-nez v4, :cond_30

    :cond_2e
    move-object v4, v3

    .line 87
    :goto_2f
    return-object v4

    :cond_30
    iget-object v4, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filteredArguments:[Ljava/lang/Object;

    invoke-virtual {p0, v3, v4, p2, p3}, Lorg/bouncycastle/i18n/LocalizedMessage;->formatWithTimeZone(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/util/MissingResourceException; {:try_start_1b .. :try_end_35} :catch_37

    move-result-object v4

    goto :goto_2f

    .line 90
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    .end local v3           #template:Ljava/lang/String;
    :catch_37
    move-exception v4

    move-object v2, v4

    .line 92
    .local v2, mre:Ljava/util/MissingResourceException;
    new-instance v4, Lorg/bouncycastle/i18n/MissingEntryException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in resource file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v1}, Lorg/bouncycastle/i18n/MissingEntryException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public getFilter()Lorg/bouncycastle/i18n/filter/Filter;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V
    .registers 5
    .parameter "filter"

    .prologue
    .line 129
    if-nez p1, :cond_9

    .line 131
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filteredArguments:[Ljava/lang/Object;

    .line 148
    :cond_6
    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    .line 149
    return-void

    .line 133
    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 135
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filteredArguments:[Ljava/lang/Object;

    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 138
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    if-eqz v1, :cond_3b

    .line 140
    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filteredArguments:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/i18n/filter/Filter;->doFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 136
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 144
    :cond_3b
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filteredArguments:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:[Ljava/lang/Object;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_38
.end method
