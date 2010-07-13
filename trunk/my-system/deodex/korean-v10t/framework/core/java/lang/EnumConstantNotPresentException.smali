.class public Ljava/lang/EnumConstantNotPresentException;
.super Ljava/lang/RuntimeException;
.source "EnumConstantNotPresentException.java"


# static fields
.field private static final serialVersionUID:J = -0x53eb411e0ac4dd94L


# instance fields
.field private final constantName:Ljava/lang/String;

.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "constantName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, enumType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Enum;>;"
    const-string v0, "luni.03"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Ljava/lang/EnumConstantNotPresentException;->enumType:Ljava/lang/Class;

    .line 52
    iput-object p2, p0, Ljava/lang/EnumConstantNotPresentException;->constantName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public constantName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Ljava/lang/EnumConstantNotPresentException;->constantName:Ljava/lang/String;

    return-object v0
.end method

.method public enumType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Ljava/lang/EnumConstantNotPresentException;->enumType:Ljava/lang/Class;

    return-object v0
.end method
