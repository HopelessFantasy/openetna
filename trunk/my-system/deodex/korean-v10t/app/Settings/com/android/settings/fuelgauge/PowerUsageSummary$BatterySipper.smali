.class Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatterySipper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field cpuFgTime:J

.field cpuTime:J

.field defaultPackageName:Ljava/lang/String;

.field drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field gpsTime:J

.field icon:Landroid/graphics/drawable/Drawable;

.field iconId:I

.field name:Ljava/lang/String;

.field noCoveragePercent:D

.field percent:D

.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

.field uidObj:Landroid/os/BatteryStats$Uid;

.field usageTime:J

.field value:D

.field values:[D


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V
    .registers 9
    .parameter
    .parameter "label"
    .parameter "drainType"
    .parameter "iconId"
    .parameter "uid"
    .parameter "values"

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-object p6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->values:[D

    .line 555
    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 556
    iput-object p3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 557
    if-lez p4, :cond_17

    .line 558
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 560
    :cond_17
    if-eqz p6, :cond_1e

    const/4 v0, 0x0

    aget-wide v0, p6, v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->value:D

    .line 561
    :cond_1e
    if-eqz p2, :cond_22

    if-nez p4, :cond_27

    :cond_22
    if-eqz p5, :cond_27

    .line 562
    invoke-virtual {p0, p5}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V

    .line 564
    :cond_27
    iput-object p5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 565
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;)I
    .registers 6
    .parameter "other"

    .prologue
    .line 581
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 537
    check-cast p1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->compareTo(Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;)I

    move-result v0

    return v0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getNameIcon()V
    .registers 26

    .prologue
    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 620
    .local v17, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v19

    .line 621
    .local v19, uid:I
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 622
    .local v7, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 623
    .local v14, packages:[Ljava/lang/String;
    if-nez v14, :cond_2d

    .line 624
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 682
    :goto_2c
    return-void

    .line 628
    :cond_2d
    move-object v0, v14

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .line 629
    .local v13, packageLabels:[Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v0, v14

    array-length v0, v0

    move/from16 v24, v0

    move-object v0, v14

    move/from16 v1, v22

    move-object v2, v13

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    const/16 v18, -0x1

    .line 633
    .local v18, preferredIndex:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4c
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    move v0, v8

    move/from16 v1, v22

    if-ge v0, v1, :cond_9e

    .line 635
    aget-object v22, v13, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_65

    move/from16 v18, v8

    .line 637
    :cond_65
    :try_start_65
    aget-object v22, v13, v8

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 638
    .local v5, ai:Landroid/content/pm/ApplicationInfo;
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 639
    .local v10, label:Ljava/lang/CharSequence;
    if-eqz v10, :cond_82

    .line 640
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v13, v8

    .line 642
    :cond_82
    move-object v0, v5

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_12f

    .line 643
    aget-object v22, v14, v8

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 644
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_9e} :catch_12e

    .line 650
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v10           #label:Ljava/lang/CharSequence;
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_ab

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 652
    :cond_ab
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_133

    .line 653
    const/16 v22, 0x0

    aget-object v22, v13, v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 675
    :cond_c1
    :goto_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 676
    .local v20, uidString:Ljava/lang/String;
    new-instance v21, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;

    invoke-direct/range {v21 .. v21}, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;-><init>()V

    .line 677
    .local v21, utd:Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->name:Ljava/lang/String;

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->packageName:Ljava/lang/String;

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2c

    .line 647
    .end local v20           #uidString:Ljava/lang/String;
    .end local v21           #utd:Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;
    :catch_12e
    move-exception v22

    .line 633
    :cond_12f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4c

    .line 656
    :cond_133
    move-object v6, v14

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_136
    if-ge v9, v11, :cond_c1

    aget-object v16, v6, v9

    .line 658
    .local v16, pkgName:Ljava/lang/String;
    const/16 v22, 0x0

    :try_start_13c
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 659
    .local v15, pi:Landroid/content/pm/PackageInfo;
    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v22, v0

    if-eqz v22, :cond_198

    .line 660
    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v22, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 662
    .local v12, nm:Ljava/lang/CharSequence;
    if-eqz v12, :cond_198

    .line 663
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 664
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_c1

    .line 665
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 666
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_195
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13c .. :try_end_195} :catch_197

    goto/16 :goto_c1

    .line 671
    .end local v12           #nm:Ljava/lang/CharSequence;
    .end local v15           #pi:Landroid/content/pm/PackageInfo;
    :catch_197
    move-exception v22

    .line 656
    :cond_198
    add-int/lit8 v9, v9, 0x1

    goto :goto_136
.end method

.method getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V
    .registers 10
    .parameter "uidObj"

    .prologue
    .line 585
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    .line 586
    .local v3, uid:I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, uidString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 588
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;

    .line 589
    .local v5, utd:Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;
    iget-object v6, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 590
    iget-object v6, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->name:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 591
    iget-object v6, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 612
    .end local v5           #utd:Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;
    :cond_2c
    :goto_2c
    return-void

    .line 594
    :cond_2d
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 595
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 596
    .local v0, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, packages:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 598
    if-nez v1, :cond_6f

    .line 600
    if-nez v3, :cond_55

    .line 601
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08036a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    goto :goto_2c

    .line 602
    :cond_55
    const-string v6, "mediaserver"

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 603
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08036b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    goto :goto_2c

    .line 609
    :cond_6f
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 610
    :try_start_76
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    monitor-exit v6

    goto :goto_2c

    :catchall_81
    move-exception v7

    monitor-exit v6
    :try_end_83
    .catchall {:try_start_76 .. :try_end_83} :catchall_81

    throw v7
.end method

.method getSortValue()D
    .registers 3

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->value:D

    return-wide v0
.end method

.method getValues()[D
    .registers 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->values:[D

    return-object v0
.end method
