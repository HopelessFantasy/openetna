.class Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplicationInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lge/homecube/ApplicationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/homecube/LauncherModel$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/lge/homecube/ApplicationInfo;Lcom/lge/homecube/ApplicationInfo;)I
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 564
    invoke-static {}, Lcom/lge/homecube/LauncherModel;->access$500()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p1, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/lge/homecube/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 562
    check-cast p1, Lcom/lge/homecube/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/lge/homecube/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;->compare(Lcom/lge/homecube/ApplicationInfo;Lcom/lge/homecube/ApplicationInfo;)I

    move-result v0

    return v0
.end method
