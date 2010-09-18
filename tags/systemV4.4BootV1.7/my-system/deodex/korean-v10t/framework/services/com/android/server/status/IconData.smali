.class public Lcom/android/server/status/IconData;
.super Ljava/lang/Object;
.source "IconData.java"


# static fields
.field public static final ICON:I = 0x2

.field public static final TEXT:I = 0x1


# instance fields
.field public iconId:I

.field public iconLevel:I

.field public iconPackage:Ljava/lang/String;

.field public number:I

.field public slot:Ljava/lang/String;

.field public text:Ljava/lang/CharSequence;

.field public type:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;
    .registers 7
    .parameter "slot"
    .parameter "iconPackage"
    .parameter "iconId"
    .parameter "iconLevel"
    .parameter "number"

    .prologue
    .line 57
    new-instance v0, Lcom/android/server/status/IconData;

    invoke-direct {v0}, Lcom/android/server/status/IconData;-><init>()V

    .line 58
    .local v0, data:Lcom/android/server/status/IconData;
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/status/IconData;->type:I

    .line 59
    iput-object p0, v0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    .line 60
    iput-object p1, v0, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    .line 61
    iput p2, v0, Lcom/android/server/status/IconData;->iconId:I

    .line 62
    iput p3, v0, Lcom/android/server/status/IconData;->iconLevel:I

    .line 63
    iput p4, v0, Lcom/android/server/status/IconData;->number:I

    .line 64
    return-object v0
.end method

.method public static makeText(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/server/status/IconData;
    .registers 4
    .parameter "slot"
    .parameter "text"

    .prologue
    .line 68
    new-instance v0, Lcom/android/server/status/IconData;

    invoke-direct {v0}, Lcom/android/server/status/IconData;-><init>()V

    .line 69
    .local v0, data:Lcom/android/server/status/IconData;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/status/IconData;->type:I

    .line 70
    iput-object p0, v0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    .line 71
    iput-object p1, v0, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    .line 72
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/android/server/status/IconData;
    .registers 2

    .prologue
    .line 86
    new-instance v0, Lcom/android/server/status/IconData;

    invoke-direct {v0}, Lcom/android/server/status/IconData;-><init>()V

    .line 87
    .local v0, that:Lcom/android/server/status/IconData;
    invoke-virtual {v0, p0}, Lcom/android/server/status/IconData;->copyFrom(Lcom/android/server/status/IconData;)V

    .line 88
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/android/server/status/IconData;->clone()Lcom/android/server/status/IconData;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/android/server/status/IconData;)V
    .registers 3
    .parameter "that"

    .prologue
    .line 76
    iget v0, p1, Lcom/android/server/status/IconData;->type:I

    iput v0, p0, Lcom/android/server/status/IconData;->type:I

    .line 77
    iget-object v0, p1, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    .line 79
    iget v0, p1, Lcom/android/server/status/IconData;->iconId:I

    iput v0, p0, Lcom/android/server/status/IconData;->iconId:I

    .line 80
    iget v0, p1, Lcom/android/server/status/IconData;->iconLevel:I

    iput v0, p0, Lcom/android/server/status/IconData;->iconLevel:I

    .line 81
    iget v0, p1, Lcom/android/server/status/IconData;->number:I

    iput v0, p0, Lcom/android/server/status/IconData;->number:I

    .line 82
    iget-object v0, p1, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const-string v5, "null"

    const-string v2, "IconData(slot="

    const-string v4, ")"

    const-string v3, "\'"

    .line 92
    iget v0, p0, Lcom/android/server/status/IconData;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_56

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconData(slot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    if-eqz v1, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_51
    return-object v0

    .line 93
    :cond_52
    const-string v1, "null"

    move-object v1, v5

    goto :goto_37

    .line 96
    :cond_56
    iget v0, p0, Lcom/android/server/status/IconData;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconData(slot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    if-eqz v1, :cond_bc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/IconData;->slot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/IconData;->iconPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/status/IconData;->iconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iconLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/status/IconData;->iconLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_bc
    const-string v1, "null"

    move-object v1, v5

    goto :goto_85

    .line 103
    :cond_c0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconData(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/status/IconData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_51
.end method
