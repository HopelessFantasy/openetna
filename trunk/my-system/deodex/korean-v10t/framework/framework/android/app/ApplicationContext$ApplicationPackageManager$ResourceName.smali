.class final Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
.super Ljava/lang/Object;
.source "ApplicationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationContext$ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceName"
.end annotation


# instance fields
.field final iconId:I

.field final packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .registers 4
    .parameter "aInfo"
    .parameter "_iconId"

    .prologue
    .line 2444
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2445
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ComponentInfo;I)V
    .registers 4
    .parameter "cInfo"
    .parameter "_iconId"

    .prologue
    .line 2448
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2449
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ResolveInfo;I)V
    .registers 4
    .parameter "rInfo"
    .parameter "_iconId"

    .prologue
    .line 2452
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 2453
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "_packageName"
    .parameter "_iconId"

    .prologue
    .line 2438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2439
    iput-object p1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    .line 2440
    iput p2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->iconId:I

    .line 2441
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2457
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 2463
    :goto_5
    return v2

    .line 2458
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v4

    goto :goto_5

    .line 2460
    :cond_14
    move-object v0, p1

    check-cast v0, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;

    move-object v1, v0

    .line 2462
    .local v1, that:Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;
    iget v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->iconId:I

    iget v3, v1, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->iconId:I

    if-eq v2, v3, :cond_20

    move v2, v4

    goto :goto_5

    .line 2463
    :cond_20
    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    :cond_2e
    move v2, v4

    goto :goto_5

    :cond_30
    iget-object v2, v1, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    if-nez v2, :cond_2e

    :cond_34
    move v2, v5

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 2471
    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2472
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->iconId:I

    add-int v0, v1, v2

    .line 2473
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ResourceName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ApplicationContext$ApplicationPackageManager$ResourceName;->iconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method