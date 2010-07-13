.class public Ljava/text/MessageFormat$Field;
.super Ljava/text/Format$Field;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final ARGUMENT:Ljava/text/MessageFormat$Field; = null

.field private static final serialVersionUID:J = 0x6da23d2c7b46bfaaL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1371
    new-instance v0, Ljava/text/MessageFormat$Field;

    const-string v1, "message argument field"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "fieldName"

    .prologue
    .line 1382
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 1383
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    const-string v4, "text.18"

    const-string v3, "MessageFormat.Field"

    .line 1395
    invoke-virtual {p0}, Ljava/text/MessageFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1396
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_18

    .line 1399
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "text.18"

    const-string v2, "MessageFormat.Field"

    invoke-static {v4, v3}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1403
    :cond_18
    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    invoke-virtual {v1}, Ljava/text/MessageFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1404
    sget-object v1, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    return-object v1

    .line 1407
    :cond_27
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "text.18"

    const-string v2, "MessageFormat.Field"

    invoke-static {v4, v3}, Lorg/apache/harmony/text/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
