.class public final Ljava/lang/StackTraceElement;
.super Ljava/lang/Object;
.source "StackTraceElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NATIVE_LINE_NUMBER:I = -0x2

.field private static final serialVersionUID:J = 0x6109c59a2636dd85L


# instance fields
.field declaringClass:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field lineNumber:I

.field methodName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter "cls"
    .parameter "method"
    .parameter "file"
    .parameter "line"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 67
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_d
    iput-object p1, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    .line 72
    iput p4, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    .line 73
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 105
    instance-of v3, p1, Ljava/lang/StackTraceElement;

    if-nez v3, :cond_7

    move v3, v5

    .line 138
    :goto_6
    return v3

    .line 108
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/lang/StackTraceElement;

    move-object v1, v0

    .line 114
    .local v1, castObj:Ljava/lang/StackTraceElement;
    iget-object v3, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, v1, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    if-nez v3, :cond_15

    :cond_13
    move v3, v5

    .line 115
    goto :goto_6

    .line 118
    :cond_15
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    move v3, v5

    .line 119
    goto :goto_6

    .line 121
    :cond_25
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    move v3, v5

    .line 122
    goto :goto_6

    .line 124
    :cond_35
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, localFileName:Ljava/lang/String;
    if-nez v2, :cond_43

    .line 126
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4f

    move v3, v5

    .line 127
    goto :goto_6

    .line 130
    :cond_43
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    move v3, v5

    .line 131
    goto :goto_6

    .line 134
    :cond_4f
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    if-eq v3, v4, :cond_5b

    move v3, v5

    .line 135
    goto :goto_6

    .line 138
    :cond_5b
    const/4 v3, 0x1

    goto :goto_6
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "<unknown class>"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    goto :goto_6
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Ljava/lang/StackTraceElement;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "<unknown method>"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    goto :goto_6
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 196
    const/4 v0, 0x0

    .line 199
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljava/lang/StackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/lang/StackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    goto :goto_5
.end method

.method public isNativeMethod()Z
    .registers 3

    .prologue
    .line 212
    iget v0, p0, Ljava/lang/StackTraceElement;->lineNumber:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 220
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 225
    const-string v3, "(Native Method)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :goto_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 227
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, fName:Ljava/lang/String;
    if-nez v1, :cond_36

    .line 230
    const-string v3, "(Unknown Source)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 232
    :cond_36
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    .line 234
    .local v2, lineNum:I
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-ltz v2, :cond_4c

    .line 237
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    :cond_4c
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25
.end method
