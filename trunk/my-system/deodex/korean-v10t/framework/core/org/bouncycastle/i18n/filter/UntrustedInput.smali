.class public Lorg/bouncycastle/i18n/filter/UntrustedInput;
.super Ljava/lang/Object;
.source "UntrustedInput.java"


# instance fields
.field protected input:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter "input"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/i18n/filter/UntrustedInput;->input:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public getInput()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lorg/bouncycastle/i18n/filter/UntrustedInput;->input:Ljava/lang/Object;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/bouncycastle/i18n/filter/UntrustedInput;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/bouncycastle/i18n/filter/UntrustedInput;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
