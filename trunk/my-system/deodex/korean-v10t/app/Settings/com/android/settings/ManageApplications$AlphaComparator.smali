.class Lcom/android/settings/ManageApplications$AlphaComparator;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .registers 3
    .parameter

    .prologue
    .line 2361
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AlphaComparator;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2362
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AlphaComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .registers 8
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2365
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AlphaComparator;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 2366
    .local v0, ainfo:Lcom/android/settings/ManageApplications$AppInfo;
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AlphaComparator;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$1400(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2300(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v1

    .line 2368
    .local v1, binfo:Lcom/android/settings/ManageApplications$AppInfo;
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AlphaComparator;->sCollator:Ljava/text/Collator;

    iget-object v3, v0, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2361
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ManageApplications$AlphaComparator;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
