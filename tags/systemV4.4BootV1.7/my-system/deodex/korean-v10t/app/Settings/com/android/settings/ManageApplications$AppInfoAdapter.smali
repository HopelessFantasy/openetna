.class Lcom/android/settings/ManageApplications$AppInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoAdapter"
.end annotation


# instance fields
.field mAlphaComparator:Lcom/android/settings/ManageApplications$AlphaComparator;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLocalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSizeComparator:Lcom/android/settings/ManageApplications$SizeComparator;

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/ManageApplications;Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1482
    .local p3, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1479
    new-instance v0, Lcom/android/settings/ManageApplications$AlphaComparator;

    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {v0, v1}, Lcom/android/settings/ManageApplications$AlphaComparator;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAlphaComparator:Lcom/android/settings/ManageApplications$AlphaComparator;

    .line 1480
    new-instance v0, Lcom/android/settings/ManageApplications$SizeComparator;

    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {v0, v1}, Lcom/android/settings/ManageApplications$SizeComparator;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mSizeComparator:Lcom/android/settings/ManageApplications$SizeComparator;

    .line 1483
    iput-object p3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 1484
    return-void
.end method

.method private adjustIndex()V
    .registers 6

    .prologue
    .line 1655
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1657
    .local v1, imax:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_22

    .line 1658
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1659
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v3

    iput v0, v3, Lcom/android/settings/ManageApplications$AppInfo;->index:I

    .line 1657
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1661
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_22
    return-void
.end method

.method private getAppComparator(I)Ljava/util/Comparator;
    .registers 3
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1725
    if-nez p1, :cond_5

    .line 1726
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAlphaComparator:Lcom/android/settings/ManageApplications$AlphaComparator;

    .line 1729
    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mSizeComparator:Lcom/android/settings/ManageApplications$SizeComparator;

    goto :goto_4
.end method

.method private removePkgBase(Ljava/lang/String;)V
    .registers 8
    .parameter "pkgName"

    .prologue
    .line 1888
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1890
    .local v2, imax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_44

    .line 1891
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1893
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1894
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1895
    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from base list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_3f
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1904
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_44
    return-void

    .line 1890
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method private shouldBeInList(ILandroid/content/pm/ApplicationInfo;)Z
    .registers 9
    .parameter "filterOption"
    .parameter "info"

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 1783
    if-ne p1, v4, :cond_26

    .line 1784
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-virtual {v3, v4}, Lcom/android/settings/ManageApplications;->getInstalledApps(I)Ljava/util/List;

    move-result-object v2

    .line 1786
    .local v2, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1787
    .local v1, running:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v5

    .line 1802
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #running:Landroid/content/pm/ApplicationInfo;
    .end local v2           #runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_25
    return v3

    .line 1791
    :cond_26
    const/4 v3, 0x3

    if-ne p1, v3, :cond_39

    .line 1792
    iget v3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_31

    move v3, v5

    .line 1793
    goto :goto_25

    .line 1794
    :cond_31
    iget v3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3b

    move v3, v5

    .line 1796
    goto :goto_25

    :cond_39
    move v3, v5

    .line 1799
    goto :goto_25

    .line 1802
    :cond_3b
    const/4 v3, 0x0

    goto :goto_25
.end method

.method private sortListInner(I)V
    .registers 3
    .parameter "sortOrder"

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortAppList(Ljava/util/List;I)V

    .line 1680
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->adjustIndex()V

    .line 1681
    return-void
.end method


# virtual methods
.method public addToList(Ljava/lang/String;JLjava/lang/String;)V
    .registers 18
    .parameter "pkgName"
    .parameter "size"
    .parameter "formattedSize"

    .prologue
    .line 1813
    if-nez p1, :cond_3

    .line 1864
    :cond_2
    :goto_2
    return-void

    .line 1817
    :cond_3
    const/4 v12, 0x1

    .line 1820
    .local v12, notInList:Z
    const/4 v10, 0x0

    .line 1823
    .local v10, info:Landroid/content/pm/ApplicationInfo;
    :try_start_5
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_2b

    move-result-object v10

    .line 1830
    if-nez v10, :cond_46

    .line 1832
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null ApplicationInfo for package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1824
    :catch_2b
    move-exception v0

    move-object v9, v0

    .line 1825
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring non-existent package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1838
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_46
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v9

    new-instance v0, Lcom/android/settings/ManageApplications$AppInfo;

    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v2, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/ManageApplications$AppInfo;-><init>(Lcom/android/settings/ManageApplications;Ljava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;JLjava/lang/CharSequence;)V

    invoke-virtual {v9, v0}, Lcom/android/settings/ManageApplications$AppInfoCache;->addEntry(Lcom/android/settings/ManageApplications$AppInfo;)V

    .line 1845
    if-eqz v12, :cond_2

    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    iget v0, v0, Lcom/android/settings/ManageApplications;->mFilterApps:I

    invoke-direct {p0, v0, v10}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->shouldBeInList(ILandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1848
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getAppComparator(I)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v10, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v11

    .line 1851
    .local v11, newIdx:I
    if-ltz v11, :cond_b2

    .line 1852
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strange. Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not new"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1858
    :cond_b2
    neg-int v0, v11

    const/4 v1, 0x1

    sub-int v11, v0, v1

    .line 1859
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v0, v11, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1861
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->adjustIndex()V

    .line 1862
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2
.end method

.method public bulkUpdateIcons(Ljava/util/Map;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1733
    .local p1, icons:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-nez p1, :cond_3

    .line 1756
    :cond_2
    :goto_2
    return-void

    .line 1737
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1738
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1740
    .local v1, changed:Z
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1741
    .local v4, key:Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 1743
    .local v3, ic:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_c

    .line 1744
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v6}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1746
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v0, :cond_c

    .line 1747
    invoke-virtual {v0, v3}, Lcom/android/settings/ManageApplications$AppInfo;->refreshIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1748
    const/4 v1, 0x1

    goto :goto_c

    .line 1753
    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v3           #ic:Landroid/graphics/drawable/Drawable;
    .end local v4           #key:Ljava/lang/String;
    :cond_31
    if-eqz v1, :cond_2

    .line 1754
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public bulkUpdateLabels(Ljava/util/Map;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1759
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    if-nez p1, :cond_3

    .line 1779
    :cond_2
    :goto_2
    return-void

    .line 1763
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1764
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1766
    .local v1, changed:Z
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1767
    .local v3, key:Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 1768
    .local v5, label:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v6}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1770
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v0, :cond_c

    .line 1771
    invoke-virtual {v0, v5}, Lcom/android/settings/ManageApplications$AppInfo;->refreshLabel(Ljava/lang/CharSequence;)V

    .line 1772
    const/4 v1, 0x1

    goto :goto_c

    .line 1776
    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #label:Ljava/lang/CharSequence;
    :cond_2f
    if-eqz v1, :cond_2

    .line 1777
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public bulkUpdateSizes([Ljava/lang/String;[J[Ljava/lang/String;)V
    .registers 10
    .parameter "pkgs"
    .parameter "sizes"
    .parameter "formatted"

    .prologue
    .line 1962
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_7

    .line 1989
    :cond_6
    :goto_6
    return-void

    .line 1966
    :cond_7
    const/4 v0, 0x0

    .line 1968
    .local v0, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v3, p1

    if-ge v2, v3, :cond_51

    .line 1969
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v1

    .line 1971
    .local v1, entry:Lcom/android/settings/ManageApplications$AppInfo;
    if-nez v1, :cond_45

    .line 1972
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1973
    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "doesn\'t exist in map"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1981
    :cond_45
    aget-wide v3, p2, v2

    aget-object v5, p3, v2

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/settings/ManageApplications$AppInfo;->setSize(JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1982
    const/4 v0, 0x1

    goto :goto_42

    .line 1986
    .end local v1           #entry:Lcom/android/settings/ManageApplications$AppInfo;
    :cond_51
    if-eqz v0, :cond_6

    .line 1987
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_6
.end method

.method public getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .registers 5
    .parameter "position"

    .prologue
    .line 1563
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1565
    .local v0, imax:I
    if-ltz p1, :cond_a

    if-lt p1, v0, :cond_13

    .line 1566
    :cond_a
    const-string v1, "ManageApplications"

    const-string v2, "Position out of bounds in List Adapter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const/4 v1, 0x0

    .line 1571
    .end local p0
    :goto_12
    return-object v1

    .restart local p0
    :cond_13
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    move-object v1, p0

    goto :goto_12
.end method

.method public getBaseAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIndex(Ljava/lang/String;)I
    .registers 7
    .parameter "pkgName"

    .prologue
    .line 1544
    if-nez p1, :cond_9

    .line 1545
    const-string v3, "ManageApplications"

    const-string v4, "Getting index of null package in List Adapter"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_9
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1551
    .local v2, imax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v2, :cond_27

    .line 1552
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1554
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v3, v1

    .line 1559
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_23
    return v3

    .line 1551
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1559
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_27
    const/4 v3, -0x1

    goto :goto_23
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 8
    .parameter "position"

    .prologue
    const-wide/16 v4, -0x1

    .line 1575
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1577
    .local v1, imax:I
    if-ltz p1, :cond_c

    if-lt p1, v1, :cond_15

    .line 1578
    :cond_c
    const-string v2, "ManageApplications"

    const-string v3, "Position out of bounds in List Adapter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    .line 1589
    .end local p0
    :goto_14
    return-wide v2

    .line 1583
    .restart local p0
    :cond_15
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1585
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-nez v0, :cond_2d

    move-wide v2, v4

    .line 1586
    goto :goto_14

    .line 1589
    :cond_2d
    iget v2, v0, Lcom/android/settings/ManageApplications$AppInfo;->index:I

    int-to-long v2, v2

    goto :goto_14
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const-string v6, "ManageApplications"

    .line 1597
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_35

    .line 1598
    const-string v3, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid view position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual size is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 1651
    :goto_34
    return-object v3

    .line 1612
    :cond_35
    if-nez p2, :cond_a6

    .line 1613
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$3200(Lcom/android/settings/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030022

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1618
    new-instance v1, Lcom/android/settings/ManageApplications$AppViewHolder;

    invoke-direct {v1}, Lcom/android/settings/ManageApplications$AppViewHolder;-><init>()V

    .line 1619
    .local v1, holder:Lcom/android/settings/ManageApplications$AppViewHolder;
    const v3, 0x7f0a0052

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 1620
    const v3, 0x7f0a0054

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 1621
    const v3, 0x7f0a0072

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 1622
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1630
    :goto_6d
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1631
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v2

    .line 1633
    .local v2, mInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v2, :cond_ad

    .line 1634
    iget-object v3, v2, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8e

    .line 1635
    iget-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1638
    :cond_8e
    iget-object v3, v2, Lcom/android/settings/ManageApplications$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_99

    .line 1639
    iget-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/android/settings/ManageApplications$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1642
    :cond_99
    iget-object v3, v2, Lcom/android/settings/ManageApplications$AppInfo;->appSize:Ljava/lang/CharSequence;

    if-eqz v3, :cond_a4

    .line 1643
    iget-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/settings/ManageApplications$AppInfo;->appSize:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a4
    :goto_a4
    move-object v3, p2

    .line 1651
    goto :goto_34

    .line 1626
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #holder:Lcom/android/settings/ManageApplications$AppViewHolder;
    .end local v2           #mInfo:Lcom/android/settings/ManageApplications$AppInfo;
    :cond_a6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ManageApplications$AppViewHolder;

    .restart local v1       #holder:Lcom/android/settings/ManageApplications$AppViewHolder;
    goto :goto_6d

    .line 1646
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #mInfo:Lcom/android/settings/ManageApplications$AppInfo;
    :cond_ad
    const-string v3, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No info for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in property map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4
.end method

.method public initMapFromList(Ljava/util/List;I)V
    .registers 15
    .parameter
    .parameter "filterOption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1490
    .local p1, pAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v11, 0x0

    .line 1491
    .local v11, notify:Z
    const/4 v8, 0x0

    .line 1493
    .local v8, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez p1, :cond_70

    .line 1495
    iget-object v8, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 1502
    :goto_6
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-virtual {v1, v8, p2}, Lcom/android/settings/ManageApplications;->getFilteredApps(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    .line 1505
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 1507
    .local v9, imax:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    if-ge v3, v9, :cond_75

    .line 1508
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 1509
    .local v10, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v1

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1511
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-nez v0, :cond_6d

    .line 1512
    new-instance v0, Lcom/android/settings/ManageApplications$AppInfo;

    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v5, -0x1

    iget-object v7, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v7}, Lcom/android/settings/ManageApplications;->access$3100(Lcom/android/settings/ManageApplications;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ManageApplications$AppInfo;-><init>(Lcom/android/settings/ManageApplications;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 1515
    .restart local v0       #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1516
    const-string v1, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating entry pkg:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to map"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_64
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/ManageApplications$AppInfoCache;->addEntry(Lcom/android/settings/ManageApplications$AppInfo;)V

    .line 1507
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1497
    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v3           #i:I
    .end local v9           #imax:I
    .end local v10           #info:Landroid/content/pm/ApplicationInfo;
    :cond_70
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 1498
    move-object v8, p1

    .line 1499
    const/4 v11, 0x1

    goto :goto_6

    .line 1525
    .restart local v3       #i:I
    .restart local v9       #imax:I
    :cond_75
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortListInner(I)V

    .line 1527
    if-eqz v11, :cond_83

    .line 1528
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    .line 1530
    :cond_83
    return-void
.end method

.method public removeFromList(Ljava/util/List;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pkgNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, "Removing "

    const-string v8, "ManageApplications"

    .line 1907
    if-nez p1, :cond_7

    .line 1958
    :cond_6
    :goto_6
    return-void

    .line 1911
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1915
    const/4 v0, 0x0

    .line 1917
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1919
    .local v5, pkg:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->removePkgBase(Ljava/lang/String;)V

    .line 1922
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v6}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1923
    const-string v6, "ManageApplications"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :cond_47
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v6}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/settings/ManageApplications$AppInfoCache;->removeEntry(Ljava/lang/String;)V

    .line 1929
    const/4 v1, 0x0

    .line 1931
    .local v1, i:I
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 1932
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 1933
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1935
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v6}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 1936
    const-string v6, "ManageApplications"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from local list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    :cond_96
    const/4 v0, 0x1

    .line 1941
    goto/16 :goto_12

    .line 1944
    :cond_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 1949
    .end local v1           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #pkg:Ljava/lang/String;
    :cond_9c
    if-eqz v0, :cond_6

    .line 1950
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->adjustIndex()V

    .line 1952
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v6}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 1953
    const-string v6, "ManageApplications"

    const-string v6, "adjusting index and notifying list view"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_b0
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto/16 :goto_6
.end method

.method public resetAppList(I)Z
    .registers 8
    .parameter "filterOption"

    .prologue
    .line 1700
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-virtual {v3, v4, p1}, Lcom/android/settings/ManageApplications;->getFilteredApps(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    .line 1703
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1704
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1706
    .local v0, appInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-nez v0, :cond_10

    .line 1707
    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Entry does not exist for pkg:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1713
    .end local v0           #appInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :cond_45
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5d

    .line 1714
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$900(Lcom/android/settings/ManageApplications;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortList(I)V

    .line 1719
    :goto_56
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$3300(Lcom/android/settings/ManageApplications;)V

    .line 1721
    const/4 v3, 0x1

    return v3

    .line 1716
    :cond_5d
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_56
.end method

.method public sortAppList(Ljava/util/List;I)V
    .registers 4
    .parameter
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1664
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0, p2}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getAppComparator(I)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1665
    return-void
.end method

.method public sortBaseList(I)V
    .registers 5
    .parameter "sortOrder"

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1669
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sorting base list based on sortOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_20
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortAppList(Ljava/util/List;I)V

    .line 1674
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    iget v2, v2, Lcom/android/settings/ManageApplications;->mFilterApps:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ManageApplications;->getFilteredApps(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    .line 1675
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->adjustIndex()V

    .line 1676
    return-void
.end method

.method public sortList(I)V
    .registers 5
    .parameter "sortOrder"

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1685
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortListInner(I)V

    .line 1689
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    .line 1690
    return-void
.end method

.method public updatePackage(Ljava/lang/String;JLjava/lang/String;)V
    .registers 10
    .parameter "pkgName"
    .parameter "size"
    .parameter "formattedSize"

    .prologue
    .line 1868
    const/4 v2, 0x0

    .line 1871
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_3a

    move-result-object v2

    .line 1877
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1879
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v0, :cond_39

    .line 1880
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/ManageApplications$AppInfo;->refreshLabel(Ljava/lang/CharSequence;)V

    .line 1881
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1200(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/ManageApplications$AppInfo;->refreshIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1882
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/settings/ManageApplications$AppInfo;->setSize(JLjava/lang/String;)Z

    .line 1883
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    .line 1885
    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    :cond_39
    :goto_39
    return-void

    .line 1873
    :catch_3a
    move-exception v3

    move-object v1, v3

    .line 1874
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_39
.end method
