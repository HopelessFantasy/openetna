.class Lcom/lge/homecube/LauncherModel$ChangeNotifier;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeNotifier"
.end annotation


# instance fields
.field private final mApplicationList:Lcom/lge/homecube/ApplicationsAdapter;

.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFirst:Z


# direct methods
.method constructor <init>(Lcom/lge/homecube/ApplicationsAdapter;Z)V
    .registers 5
    .parameter "applicationList"
    .parameter "first"

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;->mFirst:Z

    .line 525
    iput-object p1, p0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;->mApplicationList:Lcom/lge/homecube/ApplicationsAdapter;

    .line 526
    iput-boolean p2, p0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;->mFirst:Z

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;->mBuffer:Ljava/util/ArrayList;

    .line 528
    return-void
.end method


# virtual methods
.method add(Lcom/lge/homecube/ApplicationInfo;)Z
    .registers 5
    .parameter "application"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;->mBuffer:Ljava/util/ArrayList;

    .line 557
    .local v0, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 531
    iget-object v0, p0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;->mApplicationList:Lcom/lge/homecube/ApplicationsAdapter;

    .line 533
    .local v0, applicationList:Lcom/lge/homecube/ApplicationsAdapter;
    if-nez v0, :cond_6

    .line 553
    :goto_5
    return-void

    .line 535
    :cond_6
    iget-boolean v4, p0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;->mFirst:Z

    if-eqz v4, :cond_12

    .line 536
    invoke-virtual {v0, v5}, Lcom/lge/homecube/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 537
    invoke-virtual {v0}, Lcom/lge/homecube/ApplicationsAdapter;->clear()V

    .line 538
    iput-boolean v5, p0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;->mFirst:Z

    .line 541
    :cond_12
    iget-object v1, p0, Lcom/lge/homecube/LauncherModel$ChangeNotifier;->mBuffer:Ljava/util/ArrayList;

    .line 542
    .local v1, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/ApplicationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 544
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v2, :cond_28

    .line 545
    invoke-virtual {v0, v5}, Lcom/lge/homecube/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 546
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lge/homecube/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 549
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 551
    new-instance v4, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/lge/homecube/LauncherModel$ApplicationInfoComparator;-><init>(Lcom/lge/homecube/LauncherModel$1;)V

    invoke-virtual {v0, v4}, Lcom/lge/homecube/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 552
    invoke-virtual {v0}, Lcom/lge/homecube/ApplicationsAdapter;->notifyDataSetChanged()V

    goto :goto_5
.end method
