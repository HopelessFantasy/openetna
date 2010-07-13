.class Lcom/android/launcher/LauncherModel$ChangeNotifier;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeNotifier"
.end annotation


# instance fields
.field private final mApplicationList:Lcom/android/launcher/ApplicationsAdapter;

.field private final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFirst:Z


# direct methods
.method constructor <init>(Lcom/android/launcher/ApplicationsAdapter;Z)V
    .registers 5
    .parameter "applicationList"
    .parameter "first"

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/LauncherModel$ChangeNotifier;->mFirst:Z

    .line 560
    iput-object p1, p0, Lcom/android/launcher/LauncherModel$ChangeNotifier;->mApplicationList:Lcom/android/launcher/ApplicationsAdapter;

    .line 561
    iput-boolean p2, p0, Lcom/android/launcher/LauncherModel$ChangeNotifier;->mFirst:Z

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/LauncherModel$ChangeNotifier;->mBuffer:Ljava/util/ArrayList;

    .line 563
    return-void
.end method


# virtual methods
.method add(Lcom/android/launcher/ApplicationInfo;)Z
    .registers 5
    .parameter "application"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/launcher/LauncherModel$ChangeNotifier;->mBuffer:Ljava/util/ArrayList;

    .line 593
    .local v0, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ApplicationInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
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
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 566
    iget-object v0, p0, Lcom/android/launcher/LauncherModel$ChangeNotifier;->mApplicationList:Lcom/android/launcher/ApplicationsAdapter;

    .line 568
    .local v0, applicationList:Lcom/android/launcher/ApplicationsAdapter;
    if-nez v0, :cond_6

    .line 589
    :goto_5
    return-void

    .line 570
    :cond_6
    iget-boolean v4, p0, Lcom/android/launcher/LauncherModel$ChangeNotifier;->mFirst:Z

    if-eqz v4, :cond_19

    .line 571
    invoke-virtual {v0, v6}, Lcom/android/launcher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 572
    invoke-virtual {v0}, Lcom/android/launcher/ApplicationsAdapter;->clear()V

    .line 573
    const-string v4, "HomeLoaders"

    const-string v5, "  ----> cleared application list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iput-boolean v6, p0, Lcom/android/launcher/LauncherModel$ChangeNotifier;->mFirst:Z

    .line 577
    :cond_19
    iget-object v1, p0, Lcom/android/launcher/LauncherModel$ChangeNotifier;->mBuffer:Ljava/util/ArrayList;

    .line 578
    .local v1, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/ApplicationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 580
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_20
    if-ge v3, v2, :cond_2f

    .line 581
    invoke-virtual {v0, v6}, Lcom/android/launcher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 582
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/launcher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    .line 580
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 585
    :cond_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 587
    new-instance v4, Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;

    invoke-direct {v4}, Lcom/android/launcher/LauncherModel$ApplicationInfoComparator;-><init>()V

    invoke-virtual {v0, v4}, Lcom/android/launcher/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 588
    invoke-virtual {v0}, Lcom/android/launcher/ApplicationsAdapter;->notifyDataSetChanged()V

    goto :goto_5
.end method
