.class Lcom/android/settings/ManageApplications$AppInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfo"
.end annotation


# instance fields
.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/CharSequence;

.field public appSize:Ljava/lang/CharSequence;

.field index:I

.field public pkgName:Ljava/lang/String;

.field size:J

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/ManageApplications;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .registers 17
    .parameter
    .parameter "pName"
    .parameter "pIndex"
    .parameter "aName"
    .parameter "pSize"
    .parameter "pSizeStr"

    .prologue
    .line 1419
    invoke-static {p1}, Lcom/android/settings/ManageApplications;->access$3000(Lcom/android/settings/ManageApplications;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/ManageApplications$AppInfo;-><init>(Lcom/android/settings/ManageApplications;Ljava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;JLjava/lang/CharSequence;)V

    .line 1420
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/ManageApplications;Ljava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;JLjava/lang/CharSequence;)V
    .registers 9
    .parameter
    .parameter "pName"
    .parameter "pIndex"
    .parameter "aName"
    .parameter "aIcon"
    .parameter "pSize"
    .parameter "pSizeStr"

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfo;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    iput p3, p0, Lcom/android/settings/ManageApplications$AppInfo;->index:I

    .line 1425
    iput-object p2, p0, Lcom/android/settings/ManageApplications$AppInfo;->pkgName:Ljava/lang/String;

    .line 1426
    iput-object p4, p0, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    .line 1427
    iput-object p5, p0, Lcom/android/settings/ManageApplications$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 1428
    iput-wide p6, p0, Lcom/android/settings/ManageApplications$AppInfo;->size:J

    .line 1429
    iput-object p8, p0, Lcom/android/settings/ManageApplications$AppInfo;->appSize:Ljava/lang/CharSequence;

    .line 1430
    return-void
.end method


# virtual methods
.method public refreshIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 1433
    if-nez p1, :cond_3

    .line 1438
    :goto_2
    return-void

    .line 1437
    :cond_3
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public refreshLabel(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "label"

    .prologue
    .line 1441
    if-nez p1, :cond_3

    .line 1446
    :goto_2
    return-void

    .line 1445
    :cond_3
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method public setSize(JLjava/lang/String;)Z
    .registers 6
    .parameter "newSize"
    .parameter "formattedSize"

    .prologue
    .line 1449
    iget-wide v0, p0, Lcom/android/settings/ManageApplications$AppInfo;->size:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_c

    .line 1450
    iput-wide p1, p0, Lcom/android/settings/ManageApplications$AppInfo;->size:J

    .line 1451
    iput-object p3, p0, Lcom/android/settings/ManageApplications$AppInfo;->appSize:Ljava/lang/CharSequence;

    .line 1453
    const/4 v0, 0x1

    .line 1456
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
