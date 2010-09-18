.class public abstract Lcom/android/mms/dom/smil/ElementTimeImpl;
.super Ljava/lang/Object;
.source "ElementTimeImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementTime;


# static fields
.field private static final FILLDEFAULT_ATTRIBUTE_NAME:Ljava/lang/String; = "fillDefault"

.field private static final FILL_ATTRIBUTE_NAME:Ljava/lang/String; = "fill"

.field private static final FILL_AUTO_ATTRIBUTE:Ljava/lang/String; = "auto"

.field private static final FILL_FREEZE_ATTRIBUTE:Ljava/lang/String; = "freeze"

.field private static final FILL_HOLD_ATTRIBUTE:Ljava/lang/String; = "hold"

.field private static final FILL_REMOVE_ATTRIBUTE:Ljava/lang/String; = "remove"

.field private static final FILL_TRANSITION_ATTRIBUTE:Ljava/lang/String; = "transition"

.field private static final TAG:Ljava/lang/String; = "ElementTimeImpl"


# instance fields
.field final mSmilElement:Lorg/w3c/dom/smil/SMILElement;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    .line 49
    return-void
.end method


# virtual methods
.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .registers 7

    .prologue
    .line 72
    iget-object v3, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v4, "begin"

    invoke-interface {v3, v4}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, beginTimeStringList:[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, beginTimeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/Time;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    array-length v3, v1

    if-ge v2, v3, :cond_28

    .line 79
    :try_start_17
    new-instance v3, Lcom/android/mms/dom/smil/TimeImpl;

    aget-object v4, v1, v2

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBeginConstraints()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_25} :catch_40

    .line 77
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 84
    :cond_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3a

    .line 104
    new-instance v3, Lcom/android/mms/dom/smil/TimeImpl;

    const-string v4, "0"

    const/16 v5, 0xff

    invoke-direct {v3, v4, v5}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3a
    new-instance v3, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v3, v0}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v3

    .line 80
    :catch_40
    move-exception v3

    goto :goto_25
.end method

.method getBeginConstraints()I
    .registers 2

    .prologue
    .line 53
    const/16 v0, 0xff

    return v0
.end method

.method public getDur()F
    .registers 5

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, dur:F
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v3, "dur"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, durString:Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 114
    invoke-static {v1}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_e} :catch_14

    move-result v2

    const/high16 v3, 0x447a

    div-float v0, v2, v3

    .line 119
    .end local v1           #durString:Ljava/lang/String;
    :cond_13
    :goto_13
    return v0

    .line 116
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method public getEnd()Lorg/w3c/dom/smil/TimeList;
    .registers 14

    .prologue
    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, endTimeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/Time;>;"
    iget-object v7, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v8, "end"

    invoke-interface {v7, v8}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, endTimeStringList:[Ljava/lang/String;
    array-length v6, v4

    .line 127
    .local v6, len:I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_20

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3e

    .line 129
    :cond_20
    const/4 v5, 0x0

    .local v5, i:I
    :goto_21
    if-ge v5, v6, :cond_3e

    .line 131
    :try_start_23
    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    aget-object v8, v4, v5

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_31} :catch_34

    .line 129
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 133
    :catch_34
    move-exception v7

    move-object v2, v7

    .line 135
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "ElementTimeImpl"

    const-string v8, "Malformed time value."

    invoke-static {v7, v8, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 141
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #i:I
    :cond_3e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5b

    .line 143
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v1

    .line 145
    .local v1, duration:F
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_61

    .line 146
    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    const-string v8, "indefinite"

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v1           #duration:F
    :cond_5b
    new-instance v7, Lcom/android/mms/dom/smil/TimeListImpl;

    invoke-direct {v7, v3}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v7

    .line 149
    .restart local v1       #duration:F
    :cond_61
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 150
    .local v0, begin:Lorg/w3c/dom/smil/TimeList;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_66
    invoke-interface {v0}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_5b

    .line 151
    new-instance v7, Lcom/android/mms/dom/smil/TimeImpl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v9

    float-to-double v11, v1

    add-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getEndConstraints()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v5, v5, 0x1

    goto :goto_66
.end method

.method getEndConstraints()I
    .registers 2

    .prologue
    .line 58
    const/16 v0, 0xff

    return v0
.end method

.method public getFill()S
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 163
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v3, "fill"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, fill:Ljava/lang/String;
    const-string v2, "freeze"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v4

    .line 202
    :goto_13
    return v2

    .line 166
    :cond_14
    const-string v2, "remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v5

    .line 167
    goto :goto_13

    .line 168
    :cond_1e
    const-string v2, "hold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v4

    .line 170
    goto :goto_13

    .line 171
    :cond_28
    const-string v2, "transition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    move v2, v4

    .line 173
    goto :goto_13

    .line 174
    :cond_32
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 180
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getFillDefault()S

    move-result v1

    .line 181
    .local v1, fillDefault:S
    const/4 v2, 0x2

    if-eq v1, v2, :cond_43

    move v2, v1

    .line 182
    goto :goto_13

    .line 196
    .end local v1           #fillDefault:S
    :cond_43
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v3, "dur"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v3, "end"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v3, "repeatCount"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7d

    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v3, "repeatDur"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7d

    move v2, v4

    .line 200
    goto :goto_13

    :cond_7d
    move v2, v5

    .line 202
    goto :goto_13
.end method

.method public getFillDefault()S
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 207
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v3, "fillDefault"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, fillDefault:Ljava/lang/String;
    const-string v2, "remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 209
    const/4 v2, 0x0

    .line 235
    :goto_13
    return v2

    .line 210
    :cond_14
    const-string v2, "freeze"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v4

    .line 211
    goto :goto_13

    .line 212
    :cond_1e
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v5

    .line 213
    goto :goto_13

    .line 214
    :cond_28
    const-string v2, "hold"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    move v2, v4

    .line 216
    goto :goto_13

    .line 217
    :cond_32
    const-string v2, "transition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move v2, v4

    .line 219
    goto :goto_13

    .line 227
    :cond_3c
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getParentElementTime()Lorg/w3c/dom/smil/ElementTime;

    move-result-object v1

    .line 228
    .local v1, parent:Lorg/w3c/dom/smil/ElementTime;
    if-nez v1, :cond_44

    move v2, v5

    .line 233
    goto :goto_13

    .line 235
    :cond_44
    check-cast v1, Lcom/android/mms/dom/smil/ElementTimeImpl;

    .end local v1           #parent:Lorg/w3c/dom/smil/ElementTime;
    invoke-virtual {v1}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getFillDefault()S

    move-result v2

    goto :goto_13
.end method

.method abstract getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
.end method

.method public getRepeatCount()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 241
    iget-object v3, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v4, "repeatCount"

    invoke-interface {v3, v4}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, repeatCount:Ljava/lang/String;
    :try_start_9
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_15

    move-result v2

    .line 244
    .local v2, value:F
    cmpl-float v3, v2, v5

    if-lez v3, :cond_13

    move v3, v2

    .line 250
    .end local v2           #value:F
    :goto_12
    return v3

    .restart local v2       #value:F
    :cond_13
    move v3, v5

    .line 247
    goto :goto_12

    .line 249
    .end local v2           #value:F
    :catch_15
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v3, v5

    .line 250
    goto :goto_12
.end method

.method public getRepeatDur()F
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 256
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v3, "repeatDur"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_c} :catch_15

    move-result v1

    .line 258
    .local v1, repeatDur:F
    cmpl-float v2, v1, v4

    if-lez v2, :cond_13

    move v2, v1

    .line 264
    .end local v1           #repeatDur:F
    :goto_12
    return v2

    .restart local v1       #repeatDur:F
    :cond_13
    move v2, v4

    .line 261
    goto :goto_12

    .line 263
    .end local v1           #repeatDur:F
    :catch_15
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalArgumentException;
    move v2, v4

    .line 264
    goto :goto_12
.end method

.method public getRestart()S
    .registers 4

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v2, "restart"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, restart:Ljava/lang/String;
    const-string v1, "never"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 271
    const/4 v1, 0x1

    .line 275
    :goto_11
    return v1

    .line 272
    :cond_12
    const-string v1, "whenNotActive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 273
    const/4 v1, 0x2

    goto :goto_11

    .line 275
    :cond_1c
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public setBegin(Lorg/w3c/dom/smil/TimeList;)V
    .registers 5
    .parameter "begin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "begin"

    const-string v2, "indefinite"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public setDur(F)V
    .registers 6
    .parameter "dur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "dur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x447a

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public setEnd(Lorg/w3c/dom/smil/TimeList;)V
    .registers 5
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "end"

    const-string v2, "indefinite"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setFill(S)V
    .registers 5
    .parameter "fill"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const-string v2, "fill"

    .line 296
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 297
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "fill"

    const-string v1, "freeze"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_e
    return-void

    .line 299
    :cond_f
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "fill"

    const-string v1, "remove"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public setFillDefault(S)V
    .registers 5
    .parameter "fillDefault"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const-string v2, "fillDefault"

    .line 304
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 305
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "fillDefault"

    const-string v1, "freeze"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_e
    return-void

    .line 307
    :cond_f
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "fillDefault"

    const-string v1, "remove"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public setRepeatCount(F)V
    .registers 5
    .parameter "repeatCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v0, "indefinite"

    .line 313
    .local v0, repeatCountString:Ljava/lang/String;
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_b

    .line 314
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_b
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v2, "repeatCount"

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public setRepeatDur(F)V
    .registers 5
    .parameter "repeatDur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 320
    const-string v0, "indefinite"

    .line 321
    .local v0, repeatDurString:Ljava/lang/String;
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1e

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_1e
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v2, "repeatDur"

    invoke-interface {v1, v2, v0}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public setRestart(S)V
    .registers 5
    .parameter "restart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const-string v2, "restart"

    .line 328
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 329
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "restart"

    const-string v1, "never"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_e
    return-void

    .line 330
    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1c

    .line 331
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "restart"

    const-string v1, "whenNotActive"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 333
    :cond_1c
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "restart"

    const-string v1, "always"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method
