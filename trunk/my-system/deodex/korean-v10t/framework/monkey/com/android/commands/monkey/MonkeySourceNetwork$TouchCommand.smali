.class Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 15
    .parameter
    .parameter "queue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;",
            ")",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;"
        }
    .end annotation

    .prologue
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const-string v3, "MonkeyStub"

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_80

    .line 136
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 137
    .local v8, actionName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 138
    .local v10, x:I
    const/4 v11, 0x0

    .line 140
    .local v11, y:I
    const/4 v0, 0x2

    :try_start_13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 141
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_27} :catch_50

    move-result v11

    .line 149
    const/4 v4, -0x1

    .line 150
    .local v4, action:I
    const-string v0, "down"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 151
    const/4 v4, 0x0

    .line 157
    :cond_32
    :goto_32
    const/4 v0, -0x1

    if-ne v4, v0, :cond_70

    .line 158
    const-string v0, "MonkeyStub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got a bad action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 166
    .end local v4           #action:I
    .end local v8           #actionName:Ljava/lang/String;
    .end local v10           #x:I
    .end local v11           #y:I
    :goto_4f
    return-object v0

    .line 142
    .restart local v8       #actionName:Ljava/lang/String;
    .restart local v10       #x:I
    .restart local v11       #y:I
    :catch_50
    move-exception v0

    move-object v9, v0

    .line 144
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v0, "MonkeyStub"

    const-string v0, "Got something that wasn\'t a number"

    invoke-static {v3, v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_4f

    .line 152
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #action:I
    :cond_5c
    const-string v0, "up"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 153
    const/4 v4, 0x1

    goto :goto_32

    .line 154
    :cond_66
    const-string v0, "move"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 155
    const/4 v4, 0x2

    goto :goto_32

    .line 162
    :cond_70
    new-instance v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    const-wide/16 v2, -0x1

    int-to-float v5, v10

    int-to-float v6, v11

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJIFFI)V

    invoke-interface {p2, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 164
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_4f

    .line 166
    .end local v4           #action:I
    .end local v8           #actionName:Ljava/lang/String;
    .end local v10           #x:I
    .end local v11           #y:I
    .restart local p0
    :cond_80
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_4f
.end method
