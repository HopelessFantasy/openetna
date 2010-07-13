.class public Lcom/android/commands/am/Am;
.super Ljava/lang/Object;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/am/Am$1;,
        Lcom/android/commands/am/Am$InstrumentationWatcher;
    }
.end annotation


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mDebugOption:Z

.field private mNextArg:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/am/Am;->mDebugOption:Z

    .line 366
    return-void
.end method

.method static synthetic access$100(Lcom/android/commands/am/Am;)Landroid/app/IActivityManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 54
    new-instance v0, Lcom/android/commands/am/Am;

    invoke-direct {v0}, Lcom/android/commands/am/Am;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/commands/am/Am;->run([Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private makeIntent()Landroid/content/Intent;
    .registers 21

    .prologue
    .line 91
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v8, intent:Landroid/content/Intent;
    const/4 v7, 0x0

    .line 94
    .local v7, hasIntentInfo:Z
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mDebugOption:Z

    .line 95
    const/4 v5, 0x0

    .line 96
    .local v5, data:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 100
    .local v14, type:Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v12

    .local v12, opt:Ljava/lang/String;
    if-eqz v12, :cond_189

    .line 101
    const-string v17, "-a"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2d

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/4 v7, 0x1

    goto :goto_10

    .line 104
    :cond_2d
    const-string v17, "-d"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_42

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 106
    const/4 v7, 0x1

    goto :goto_10

    .line 107
    :cond_42
    const-string v17, "-t"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_53

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v14

    .line 109
    const/4 v7, 0x1

    goto :goto_10

    .line 110
    :cond_53
    const-string v17, "-c"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6a

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const/4 v7, 0x1

    goto :goto_10

    .line 113
    :cond_6a
    const-string v17, "-e"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_80

    const-string v17, "--es"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_91

    .line 114
    :cond_80
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v16

    .line 116
    .local v16, value:Ljava/lang/String;
    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const/4 v7, 0x1

    .line 118
    goto :goto_10

    .end local v10           #key:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_91
    const-string v17, "--ei"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b2

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v10

    .line 120
    .restart local v10       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v16

    .line 121
    .restart local v16       #value:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 122
    const/4 v7, 0x1

    .line 123
    goto/16 :goto_10

    .end local v10           #key:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_b2
    const-string v17, "--ez"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d3

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v10

    .line 125
    .restart local v10       #key:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v16

    .line 126
    .restart local v16       #value:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    const/4 v7, 0x1

    .line 128
    goto/16 :goto_10

    .end local v10           #key:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_d3
    const-string v17, "-n"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10f

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v13

    .line 130
    .local v13, str:Ljava/lang/String;
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 131
    .local v4, cn:Landroid/content/ComponentName;
    if-nez v4, :cond_109

    .line 132
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error: Bad component name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V

    .line 134
    const/16 v17, 0x0

    .line 191
    .end local v4           #cn:Landroid/content/ComponentName;
    .end local v12           #opt:Ljava/lang/String;
    .end local v13           #str:Ljava/lang/String;
    :goto_108
    return-object v17

    .line 136
    .restart local v4       #cn:Landroid/content/ComponentName;
    .restart local v12       #opt:Ljava/lang/String;
    .restart local v13       #str:Ljava/lang/String;
    :cond_109
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 137
    const/4 v7, 0x1

    .line 138
    goto/16 :goto_10

    .end local v4           #cn:Landroid/content/ComponentName;
    .end local v13           #str:Ljava/lang/String;
    :cond_10f
    const-string v17, "-f"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_153

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v13

    .line 140
    .restart local v13       #str:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_12c
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_12c} :catch_12e

    goto/16 :goto_10

    .line 149
    .end local v12           #opt:Ljava/lang/String;
    .end local v13           #str:Ljava/lang/String;
    :catch_12e
    move-exception v17

    move-object/from16 v6, v17

    .line 150
    .local v6, ex:Ljava/lang/RuntimeException;
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V

    .line 152
    const/16 v17, 0x0

    goto :goto_108

    .line 141
    .end local v6           #ex:Ljava/lang/RuntimeException;
    .restart local v12       #opt:Ljava/lang/String;
    :cond_153
    :try_start_153
    const-string v17, "-D"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_168

    .line 142
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/commands/am/Am;->mDebugOption:Z

    goto/16 :goto_10

    .line 144
    :cond_168
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error: Unknown option: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V
    :try_end_186
    .catch Ljava/lang/RuntimeException; {:try_start_153 .. :try_end_186} :catch_12e

    .line 146
    const/16 v17, 0x0

    goto :goto_108

    .line 154
    :cond_189
    invoke-virtual {v8, v5, v14}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v15

    .line 157
    .local v15, uri:Ljava/lang/String;
    if-eqz v15, :cond_226

    .line 159
    move-object v11, v8

    .line 161
    .local v11, oldIntent:Landroid/content/Intent;
    :try_start_193
    invoke-static {v15}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_196
    .catch Ljava/net/URISyntaxException; {:try_start_193 .. :try_end_196} :catch_203
    .catch Ljava/lang/RuntimeException; {:try_start_193 .. :try_end_196} :catch_1dd

    move-result-object v8

    .line 167
    :try_start_197
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1a7

    .line 168
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :cond_1a7
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-nez v17, :cond_1b3

    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1c3

    .line 171
    :cond_1b3
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :cond_1c3
    invoke-virtual {v11}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 174
    .local v3, cats:Ljava/util/Set;
    if-eqz v3, :cond_236

    .line 175
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 176
    .end local v3           #cats:Ljava/util/Set;
    .local v9, it:Ljava/util/Iterator;
    :goto_1cd
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_236

    .line 177
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1dc
    .catch Ljava/lang/RuntimeException; {:try_start_197 .. :try_end_1dc} :catch_1dd

    goto :goto_1cd

    .line 180
    .end local v9           #it:Ljava/util/Iterator;
    :catch_1dd
    move-exception v17

    move-object/from16 v6, v17

    .line 181
    .restart local v6       #ex:Ljava/lang/RuntimeException;
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error creating from URI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V

    .line 183
    const/16 v17, 0x0

    goto/16 :goto_108

    .line 162
    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catch_203
    move-exception v6

    .line 163
    .local v6, ex:Ljava/net/URISyntaxException;
    :try_start_204
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Bad URI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V
    :try_end_222
    .catch Ljava/lang/RuntimeException; {:try_start_204 .. :try_end_222} :catch_1dd

    .line 165
    const/16 v17, 0x0

    goto/16 :goto_108

    .line 185
    .end local v6           #ex:Ljava/net/URISyntaxException;
    .end local v11           #oldIntent:Landroid/content/Intent;
    :cond_226
    if-nez v7, :cond_236

    .line 186
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v18, "Error: No intent supplied"

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V

    .line 188
    const/16 v17, 0x0

    goto/16 :goto_108

    :cond_236
    move-object/from16 v17, v8

    .line 191
    goto/16 :goto_108
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 534
    iget v1, p0, Lcom/android/commands/am/Am;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 535
    const/4 v1, 0x0

    .line 539
    :goto_8
    return-object v1

    .line 537
    :cond_9
    iget-object v1, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    aget-object v0, v1, v2

    .line 538
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/am/Am;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/am/Am;->mNextArg:I

    move-object v1, v0

    .line 539
    goto :goto_8
.end method

.method private nextOption()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 497
    iget v1, p0, Lcom/android/commands/am/Am;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_c

    move-object v1, v3

    .line 518
    :goto_b
    return-object v1

    .line 500
    :cond_c
    iget-object v1, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    aget-object v0, v1, v2

    .line 501
    .local v0, arg:Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    move-object v1, v3

    .line 502
    goto :goto_b

    .line 504
    :cond_1c
    iget v1, p0, Lcom/android/commands/am/Am;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/am/Am;->mNextArg:I

    .line 505
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v3

    .line 506
    goto :goto_b

    .line 508
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_50

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_50

    .line 509
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_4c

    .line 510
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    .line 511
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 513
    :cond_4c
    iput-object v3, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 514
    goto :goto_b

    .line 517
    :cond_50
    iput-object v3, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    move-object v1, v0

    .line 518
    goto :goto_b
.end method

.method private nextOptionData()Ljava/lang/String;
    .registers 4

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 523
    iget-object v1, p0, Lcom/android/commands/am/Am;->mCurArgData:Ljava/lang/String;

    .line 530
    :goto_6
    return-object v1

    .line 525
    :cond_7
    iget v1, p0, Lcom/android/commands/am/Am;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_10

    .line 526
    const/4 v1, 0x0

    goto :goto_6

    .line 528
    :cond_10
    iget-object v1, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    aget-object v0, v1, v2

    .line 529
    .local v0, data:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/am/Am;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/am/Am;->mNextArg:I

    move-object v1, v0

    .line 530
    goto :goto_6
.end method

.method private run([Ljava/lang/String;)V
    .registers 6
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    .line 58
    array-length v1, p1

    if-ge v1, v2, :cond_8

    .line 59
    invoke-direct {p0}, Lcom/android/commands/am/Am;->showUsage()V

    .line 88
    :goto_7
    return-void

    .line 63
    :cond_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    .line 64
    iget-object v1, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    if-nez v1, :cond_24

    .line 65
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error type 2"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Unable to connect to activity manager; is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/android/commands/am/Am;->showUsage()V

    goto :goto_7

    .line 71
    :cond_24
    iput-object p1, p0, Lcom/android/commands/am/Am;->mArgs:[Ljava/lang/String;

    .line 73
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 74
    .local v0, op:Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/am/Am;->mNextArg:I

    .line 75
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 76
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runStart()V

    goto :goto_7

    .line 77
    :cond_37
    const-string v1, "instrument"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 78
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runInstrument()V

    goto :goto_7

    .line 79
    :cond_43
    const-string v1, "broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 80
    invoke-direct {p0}, Lcom/android/commands/am/Am;->sendBroadcast()V

    goto :goto_7

    .line 81
    :cond_4f
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 82
    invoke-direct {p0}, Lcom/android/commands/am/Am;->runProfile()V

    goto :goto_7

    .line 84
    :cond_5b
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/android/commands/am/Am;->showUsage()V

    goto :goto_7
.end method

.method private runInstrument()V
    .registers 20

    .prologue
    .line 278
    const/4 v5, 0x0

    .line 279
    .local v5, profileFile:Ljava/lang/String;
    const/16 v17, 0x0

    .line 280
    .local v17, wait:Z
    const/16 v16, 0x0

    .line 281
    .local v16, rawMode:Z
    const/4 v13, 0x0

    .line 282
    .local v13, no_window_animation:Z
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v7, args:Landroid/os/Bundle;
    const/4 v9, 0x0

    .local v9, argKey:Ljava/lang/String;
    const/4 v10, 0x0

    .line 284
    .local v10, argValue:Ljava/lang/String;
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 288
    .local v18, wm:Landroid/view/IWindowManager;
    :goto_17
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOption()Ljava/lang/String;

    move-result-object v15

    .local v15, opt:Ljava/lang/String;
    if-eqz v15, :cond_9c

    .line 289
    const-string v3, "-p"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v5

    goto :goto_17

    .line 291
    :cond_2a
    const-string v3, "-w"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 292
    const/16 v17, 0x1

    goto :goto_17

    .line 293
    :cond_35
    const-string v3, "-r"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 294
    const/16 v16, 0x1

    goto :goto_17

    .line 295
    :cond_40
    const-string v3, "-e"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v9

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextOptionData()Ljava/lang/String;

    move-result-object v10

    .line 298
    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_53} :catch_54

    goto :goto_17

    .line 307
    .end local v5           #profileFile:Ljava/lang/String;
    .end local v15           #opt:Ljava/lang/String;
    :catch_54
    move-exception v3

    move-object v12, v3

    .line 308
    .local v12, ex:Ljava/lang/RuntimeException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V

    .line 364
    .end local v12           #ex:Ljava/lang/RuntimeException;
    :cond_75
    :goto_75
    return-void

    .line 299
    .restart local v5       #profileFile:Ljava/lang/String;
    .restart local v15       #opt:Ljava/lang/String;
    :cond_76
    :try_start_76
    const-string v3, "--no_window_animation"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 300
    const/4 v13, 0x1

    goto :goto_17

    .line 302
    :cond_80
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Unknown option: "

    .end local v5           #profileFile:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_9b} :catch_54

    goto :goto_75

    .line 313
    .restart local v5       #profileFile:Ljava/lang/String;
    :cond_9c
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, cnArg:Ljava/lang/String;
    if-nez v11, :cond_ad

    .line 315
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: No instrumentation component supplied"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V

    goto :goto_75

    .line 320
    :cond_ad
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 321
    .local v4, cn:Landroid/content/ComponentName;
    if-nez v4, :cond_cf

    .line 322
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #cn:Landroid/content/ComponentName;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: Bad component name: "

    .end local v5           #profileFile:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V

    goto :goto_75

    .line 327
    .restart local v4       #cn:Landroid/content/ComponentName;
    .restart local v5       #profileFile:Ljava/lang/String;
    :cond_cf
    const/4 v8, 0x0

    .line 328
    .local v8, watcher:Lcom/android/commands/am/Am$InstrumentationWatcher;
    if-eqz v17, :cond_e2

    .line 329
    new-instance v8, Lcom/android/commands/am/Am$InstrumentationWatcher;

    .end local v8           #watcher:Lcom/android/commands/am/Am$InstrumentationWatcher;
    const/4 v3, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/commands/am/Am$InstrumentationWatcher;-><init>(Lcom/android/commands/am/Am;Lcom/android/commands/am/Am$1;)V

    .line 330
    .restart local v8       #watcher:Lcom/android/commands/am/Am$InstrumentationWatcher;
    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/commands/am/Am$InstrumentationWatcher;->setRawOutput(Z)V

    .line 332
    :cond_e2
    const/4 v14, 0x0

    .line 333
    .local v14, oldAnims:[F
    if-eqz v13, :cond_fb

    .line 335
    :try_start_e5
    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v14

    .line 336
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v3

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 337
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v3

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_fb} :catch_145

    .line 343
    :cond_fb
    :goto_fb
    :try_start_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    move-object v3, v0

    const/4 v6, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityManager;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v3

    if-nez v3, :cond_129

    .line 344
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #profileFile:Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSTRUMENTATION_FAILED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #cn:Landroid/content/ComponentName;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/am/Am;->showUsage()V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_fb .. :try_end_126} :catch_128

    goto/16 :goto_75

    .line 349
    :catch_128
    move-exception v3

    .line 352
    :cond_129
    if-eqz v8, :cond_138

    .line 353
    invoke-virtual {v8}, Lcom/android/commands/am/Am$InstrumentationWatcher;->waitForFinish()Z

    move-result v3

    if-nez v3, :cond_138

    .line 354
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "INSTRUMENTATION_ABORTED: System has crashed."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    :cond_138
    if-eqz v14, :cond_75

    .line 360
    :try_start_13a
    move-object/from16 v0, v18

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_140
    .catch Landroid/os/RemoteException; {:try_start_13a .. :try_end_140} :catch_142

    goto/16 :goto_75

    .line 361
    :catch_142
    move-exception v3

    goto/16 :goto_75

    .line 338
    .restart local v4       #cn:Landroid/content/ComponentName;
    .restart local v5       #profileFile:Ljava/lang/String;
    :catch_145
    move-exception v3

    goto :goto_fb
.end method

.method private runProfile()V
    .registers 11

    .prologue
    const-string v9, "PROFILE FAILED: "

    .line 442
    const/4 v4, 0x0

    .line 443
    .local v4, profileFile:Ljava/lang/String;
    const/4 v5, 0x0

    .line 445
    .local v5, start:Z
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, process:Ljava/lang/String;
    if-nez v3, :cond_15

    .line 447
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: No profile process supplied"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/android/commands/am/Am;->showUsage()V

    .line 494
    :cond_14
    :goto_14
    return-void

    .line 452
    :cond_15
    const/4 v2, 0x0

    .line 454
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, cmd:Ljava/lang/String;
    const-string v6, "start"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 456
    const/4 v5, 0x1

    .line 457
    invoke-direct {p0}, Lcom/android/commands/am/Am;->nextArg()Ljava/lang/String;

    move-result-object v4

    .line 458
    if-nez v4, :cond_34

    .line 459
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Error: No profile file path supplied"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    invoke-direct {p0}, Lcom/android/commands/am/Am;->showUsage()V

    goto :goto_14

    .line 464
    :cond_34
    :try_start_34
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x3c00

    invoke-static {v6, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3e} :catch_7f

    move-result-object v2

    .line 480
    :cond_3f
    :try_start_3f
    iget-object v6, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v6, v3, v5, v4, v2}, Landroid/app/IActivityManager;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 481
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PROFILE FAILED on process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_5f} :catch_60
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_5f} :catch_c6
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_5f} :catch_e6

    goto :goto_14

    .line 484
    :catch_60
    move-exception v6

    move-object v1, v6

    .line 485
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PROFILE FAILED: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 469
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_7f
    move-exception v6

    move-object v1, v6

    .line 470
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unable to open file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 473
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_9b
    const-string v6, "stop"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 474
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Profile command "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not valid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0}, Lcom/android/commands/am/Am;->showUsage()V

    goto/16 :goto_14

    .line 487
    :catch_c6
    move-exception v6

    move-object v1, v6

    .line 488
    .local v1, e:Ljava/lang/IllegalStateException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PROFILE FAILED: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 490
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_e6
    move-exception v6

    move-object v1, v6

    .line 491
    .local v1, e:Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "PROFILE FAILED: activity manager gone"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_14
.end method

.method private runStart()V
    .registers 14

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/commands/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 197
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_51

    .line 198
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 200
    const/high16 v0, 0x1000

    :try_start_20
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/commands/am/Am;->mDebugOption:Z

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v12

    .line 204
    .local v12, res:I
    packed-switch v12, :pswitch_data_e0

    .line 250
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, unknown error code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    .end local v12           #res:I
    :cond_51
    :goto_51
    :pswitch_51
    return-void

    .line 208
    .restart local v12       #res:I
    :pswitch_52
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started because the  current activity is being kept for the user."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_59} :catch_5a

    goto :goto_51

    .line 255
    .end local v12           #res:I
    :catch_5a
    move-exception v0

    move-object v11, v0

    .line 256
    .local v11, e:Landroid/os/RemoteException;
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error type 1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Activity not started, unable to call on to activity manager service"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_51

    .line 213
    .end local v11           #e:Landroid/os/RemoteException;
    .restart local v12       #res:I
    :pswitch_6b
    :try_start_6b
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started, intent has been delivered to currently running top-most instance."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_51

    .line 219
    :pswitch_73
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started because intent should be handled by the caller"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_51

    .line 224
    :pswitch_7b
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Warning: Activity not started, its current task has been brought to the front"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_51

    .line 229
    :pswitch_83
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity not started, unable to resolve "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_51

    .line 234
    :pswitch_a0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error type 3"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Activity class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_51

    .line 240
    :pswitch_ce
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Activity not started, you requested to both forward and receive its result"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_51

    .line 245
    :pswitch_d7
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: Activity not started, you do not have permission to access it."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_de} :catch_5a

    goto/16 :goto_51

    .line 204
    :pswitch_data_e0
    .packed-switch -0x4
        :pswitch_d7
        :pswitch_ce
        :pswitch_a0
        :pswitch_83
        :pswitch_51
        :pswitch_73
        :pswitch_7b
        :pswitch_6b
        :pswitch_52
    .end packed-switch
.end method

.method private sendBroadcast()V
    .registers 12

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/android/commands/am/Am;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 267
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2c

    .line 268
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    :try_start_1e
    iget-object v0, p0, Lcom/android/commands/am/Am;->mAm:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2c} :catch_2d

    .line 275
    :cond_2c
    :goto_2c
    return-void

    .line 272
    :catch_2d
    move-exception v0

    goto :goto_2c
.end method

.method private showUsage()V
    .registers 3

    .prologue
    .line 543
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: am [start|broadcast|instrument|profile]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 544
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       am start [-D] INTENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       am broadcast INTENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 546
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       am instrument [-r] [-e <ARG_NAME> <ARG_VALUE>] [-p <PROF_FILE>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 547
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                [-w] <COMPONENT> "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 548
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       am profile <PROCESS> [start <PROF_FILE>|stop]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 549
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 550
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       INTENT is described with:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 552
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                [-c <CATEGORY> [-c <CATEGORY>] ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 553
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 554
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                [-e|--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 556
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "                [-n <COMPONENT>] [-f <FLAGS>] [<URI>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    return-void
.end method
