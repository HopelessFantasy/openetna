.class Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;
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
    name = "TrackballCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;-><init>()V

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
    .local p1, command:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3d

    .line 180
    const/4 v8, 0x0

    .line 181
    .local v8, dx:I
    const/4 v9, 0x0

    .line 183
    .local v9, dy:I
    const/4 v0, 0x1

    :try_start_b
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 184
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_1f} :catch_31

    move-result v9

    .line 190
    new-instance v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    const-wide/16 v2, -0x1

    int-to-float v5, v8

    int-to-float v6, v9

    const/4 v7, 0x0

    move v4, v1

    invoke-direct/range {v0 .. v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJIFFI)V

    invoke-interface {p2, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;->enqueueEvent(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 192
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 195
    .end local v8           #dx:I
    .end local v9           #dy:I
    :goto_30
    return-object v0

    .line 185
    .restart local v8       #dx:I
    .restart local v9       #dy:I
    :catch_31
    move-exception v0

    move-object v10, v0

    .line 187
    .local v10, e:Ljava/lang/NumberFormatException;
    const-string v0, "MonkeyStub"

    const-string v1, "Got something that wasn\'t a number"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_30

    .line 195
    .end local v8           #dx:I
    .end local v9           #dy:I
    .end local v10           #e:Ljava/lang/NumberFormatException;
    .restart local p0
    :cond_3d
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    goto :goto_30
.end method
