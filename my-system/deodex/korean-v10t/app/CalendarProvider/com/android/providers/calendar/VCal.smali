.class public Lcom/android/providers/calendar/VCal;
.super Ljava/lang/Object;
.source "VCal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/VCal$Begin;,
        Lcom/android/providers/calendar/VCal$Property;,
        Lcom/android/providers/calendar/VCal$Parameter;
    }
.end annotation


# static fields
.field public static final LINE:Ljava/util/regex/Pattern;


# instance fields
.field public allDay:Z

.field public dtstart:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/calendar/VCal$Property;",
            ">;"
        }
    .end annotation
.end field

.field public rrule:Ljava/lang/String;

.field public tzid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "([^:;]+)([^:]*):(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/VCal;->LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/VCal;->properties:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public static dump(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/calendar/VCal$Property;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 56
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v2, :cond_48

    .line 57
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/calendar/VCal$Property;

    .line 58
    .local v4, prop:Lcom/android/providers/calendar/VCal$Property;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/providers/calendar/VCal$Property;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    instance-of v5, v4, Lcom/android/providers/calendar/VCal$Begin;

    if-eqz v5, :cond_45

    .line 60
    move-object v0, v4

    check-cast v0, Lcom/android/providers/calendar/VCal$Begin;

    move-object v1, v0

    .line 61
    .local v1, b:Lcom/android/providers/calendar/VCal$Begin;
    iget-object v5, v1, Lcom/android/providers/calendar/VCal$Begin;->properties:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/providers/calendar/VCal;->dump(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 56
    .end local v1           #b:Lcom/android/providers/calendar/VCal$Begin;
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 64
    .end local v4           #prop:Lcom/android/providers/calendar/VCal$Property;
    :cond_48
    return-void
.end method

.method public static make(Ljava/lang/String;)Lcom/android/providers/calendar/VCal$Property;
    .registers 3
    .parameter "name"

    .prologue
    .line 90
    const-string v1, "BEGIN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 91
    new-instance v0, Lcom/android/providers/calendar/VCal$Begin;

    invoke-direct {v0}, Lcom/android/providers/calendar/VCal$Begin;-><init>()V

    .line 96
    .local v0, p:Lcom/android/providers/calendar/VCal$Property;
    :goto_d
    iput-object p0, v0, Lcom/android/providers/calendar/VCal$Property;->name:Ljava/lang/String;

    .line 97
    return-object v0

    .line 94
    .end local v0           #p:Lcom/android/providers/calendar/VCal$Property;
    :cond_10
    new-instance v0, Lcom/android/providers/calendar/VCal$Property;

    invoke-direct {v0}, Lcom/android/providers/calendar/VCal$Property;-><init>()V

    .restart local v0       #p:Lcom/android/providers/calendar/VCal$Property;
    goto :goto_d
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/providers/calendar/VCal;
    .registers 22
    .parameter "str"

    .prologue
    .line 102
    new-instance v17, Lcom/android/providers/calendar/VCal;

    invoke-direct/range {v17 .. v17}, Lcom/android/providers/calendar/VCal;-><init>()V

    .line 109
    .local v17, vc:Lcom/android/providers/calendar/VCal;
    const-string v5, "\r\n "

    const-string v6, ""

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 112
    const-string v5, "\r\n"

    const-string v6, "\n"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 113
    const-string v5, "\r"

    const-string v6, "\n"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v13, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Parameter;>;"
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/calendar/VCal;->properties:Ljava/util/ArrayList;

    move-object v7, v0

    .line 119
    .local v7, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    const-string v5, "\n"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 121
    .local v11, lines:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 123
    .local v5, begin:Lcom/android/providers/calendar/VCal$Begin;
    move-object v0, v11

    array-length v0, v0

    move/from16 p0, v0

    .line 124
    .local p0, N:I
    const/4 v6, 0x0

    .local v6, j:I
    move-object v12, v7

    .end local v7           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .local v12, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    move v9, v6

    .end local v6           #j:I
    .local v9, j:I
    move-object v6, v5

    .end local v5           #begin:Lcom/android/providers/calendar/VCal$Begin;
    .local v6, begin:Lcom/android/providers/calendar/VCal$Begin;
    :goto_45
    move v0, v9

    move/from16 v1, p0

    if-ge v0, v1, :cond_178

    .line 126
    aget-object v10, v11, v9

    .line 127
    .local v10, line:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .line 128
    .local v5, len:I
    if-lez v5, :cond_274

    .line 129
    const/4 v5, 0x0

    .line 132
    .local v5, i:I
    :goto_53
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 133
    .local v7, c:C
    add-int/lit8 v8, v5, 0x1

    .line 134
    .end local v5           #i:I
    .local v8, i:I
    const/16 v5, 0x3b

    if-eq v7, v5, :cond_61

    const/16 v5, 0x3a

    if-ne v7, v5, :cond_271

    .line 136
    :cond_61
    const/4 v5, 0x0

    const/4 v14, 0x1

    sub-int v14, v8, v14

    invoke-virtual {v10, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, n:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/calendar/VCal;->make(Ljava/lang/String;)Lcom/android/providers/calendar/VCal$Property;

    move-result-object v14

    .line 138
    .local v14, prop:Lcom/android/providers/calendar/VCal$Property;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v15, "BEGIN"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e2

    .line 140
    move-object v0, v14

    check-cast v0, Lcom/android/providers/calendar/VCal$Begin;

    move-object v5, v0

    .line 141
    .local v5, b:Lcom/android/providers/calendar/VCal$Begin;
    iput-object v6, v5, Lcom/android/providers/calendar/VCal$Begin;->parent:Lcom/android/providers/calendar/VCal$Begin;

    .line 142
    move-object v5, v5

    .line 143
    .end local v6           #begin:Lcom/android/providers/calendar/VCal$Begin;
    .local v5, begin:Lcom/android/providers/calendar/VCal$Begin;
    iget-object v6, v5, Lcom/android/providers/calendar/VCal$Begin;->properties:Ljava/util/ArrayList;

    .end local v12           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .local v6, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    move-object v15, v6

    .end local v6           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .local v15, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    move-object v6, v5

    .line 155
    .end local v5           #begin:Lcom/android/providers/calendar/VCal$Begin;
    .local v6, begin:Lcom/android/providers/calendar/VCal$Begin;
    :goto_83
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 156
    :goto_86
    const/16 v5, 0x3b

    if-ne v7, v5, :cond_121

    .line 157
    new-instance v12, Lcom/android/providers/calendar/VCal$Parameter;

    invoke-direct {v12}, Lcom/android/providers/calendar/VCal$Parameter;-><init>()V

    .line 158
    .local v12, param:Lcom/android/providers/calendar/VCal$Parameter;
    move/from16 v16, v8

    .line 159
    .local v16, start:I
    add-int/lit8 v5, v8, 0x1

    .end local v8           #i:I
    .local v5, i:I
    move/from16 v20, v7

    .end local v7           #c:C
    .local v20, c:C
    move v7, v5

    .end local v5           #i:I
    .local v7, i:I
    move/from16 v5, v20

    .line 162
    .end local v20           #c:C
    .local v5, c:C
    :cond_98
    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 164
    const/16 v8, 0x3d

    if-ne v5, v8, :cond_98

    .line 165
    const/4 v8, 0x1

    sub-int v8, v7, v8

    move-object v0, v10

    move/from16 v1, v16

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v12, Lcom/android/providers/calendar/VCal$Parameter;->name:Ljava/lang/String;

    .line 167
    move v8, v7

    .line 168
    .end local v16           #start:I
    .local v8, start:I
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v18, 0x22

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_fb

    .line 169
    add-int/lit8 v7, v7, 0x1

    .line 170
    add-int/lit8 v8, v8, 0x1

    .line 172
    :cond_c0
    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 173
    add-int/lit8 v7, v7, 0x1

    .line 174
    const/16 v16, 0x22

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_c0

    .line 175
    const/4 v5, 0x1

    sub-int v5, v7, v5

    invoke-virtual {v10, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v5           #c:C
    move-result-object v5

    iput-object v5, v12, Lcom/android/providers/calendar/VCal$Parameter;->value:Ljava/lang/String;

    .line 176
    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 177
    .restart local v5       #c:C
    add-int/lit8 v7, v7, 0x1

    .line 189
    :goto_dc
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v7

    .end local v7           #i:I
    .local v8, i:I
    move v7, v5

    .line 190
    .end local v5           #c:C
    .local v7, c:C
    goto :goto_86

    .line 145
    .end local v15           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .local v5, n:Ljava/lang/String;
    .local v12, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    :cond_e2
    const-string v15, "END"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .end local v5           #n:Ljava/lang/String;
    if-eqz v5, :cond_26e

    .line 146
    iget-object v5, v6, Lcom/android/providers/calendar/VCal$Begin;->parent:Lcom/android/providers/calendar/VCal$Begin;

    .line 147
    .end local v6           #begin:Lcom/android/providers/calendar/VCal$Begin;
    .local v5, begin:Lcom/android/providers/calendar/VCal$Begin;
    if-eqz v5, :cond_f3

    .line 148
    iget-object v6, v5, Lcom/android/providers/calendar/VCal$Begin;->properties:Ljava/util/ArrayList;

    .end local v12           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .local v6, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    move-object v15, v6

    .end local v6           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .restart local v15       #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    move-object v6, v5

    .end local v5           #begin:Lcom/android/providers/calendar/VCal$Begin;
    .local v6, begin:Lcom/android/providers/calendar/VCal$Begin;
    goto :goto_83

    .line 150
    .end local v6           #begin:Lcom/android/providers/calendar/VCal$Begin;
    .end local v15           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .restart local v5       #begin:Lcom/android/providers/calendar/VCal$Begin;
    .restart local v12       #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    :cond_f3
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/calendar/VCal;->properties:Ljava/util/ArrayList;

    move-object v6, v0

    .end local v12           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .local v6, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    move-object v15, v6

    .end local v6           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .restart local v15       #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    move-object v6, v5

    .end local v5           #begin:Lcom/android/providers/calendar/VCal$Begin;
    .local v6, begin:Lcom/android/providers/calendar/VCal$Begin;
    goto :goto_83

    .line 182
    .local v5, c:C
    .local v7, i:I
    .local v8, start:I
    .local v12, param:Lcom/android/providers/calendar/VCal$Parameter;
    :cond_fb
    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 183
    add-int/lit8 v7, v7, 0x1

    .line 184
    const/16 v16, 0x3b

    move v0, v5

    move/from16 v1, v16

    if-eq v0, v1, :cond_10f

    const/16 v16, 0x3a

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_fb

    .line 185
    :cond_10f
    const/16 v16, 0x1

    sub-int v16, v7, v16

    move-object v0, v10

    move v1, v8

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    iput-object v0, v1, Lcom/android/providers/calendar/VCal$Parameter;->value:Ljava/lang/String;

    goto :goto_dc

    .line 191
    .end local v5           #c:C
    .end local v12           #param:Lcom/android/providers/calendar/VCal$Parameter;
    .local v7, c:C
    .local v8, i:I
    :cond_121
    invoke-virtual {v13}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 192
    .local v5, array:[Ljava/lang/Object;
    array-length v12, v5

    new-array v12, v12, [Lcom/android/providers/calendar/VCal$Parameter;

    iput-object v12, v14, Lcom/android/providers/calendar/VCal$Property;->parameters:[Lcom/android/providers/calendar/VCal$Parameter;

    .line 193
    const/4 v12, 0x0

    move-object v0, v14

    iget-object v0, v0, Lcom/android/providers/calendar/VCal$Property;->parameters:[Lcom/android/providers/calendar/VCal$Parameter;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    move-object v0, v5

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v5

    move v1, v12

    move-object/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    const/16 v5, 0x3a

    if-eq v7, v5, :cond_161

    .line 195
    .end local v5           #array:[Ljava/lang/Object;
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0           #N:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error finding \':\' c="

    .end local v6           #begin:Lcom/android/providers/calendar/VCal$Begin;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    .restart local v6       #begin:Lcom/android/providers/calendar/VCal$Begin;
    .restart local p0       #N:I
    :cond_161
    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lcom/android/providers/calendar/VCal$Property;->value:Ljava/lang/String;

    .line 198
    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v14, Lcom/android/providers/calendar/VCal$Property;->values:[Ljava/lang/String;

    move-object v5, v6

    .end local v6           #begin:Lcom/android/providers/calendar/VCal$Begin;
    .local v5, begin:Lcom/android/providers/calendar/VCal$Begin;
    move-object v7, v15

    .line 124
    .end local v8           #i:I
    .end local v14           #prop:Lcom/android/providers/calendar/VCal$Property;
    .end local v15           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .local v7, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    :goto_171
    add-int/lit8 v6, v9, 0x1

    .end local v9           #j:I
    .local v6, j:I
    move-object v12, v7

    .end local v7           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .local v12, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    move v9, v6

    .end local v6           #j:I
    .restart local v9       #j:I
    move-object v6, v5

    .end local v5           #begin:Lcom/android/providers/calendar/VCal$Begin;
    .local v6, begin:Lcom/android/providers/calendar/VCal$Begin;
    goto/16 :goto_45

    .line 202
    .end local v10           #line:Ljava/lang/String;
    :cond_178
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/calendar/VCal;->properties:Ljava/util/ArrayList;

    move-object/from16 p0, v0

    .end local p0           #N:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 203
    .restart local p0       #N:I
    const/4 v5, 0x0

    .line 204
    .local v5, calStart:Ljava/util/Calendar;
    const/4 v6, 0x0

    .local v6, i:I
    move v9, v6

    .end local v6           #i:I
    .local v9, i:I
    move-object v6, v5

    .end local v5           #calStart:Ljava/util/Calendar;
    .end local v11           #lines:[Ljava/lang/String;
    .local v6, calStart:Ljava/util/Calendar;
    :goto_186
    move v0, v9

    move/from16 v1, p0

    if-ge v0, v1, :cond_25f

    .line 205
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/calendar/VCal;->properties:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/calendar/VCal$Property;

    .line 206
    .local v7, prop:Lcom/android/providers/calendar/VCal$Property;
    iget-object v10, v7, Lcom/android/providers/calendar/VCal$Property;->name:Ljava/lang/String;

    .line 207
    .local v10, n:Ljava/lang/String;
    const-string v5, "DTSTART"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d2

    .line 209
    :try_start_1a0
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/providers/calendar/VCal;->parseDateTime(Lcom/android/providers/calendar/VCal$Property;Lcom/android/providers/calendar/VCal;)Ljava/util/Calendar;
    :try_end_1a6
    .catch Landroid/pim/DateException; {:try_start_1a0 .. :try_end_1a6} :catch_1b3

    move-result-object v5

    .line 210
    .end local v6           #calStart:Ljava/util/Calendar;
    .restart local v5       #calStart:Ljava/util/Calendar;
    :try_start_1a7
    iget-object v6, v7, Lcom/android/providers/calendar/VCal$Property;->value:Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/calendar/VCal;->dtstart:Ljava/lang/String;
    :try_end_1ae
    .catch Landroid/pim/DateException; {:try_start_1a7 .. :try_end_1ae} :catch_265

    .line 204
    .end local v7           #prop:Lcom/android/providers/calendar/VCal$Property;
    :goto_1ae
    add-int/lit8 v6, v9, 0x1

    .end local v9           #i:I
    .local v6, i:I
    move v9, v6

    .end local v6           #i:I
    .restart local v9       #i:I
    move-object v6, v5

    .end local v5           #calStart:Ljava/util/Calendar;
    .local v6, calStart:Ljava/util/Calendar;
    goto :goto_186

    .line 211
    .restart local v7       #prop:Lcom/android/providers/calendar/VCal$Property;
    :catch_1b3
    move-exception p0

    move-object/from16 v5, p0

    move-object/from16 p0, v6

    .line 212
    .end local v6           #calStart:Ljava/util/Calendar;
    .local v5, de:Landroid/pim/DateException;
    .local p0, calStart:Ljava/util/Calendar;
    :goto_1b8
    const-string v6, "CalendarProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #prop:Lcom/android/providers/calendar/VCal$Property;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse DTSTART="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    const/4 v5, 0x0

    .line 241
    .end local v5           #de:Landroid/pim/DateException;
    .end local v10           #n:Ljava/lang/String;
    :goto_1d1
    return-object v5

    .line 215
    .restart local v6       #calStart:Ljava/util/Calendar;
    .restart local v7       #prop:Lcom/android/providers/calendar/VCal$Property;
    .restart local v10       #n:Ljava/lang/String;
    .local p0, N:I
    :cond_1d2
    const-string v5, "DTEND"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23b

    .line 220
    if-nez v6, :cond_1e5

    .line 221
    :try_start_1dc
    const-string v5, "+P0S"

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/calendar/VCal;->duration:Ljava/lang/String;

    .end local v7           #prop:Lcom/android/providers/calendar/VCal$Property;
    :goto_1e3
    move-object v5, v6

    .line 234
    .end local v6           #calStart:Ljava/util/Calendar;
    .local v5, calStart:Ljava/util/Calendar;
    goto :goto_1ae

    .line 223
    .end local v5           #calStart:Ljava/util/Calendar;
    .restart local v6       #calStart:Ljava/util/Calendar;
    .restart local v7       #prop:Lcom/android/providers/calendar/VCal$Property;
    :cond_1e5
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/providers/calendar/VCal;->parseDateTime(Lcom/android/providers/calendar/VCal$Property;Lcom/android/providers/calendar/VCal;)Ljava/util/Calendar;

    move-result-object v5

    .line 225
    .local v5, calEnd:Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .end local v7           #prop:Lcom/android/providers/calendar/VCal$Property;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    sub-long/2addr v7, v11

    .line 228
    .local v7, durationMillis:J
    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    .line 229
    .local v7, durationSeconds:J
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #calEnd:Ljava/util/Calendar;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+P"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "S"

    .end local v7           #durationSeconds:J
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/calendar/VCal;->duration:Ljava/lang/String;
    :try_end_216
    .catch Landroid/pim/DateException; {:try_start_1dc .. :try_end_216} :catch_217

    goto :goto_1e3

    .line 231
    :catch_217
    move-exception p0

    .line 232
    .local p0, de:Landroid/pim/DateException;
    const-string v5, "CalendarProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse DTEND="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const/16 p0, 0x0

    move-object/from16 v5, p0

    move-object/from16 p0, v6

    .end local v6           #calStart:Ljava/util/Calendar;
    .local p0, calStart:Ljava/util/Calendar;
    goto :goto_1d1

    .line 235
    .restart local v6       #calStart:Ljava/util/Calendar;
    .local v7, prop:Lcom/android/providers/calendar/VCal$Property;
    .local p0, N:I
    :cond_23b
    const-string v5, "DURATION"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24d

    .line 236
    iget-object v5, v7, Lcom/android/providers/calendar/VCal$Property;->value:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/calendar/VCal;->duration:Ljava/lang/String;

    move-object v5, v6

    .end local v6           #calStart:Ljava/util/Calendar;
    .local v5, calStart:Ljava/util/Calendar;
    goto/16 :goto_1ae

    .line 237
    .end local v5           #calStart:Ljava/util/Calendar;
    .restart local v6       #calStart:Ljava/util/Calendar;
    :cond_24d
    const-string v5, "RRULE"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25c

    .line 238
    iget-object v5, v7, Lcom/android/providers/calendar/VCal$Property;->value:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/calendar/VCal;->rrule:Ljava/lang/String;

    :cond_25c
    move-object v5, v6

    .end local v6           #calStart:Ljava/util/Calendar;
    .restart local v5       #calStart:Ljava/util/Calendar;
    goto/16 :goto_1ae

    .end local v5           #calStart:Ljava/util/Calendar;
    .end local v7           #prop:Lcom/android/providers/calendar/VCal$Property;
    .end local v10           #n:Ljava/lang/String;
    .restart local v6       #calStart:Ljava/util/Calendar;
    :cond_25f
    move-object/from16 p0, v6

    .end local v6           #calStart:Ljava/util/Calendar;
    .local p0, calStart:Ljava/util/Calendar;
    move-object/from16 v5, v17

    .line 241
    goto/16 :goto_1d1

    .line 211
    .restart local v5       #calStart:Ljava/util/Calendar;
    .restart local v7       #prop:Lcom/android/providers/calendar/VCal$Property;
    .restart local v10       #n:Ljava/lang/String;
    .local p0, N:I
    :catch_265
    move-exception p0

    move-object/from16 v20, p0

    move-object/from16 p0, v5

    .end local v5           #calStart:Ljava/util/Calendar;
    .local p0, calStart:Ljava/util/Calendar;
    move-object/from16 v5, v20

    goto/16 :goto_1b8

    .local v6, begin:Lcom/android/providers/calendar/VCal$Begin;
    .local v7, c:C
    .restart local v8       #i:I
    .local v9, j:I
    .local v10, line:Ljava/lang/String;
    .restart local v11       #lines:[Ljava/lang/String;
    .restart local v14       #prop:Lcom/android/providers/calendar/VCal$Property;
    .local p0, N:I
    :cond_26e
    move-object v15, v12

    .end local v12           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .restart local v15       #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    goto/16 :goto_83

    .end local v14           #prop:Lcom/android/providers/calendar/VCal$Property;
    .end local v15           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .restart local v12       #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    :cond_271
    move v5, v8

    .end local v8           #i:I
    .local v5, i:I
    goto/16 :goto_53

    .end local v7           #c:C
    .local v5, len:I
    :cond_274
    move-object v5, v6

    .end local v6           #begin:Lcom/android/providers/calendar/VCal$Begin;
    .local v5, begin:Lcom/android/providers/calendar/VCal$Begin;
    move-object v7, v12

    .end local v12           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    .local v7, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/VCal$Property;>;"
    goto/16 :goto_171
.end method

.method private static parseDateTime(Lcom/android/providers/calendar/VCal$Property;Lcom/android/providers/calendar/VCal;)Ljava/util/Calendar;
    .registers 10
    .parameter "prop"
    .parameter "vc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/DateException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/providers/calendar/VCal$Property;->value:Ljava/lang/String;

    .line 248
    .local v1, dt:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/calendar/VCal$Property;->parameters:[Lcom/android/providers/calendar/VCal$Parameter;

    array-length v0, v6

    .line 249
    .local v0, M:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_6
    if-ge v2, v0, :cond_1d

    .line 250
    iget-object v6, p0, Lcom/android/providers/calendar/VCal$Property;->parameters:[Lcom/android/providers/calendar/VCal$Parameter;

    aget-object v3, v6, v2

    .line 251
    .local v3, param:Lcom/android/providers/calendar/VCal$Parameter;
    iget-object v6, v3, Lcom/android/providers/calendar/VCal$Parameter;->name:Ljava/lang/String;

    const-string v7, "TZID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 252
    iget-object v6, v3, Lcom/android/providers/calendar/VCal$Parameter;->value:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/providers/calendar/VCal;->tzid:Ljava/lang/String;

    .line 249
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 256
    .end local v3           #param:Lcom/android/providers/calendar/VCal$Parameter;
    :cond_1d
    iget-object v6, p1, Lcom/android/providers/calendar/VCal;->tzid:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 257
    .local v5, tz:Ljava/util/TimeZone;
    if-nez v5, :cond_2b

    .line 258
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 260
    :cond_2b
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 261
    .local v4, somewhere:Ljava/util/GregorianCalendar;
    invoke-static {v1, v4}, Landroid/text/format/DateUtils;->parseDateTime(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 262
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3e

    .line 264
    const/4 v6, 0x1

    iput-boolean v6, p1, Lcom/android/providers/calendar/VCal;->allDay:Z

    .line 266
    :cond_3e
    return-object v4
.end method


# virtual methods
.method public dump()V
    .registers 6

    .prologue
    const-string v4, "-----------------------"

    const-string v3, "\'"

    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-----------------------"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/providers/calendar/VCal;->properties:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/providers/calendar/VCal;->dump(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 46
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dtstart=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/calendar/VCal;->dtstart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tzid=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/calendar/VCal;->tzid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/calendar/VCal;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rrule=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/calendar/VCal;->rrule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-----------------------"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    return-void
.end method
