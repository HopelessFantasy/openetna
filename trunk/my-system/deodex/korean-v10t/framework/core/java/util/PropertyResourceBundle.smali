.class public Ljava/util/PropertyResourceBundle;
.super Ljava/util/ResourceBundle;
.source "PropertyResourceBundle.java"


# instance fields
.field resources:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    .line 49
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Ljava/util/PropertyResourceBundle;)Ljava/util/Enumeration;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/PropertyResourceBundle;->getLocalKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private getLocalKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v0, :cond_9

    .line 60
    invoke-direct {p0}, Ljava/util/PropertyResourceBundle;->getLocalKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 62
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/util/PropertyResourceBundle$1;

    invoke-direct {v0, p0}, Ljava/util/PropertyResourceBundle$1;-><init>(Ljava/util/PropertyResourceBundle;)V

    goto :goto_8
.end method

.method public handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 107
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
