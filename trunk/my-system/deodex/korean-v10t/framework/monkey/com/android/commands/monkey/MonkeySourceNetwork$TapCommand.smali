.class Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;
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
    name = "TapCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 14
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
    .line 332
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4c

    .line 333
    const/4 v9, 0x0

    .line 334
    .local v9, x:I
    const/4 v10, 0x0

    .line 336
    .local v10, y:I
    const/4 v0, 0x1

    :try_start_a
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 337
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_1e} :catch_40

    move-result v10

    .line 344
    new-instance v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    int-to-float v5, v9

    int-to-float v6, v10

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJIFFI)V

    invoke-interface {p2, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 347
    new-instance v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    int-to-float v5, v9

    int-to-float v6, v10

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJIFFI)V

    invoke-interface {p2, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 350
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 352
    .end local v9           #x:I
    .end local v10           #y:I
    :goto_3f
    return-object v0

    .line 338
    .restart local v9       #x:I
    .restart local v10       #y:I
    :catch_40
    move-exception v0

    move-object v8, v0

    .line 340
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v0, "MonkeyStub"

    const-string v1, "Got something that wasn\'t a number"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_3f

    .line 352
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v9           #x:I
    .end local v10           #y:I
    .restart local p0
    :cond_4c
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_3f
.end method
