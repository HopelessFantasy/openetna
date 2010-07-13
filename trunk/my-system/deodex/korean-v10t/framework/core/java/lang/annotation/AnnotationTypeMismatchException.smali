.class public Ljava/lang/annotation/AnnotationTypeMismatchException;
.super Ljava/lang/RuntimeException;
.source "AnnotationTypeMismatchException.java"


# static fields
.field private static final serialVersionUID:J = 0x70c5160eddbf1a8fL


# instance fields
.field private element:Ljava/lang/reflect/Method;

.field private foundType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .registers 4
    .parameter "element"
    .parameter "foundType"

    .prologue
    .line 52
    const-string v0, "annotation.1"

    invoke-static {v0, p1, p2}, Lorg/apache/harmony/annotation/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->element:Ljava/lang/reflect/Method;

    .line 54
    iput-object p2, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public element()Ljava/lang/reflect/Method;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->element:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public foundType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ljava/lang/annotation/AnnotationTypeMismatchException;->foundType:Ljava/lang/String;

    return-object v0
.end method
