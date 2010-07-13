.class Lcom/android/server/IntentResolver$1;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 496
    check-cast p1, Landroid/content/IntentFilter;

    .end local p1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v2

    int-to-float v0, v2

    .line 497
    .local v0, q1:F
    check-cast p2, Landroid/content/IntentFilter;

    .end local p2
    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result v2

    int-to-float v1, v2

    .line 498
    .local v1, q2:F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_14

    const/4 v2, -0x1

    :goto_13
    return v2

    :cond_14
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_13

    :cond_1a
    const/4 v2, 0x0

    goto :goto_13
.end method
