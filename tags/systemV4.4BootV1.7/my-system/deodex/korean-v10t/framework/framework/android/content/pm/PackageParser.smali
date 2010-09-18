.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo; = null

.field public static final PARSE_CHATTY:I = 0x2

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field private static final RIGID_PARSER:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static sCompatibilityModeEnabled:Z


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSdkCodename:Ljava/lang/String;

.field private mSdkVersion:I

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, v2, v5, v3}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, v2, v5, v3}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    .line 95
    sput-boolean v4, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "archiveSourcePath"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 148
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 149
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 57
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "pkg"
    .parameter "clsSeq"
    .parameter "outError"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x0

    .line 981
    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_23

    .line 982
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty class name in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    move-object v3, v6

    .line 1000
    :goto_22
    return-object v3

    .line 985
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, cls:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 987
    .local v1, c:C
    if-ne v1, v4, :cond_43

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 990
    :cond_43
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_5d

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 992
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 996
    .end local v0           #b:Ljava/lang/StringBuilder;
    :cond_5d
    const/16 v3, 0x61

    if-lt v1, v3, :cond_6a

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_6a

    .line 997
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    .line 999
    :cond_6a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    move-object v3, v6

    .line 1000
    goto :goto_22
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "pkg"
    .parameter "procSeq"
    .parameter "type"
    .parameter "outError"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v9, " name "

    const-string v8, " in package "

    .line 1005
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    .local v2, proc:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1007
    .local v0, c:C
    if-eqz p0, :cond_a2

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_a2

    .line 1008
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4d

    .line 1009
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": must be at least two characters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1028
    :goto_4c
    return-object v4

    .line 1013
    :cond_4d
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1014
    .local v3, subName:Ljava/lang/String;
    invoke-static {v3, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, nameError:Ljava/lang/String;
    if-eqz v1, :cond_8c

    .line 1016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1018
    goto :goto_4c

    .line 1020
    :cond_8c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_4c

    .line 1022
    .end local v1           #nameError:Ljava/lang/String;
    .end local v3           #subName:Ljava/lang/String;
    :cond_a2
    invoke-static {v2, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1023
    .restart local v1       #nameError:Ljava/lang/String;
    if-eqz v1, :cond_e6

    const-string v4, "system"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e6

    .line 1024
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1026
    goto/16 :goto_4c

    .line 1028
    :cond_e6
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4c
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "pkg"
    .parameter "defProc"
    .parameter "procSeq"
    .parameter "flags"
    .parameter "separateProcesses"
    .parameter "outError"

    .prologue
    .line 1034
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_12

    const-string v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1035
    if-eqz p1, :cond_10

    move-object v2, p1

    .line 1048
    :goto_f
    return-object v2

    :cond_10
    move-object v2, p0

    .line 1035
    goto :goto_f

    .line 1037
    :cond_12
    if-eqz p4, :cond_33

    .line 1038
    array-length v2, p4

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_18
    if-ltz v0, :cond_33

    .line 1039
    aget-object v1, p4, v0

    .line 1040
    .local v1, sp:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2e
    move-object v2, p0

    .line 1041
    goto :goto_f

    .line 1038
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 1045
    .end local v0           #i:I
    .end local v1           #sp:Ljava/lang/String;
    :cond_33
    if-eqz p2, :cond_3b

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_3d

    :cond_3b
    move-object v2, p1

    .line 1046
    goto :goto_f

    .line 1048
    :cond_3d
    const-string v2, "package"

    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "pkg"
    .parameter "defProc"
    .parameter "procSeq"
    .parameter "outError"

    .prologue
    .line 1053
    if-nez p2, :cond_4

    move-object v0, p1

    .line 1059
    :goto_3
    return-object v0

    .line 1056
    :cond_4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_c

    .line 1057
    const/4 v0, 0x0

    goto :goto_3

    .line 1059
    :cond_c
    const-string v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z
    .registers 5
    .parameter "flags"
    .parameter "p"
    .parameter "metaData"

    .prologue
    const/4 v1, 0x1

    .line 2598
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_d

    if-nez p2, :cond_b

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    :cond_b
    move v0, v1

    .line 2606
    :goto_c
    return v0

    .line 2602
    :cond_d
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_17

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v0, :cond_17

    move v0, v1

    .line 2604
    goto :goto_c

    .line 2606
    :cond_17
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .parameter "a"
    .parameter "flags"

    .prologue
    .line 2674
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 2682
    :goto_3
    return-object v1

    .line 2675
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2676
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_3

    .line 2679
    :cond_11
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 2680
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2681
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 2682
    goto :goto_3
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 2610
    if-nez p0, :cond_4

    .line 2631
    :goto_3
    return-object v1

    .line 2611
    :cond_4
    invoke-static {p1, p0, v1}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2614
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_13

    .line 2615
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 2617
    :cond_13
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_3

    .line 2621
    :cond_16
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2622
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_25

    .line 2623
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2625
    :cond_25
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_2d

    .line 2626
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2628
    :cond_2d
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_34

    .line 2629
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    :cond_34
    move-object v1, v0

    .line 2631
    goto :goto_3
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .registers 4
    .parameter "i"
    .parameter "flags"

    .prologue
    .line 2772
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 2778
    :goto_3
    return-object v1

    .line 2773
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 2774
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    goto :goto_3

    .line 2776
    :cond_b
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 2777
    .local v0, ii:Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 2778
    goto :goto_3
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[II)Landroid/content/pm/PackageInfo;
    .registers 12
    .parameter "p"
    .parameter "gids"
    .parameter "flags"

    .prologue
    const/4 v8, 0x0

    .line 173
    new-instance v3, Landroid/content/pm/PackageInfo;

    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 174
    .local v3, pi:Landroid/content/pm/PackageInfo;
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 175
    iget v6, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 176
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 177
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 178
    iget v6, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v6, v3, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 179
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 180
    and-int/lit16 v6, p2, 0x100

    if-eqz v6, :cond_24

    .line 181
    iput-object p1, v3, Landroid/content/pm/PackageInfo;->gids:[I

    .line 183
    :cond_24
    and-int/lit16 v6, p2, 0x4000

    if-eqz v6, :cond_46

    .line 184
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 185
    .local v0, N:I
    if-lez v0, :cond_46

    .line 186
    new-array v6, v0, [Landroid/content/pm/ConfigurationInfo;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 187
    const/4 v2, 0x0

    .local v2, i:I
    :goto_35
    if-ge v2, v0, :cond_46

    .line 188
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ConfigurationInfo;

    aput-object v6, v7, v2

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 192
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_46
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_7e

    .line 193
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 194
    .restart local v0       #N:I
    if-lez v0, :cond_7e

    .line 195
    new-array v6, v0, [Landroid/content/pm/ActivityInfo;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 196
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_57
    if-ge v2, v0, :cond_7e

    .line 197
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 198
    .local v1, activity:Landroid/content/pm/PackageParser$Activity;
    iget-object v6, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v6, :cond_6b

    and-int/lit16 v6, p2, 0x200

    if-eqz v6, :cond_7b

    .line 200
    :cond_6b
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Activity;

    invoke-static {v6, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    aput-object v6, v7, v2

    .line 196
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 205
    .end local v0           #N:I
    .end local v1           #activity:Landroid/content/pm/PackageParser$Activity;
    .end local v2           #i:I
    :cond_7e
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_b6

    .line 206
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 207
    .restart local v0       #N:I
    if-lez v0, :cond_b6

    .line 208
    new-array v6, v0, [Landroid/content/pm/ActivityInfo;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 209
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8f
    if-ge v2, v0, :cond_b6

    .line 210
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 211
    .restart local v1       #activity:Landroid/content/pm/PackageParser$Activity;
    iget-object v6, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v6, :cond_a3

    and-int/lit16 v6, p2, 0x200

    if-eqz v6, :cond_b3

    .line 213
    :cond_a3
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Activity;

    invoke-static {v6, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    aput-object v6, v7, v2

    .line 209
    :cond_b3
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 218
    .end local v0           #N:I
    .end local v1           #activity:Landroid/content/pm/PackageParser$Activity;
    .end local v2           #i:I
    :cond_b6
    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_ee

    .line 219
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 220
    .restart local v0       #N:I
    if-lez v0, :cond_ee

    .line 221
    new-array v6, v0, [Landroid/content/pm/ServiceInfo;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 222
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_c7
    if-ge v2, v0, :cond_ee

    .line 223
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Service;

    .line 224
    .local v5, service:Landroid/content/pm/PackageParser$Service;
    iget-object v6, v5, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v6, v6, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-nez v6, :cond_db

    and-int/lit16 v6, p2, 0x200

    if-eqz v6, :cond_eb

    .line 226
    :cond_db
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Service;

    invoke-static {v6, p2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    aput-object v6, v7, v2

    .line 222
    :cond_eb
    add-int/lit8 v2, v2, 0x1

    goto :goto_c7

    .line 231
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #service:Landroid/content/pm/PackageParser$Service;
    :cond_ee
    and-int/lit8 v6, p2, 0x8

    if-eqz v6, :cond_126

    .line 232
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 233
    .restart local v0       #N:I
    if-lez v0, :cond_126

    .line 234
    new-array v6, v0, [Landroid/content/pm/ProviderInfo;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 235
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_ff
    if-ge v2, v0, :cond_126

    .line 236
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Provider;

    .line 237
    .local v4, provider:Landroid/content/pm/PackageParser$Provider;
    iget-object v6, v4, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v6, v6, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez v6, :cond_113

    and-int/lit16 v6, p2, 0x200

    if-eqz v6, :cond_123

    .line 239
    :cond_113
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Provider;

    invoke-static {v6, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    aput-object v6, v7, v2

    .line 235
    :cond_123
    add-int/lit8 v2, v2, 0x1

    goto :goto_ff

    .line 244
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #provider:Landroid/content/pm/PackageParser$Provider;
    :cond_126
    and-int/lit8 v6, p2, 0x10

    if-eqz v6, :cond_14c

    .line 245
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    .restart local v0       #N:I
    if-lez v0, :cond_14c

    .line 247
    new-array v6, v0, [Landroid/content/pm/InstrumentationInfo;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 248
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_137
    if-ge v2, v0, :cond_14c

    .line 249
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-static {v6, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v6

    aput-object v6, v7, v2

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_137

    .line 254
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_14c
    and-int/lit16 v6, p2, 0x1000

    if-eqz v6, :cond_190

    .line 255
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 256
    .restart local v0       #N:I
    if-lez v0, :cond_172

    .line 257
    new-array v6, v0, [Landroid/content/pm/PermissionInfo;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 258
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_15d
    if-ge v2, v0, :cond_172

    .line 259
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Permission;

    invoke-static {v6, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v6

    aput-object v6, v7, v2

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_15d

    .line 262
    .end local v2           #i:I
    :cond_172
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 263
    if-lez v0, :cond_190

    .line 264
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 265
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_17f
    if-ge v2, v0, :cond_190

    .line 266
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v7, v2

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_17f

    .line 270
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_190
    and-int/lit8 v6, p2, 0x40

    if-eqz v6, :cond_1a4

    .line 271
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v0, v6

    .line 272
    .restart local v0       #N:I
    if-lez v0, :cond_1a4

    .line 273
    new-array v6, v0, [Landroid/content/pm/Signature;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 274
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v6, v8, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    .end local v0           #N:I
    :cond_1a4
    return-object v3
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 4
    .parameter "pg"
    .parameter "flags"

    .prologue
    .line 2647
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 2653
    :goto_3
    return-object v1

    .line 2648
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 2649
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    goto :goto_3

    .line 2651
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 2652
    .local v0, pgi:Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 2653
    goto :goto_3
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .registers 4
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 2636
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 2642
    :goto_3
    return-object v1

    .line 2637
    :cond_4
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_b

    .line 2638
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    goto :goto_3

    .line 2640
    :cond_b
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 2641
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 2642
    goto :goto_3
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;
    .registers 6
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 2739
    if-nez p0, :cond_5

    move-object v1, v3

    .line 2752
    :goto_4
    return-object v1

    .line 2740
    :cond_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1c

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_19

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_1c

    .line 2743
    :cond_19
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    goto :goto_4

    .line 2746
    :cond_1c
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 2747
    .local v0, pi:Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 2748
    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2d

    .line 2749
    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 2751
    :cond_2d
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 2752
    goto :goto_4
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .parameter "s"
    .parameter "flags"

    .prologue
    .line 2702
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 2710
    :goto_3
    return-object v1

    .line 2703
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2704
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    .line 2707
    :cond_11
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 2708
    .local v0, si:Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 2709
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 2710
    goto :goto_3
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .registers 2
    .parameter "name"

    .prologue
    .line 161
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 10
    .parameter "jarFile"
    .parameter "je"
    .parameter "readBuffer"

    .prologue
    const/4 v5, 0x0

    .line 285
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 286
    .local v1, is:Ljava/io/InputStream;
    :cond_5
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 289
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 290
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_1a

    move-result-object v2

    .line 295
    .end local v1           #is:Ljava/io/InputStream;
    :goto_17
    return-object v2

    .restart local v1       #is:Ljava/io/InputStream;
    :cond_18
    move-object v2, v5

    .line 290
    goto :goto_17

    .line 291
    .end local v1           #is:Ljava/io/InputStream;
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 292
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 295
    goto :goto_17
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;
    .registers 30
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1516
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 1519
    .local v18, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    if-nez v4, :cond_2a

    .line 1520
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x7

    const/4 v12, 0x5

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    invoke-direct/range {v4 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III[Ljava/lang/String;II)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1529
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    if-eqz p7, :cond_66

    const-string v5, "<receiver>"

    :goto_33
    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    move/from16 v0, p5

    move-object v1, v4

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 1533
    new-instance v16, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 1534
    .local v16, a:Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_69

    .line 1535
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 1536
    const/4 v4, 0x0

    .line 1685
    :goto_65
    return-object v4

    .line 1529
    .end local v16           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_66
    const-string v5, "<activity>"

    goto :goto_33

    .line 1539
    .restart local v16       #a:Landroid/content/pm/PackageParser$Activity;
    :cond_69
    const/4 v4, 0x6

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    .line 1541
    .local v19, setExported:Z
    if-eqz v19, :cond_84

    .line 1542
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1546
    :cond_84
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1550
    const/4 v4, 0x4

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1552
    .local v20, str:Ljava/lang/String;
    if-nez v20, :cond_1fd

    .line 1553
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1558
    :goto_ad
    const/16 v4, 0x8

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1560
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1563
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1564
    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 1567
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1570
    :cond_f5
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 1573
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1576
    :cond_10d
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_125

    .line 1579
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1582
    :cond_125
    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_13d

    .line 1585
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1588
    :cond_13d
    const/16 v4, 0x11

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_155

    .line 1591
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1594
    :cond_155
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_16d

    .line 1597
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1600
    :cond_16d
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_185

    .line 1603
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1606
    :cond_185
    const/16 v4, 0x12

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_216

    const/4 v5, 0x1

    :goto_193
    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a8

    .line 1609
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1612
    :cond_1a8
    if-nez p7, :cond_219

    .line 1613
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1616
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0xf

    const/4 v6, -0x1

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1619
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1622
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0x13

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1630
    :goto_1f2
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 1632
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_22a

    .line 1633
    const/4 v4, 0x0

    goto/16 :goto_65

    .line 1555
    :cond_1fd
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_214

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    :goto_210
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_ad

    :cond_214
    const/4 v5, 0x0

    goto :goto_210

    .line 1606
    :cond_216
    const/4 v5, 0x0

    goto/16 :goto_193

    .line 1626
    :cond_219
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1627
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    goto :goto_1f2

    .line 1636
    :cond_22a
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .line 1639
    .local v17, outerDepth:I
    :cond_22e
    :goto_22e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/4 v4, 0x1

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_33e

    const/4 v4, 0x3

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_247

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_33e

    .line 1641
    :cond_247
    const/4 v4, 0x3

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_22e

    const/4 v4, 0x4

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_22e

    .line 1645
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b2

    .line 1646
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 1647
    .local v9, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez p7, :cond_280

    const/4 v4, 0x1

    move v11, v4

    :goto_26b
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_283

    .line 1648
    const/4 v4, 0x0

    goto/16 :goto_65

    .line 1647
    :cond_280
    const/4 v4, 0x0

    move v11, v4

    goto :goto_26b

    .line 1650
    :cond_283
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_2a8

    .line 1651
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent filter for activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " defines no actions"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22e

    .line 1654
    :cond_2a8
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22e

    .line 1656
    .end local v9           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2b2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2db

    .line 1657
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object v14, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v15, p6

    invoke-direct/range {v10 .. v15}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_22e

    .line 1659
    const/4 v4, 0x0

    goto/16 :goto_65

    .line 1663
    :cond_2db
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    if-eqz p7, :cond_321

    .line 1665
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <receiver>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :goto_31c
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_22e

    .line 1667
    :cond_321
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <activity>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31c

    .line 1681
    :cond_33e
    if-nez v19, :cond_353

    .line 1682
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_357

    const/4 v5, 0x1

    :goto_351
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_353
    move-object/from16 v4, v16

    .line 1685
    goto/16 :goto_65

    .line 1682
    :cond_357
    const/4 v5, 0x0

    goto :goto_351
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .registers 34
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1691
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 1694
    .local v20, sa:Landroid/content/res/TypedArray;
    const/4 v3, 0x6

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v25

    .line 1696
    .local v25, targetActivity:Ljava/lang/String;
    if-nez v25, :cond_1f

    .line 1697
    const/4 v3, 0x0

    const-string v4, "<activity-alias> does not specify android:targetActivity"

    aput-object v4, p6, v3

    .line 1698
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1699
    const/4 v3, 0x0

    .line 1821
    :goto_1e
    return-object v3

    .line 1702
    :cond_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1704
    if-nez v25, :cond_36

    .line 1705
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1706
    const/4 v3, 0x0

    goto :goto_1e

    .line 1709
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_5e

    .line 1710
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III[Ljava/lang/String;II)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<activity-alias>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 1720
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v20

    move-object v1, v3

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 1723
    const/16 v24, 0x0

    .line 1725
    .local v24, target:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1726
    .local v15, NA:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_7f
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_a4

    .line 1727
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageParser$Activity;

    .line 1728
    .local v23, t:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 1729
    move-object/from16 v24, v23

    .line 1734
    .end local v23           #t:Landroid/content/pm/PackageParser$Activity;
    :cond_a4
    if-nez v24, :cond_ce

    .line 1735
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<activity-alias> target activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p6, v3

    .line 1737
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1738
    const/4 v3, 0x0

    goto/16 :goto_1e

    .line 1726
    .restart local v23       #t:Landroid/content/pm/PackageParser$Activity;
    :cond_cb
    add-int/lit8 v17, v17, 0x1

    goto :goto_7f

    .line 1741
    .end local v23           #t:Landroid/content/pm/PackageParser$Activity;
    :cond_ce
    new-instance v18, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v18 .. v18}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 1742
    .local v18, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 1743
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1744
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1745
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->icon:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->icon:I

    .line 1746
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->labelRes:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 1747
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1748
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1749
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1750
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1751
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1752
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1754
    new-instance v16, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 1755
    .local v16, a:Landroid/content/pm/PackageParser$Activity;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_16b

    .line 1756
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1757
    const/4 v3, 0x0

    goto/16 :goto_1e

    .line 1760
    :cond_16b
    const/4 v3, 0x5

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    .line 1762
    .local v21, setExported:Z
    if-eqz v21, :cond_186

    .line 1763
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1768
    :cond_186
    const/4 v3, 0x3

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v22

    .line 1770
    .local v22, str:Ljava/lang/String;
    if-eqz v22, :cond_1a5

    .line 1771
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1b0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_1a3
    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1774
    :cond_1a5
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1776
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_1b2

    .line 1777
    const/4 v3, 0x0

    goto/16 :goto_1e

    .line 1771
    :cond_1b0
    const/4 v4, 0x0

    goto :goto_1a3

    .line 1780
    :cond_1b2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    .line 1783
    .local v19, outerDepth:I
    :cond_1b6
    :goto_1b6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, type:I
    const/4 v3, 0x1

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_2a0

    const/4 v3, 0x3

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_1cf

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v0, v3

    move/from16 v1, v19

    if-le v0, v1, :cond_2a0

    .line 1785
    :cond_1cf
    const/4 v3, 0x3

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_1b6

    const/4 v3, 0x4

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_1b6

    .line 1789
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent-filter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_233

    .line 1790
    new-instance v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 1791
    .local v8, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_205

    .line 1792
    const/4 v3, 0x0

    goto/16 :goto_1e

    .line 1794
    :cond_205
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v3

    if-nez v3, :cond_22a

    .line 1795
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent filter for activity alias "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " defines no actions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b6

    .line 1798
    :cond_22a
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b6

    .line 1800
    .end local v8           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_233
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25c

    .line 1801
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object v13, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1b6

    .line 1803
    const/4 v3, 0x0

    goto/16 :goto_1e

    .line 1807
    :cond_25c
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <activity-alias>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1b6

    .line 1817
    :cond_2a0
    if-nez v21, :cond_2b5

    .line 1818
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2b9

    const/4 v4, 0x1

    :goto_2b3
    iput-boolean v4, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_2b5
    move-object/from16 v3, v16

    .line 1821
    goto/16 :goto_1e

    .line 1818
    :cond_2b9
    const/4 v4, 0x0

    goto :goto_2b3
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .registers 15
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "tag"
    .parameter "outInfo"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2172
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2175
    .local v6, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v0, 0x1

    if-eq v7, v0, :cond_81

    const/4 v0, 0x3

    if-ne v7, v0, :cond_14

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v6, :cond_81

    .line 2177
    :cond_14
    const/4 v0, 0x3

    if-eq v7, v0, :cond_4

    const/4 v0, 0x4

    if-eq v7, v0, :cond_4

    .line 2181
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2182
    iget-object v4, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_4

    .line 2184
    const/4 v0, 0x0

    .line 2199
    :goto_36
    return v0

    .line 2188
    :cond_37
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 2199
    :cond_81
    const/4 v0, 0x1

    goto :goto_36
.end method

.method private parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z
    .registers 35
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1253
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v13, v0

    .line 1254
    .local v13, ai:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1256
    .local v21, pkgName:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v23

    .line 1259
    .local v23, sa:Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v19

    .line 1261
    .local v19, name:Ljava/lang/String;
    if-eqz v19, :cond_40

    .line 1262
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1263
    iget-object v4, v13, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-nez v4, :cond_40

    .line 1264
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 1265
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1266
    const/4 v4, 0x0

    .line 1460
    :goto_3f
    return v4

    .line 1270
    :cond_40
    const/4 v4, 0x4

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v18

    .line 1272
    .local v18, manageSpaceActivity:Ljava/lang/String;
    if-eqz v18, :cond_56

    .line 1273
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 1277
    :cond_56
    const/16 v4, 0x11

    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 1279
    .local v14, allowBackup:Z
    if-eqz v14, :cond_b0

    .line 1280
    iget v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1281
    const/16 v4, 0x10

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    .line 1283
    .local v15, backupAgent:Ljava/lang/String;
    if-eqz v15, :cond_b0

    .line 1284
    move-object/from16 v0, v21

    move-object v1, v15

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1285
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android:backupAgent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    .end local v15           #backupAgent:Ljava/lang/String;
    :cond_b0
    const/4 v4, 0x1

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v27

    .line 1292
    .local v27, v:Landroid/util/TypedValue;
    if-eqz v27, :cond_c9

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move v4, v0

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v4, :cond_c9

    .line 1293
    invoke-virtual/range {v27 .. v27}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v13, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1296
    :cond_c9
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1298
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1300
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 1303
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_105

    .line 1304
    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 1307
    iget v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1311
    :cond_105
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_118

    .line 1314
    iget v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1317
    :cond_118
    const/4 v4, 0x7

    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 1320
    iget v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1323
    :cond_12a
    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_13d

    .line 1326
    iget v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1329
    :cond_13d
    const/4 v4, 0x5

    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_14f

    .line 1332
    iget v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1335
    :cond_14f
    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_162

    .line 1338
    iget v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1342
    :cond_162
    const/4 v4, 0x6

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v24

    .line 1344
    .local v24, str:Ljava/lang/String;
    if-eqz v24, :cond_1d0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_176
    iput-object v4, v13, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 1346
    const/16 v4, 0xc

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v24

    .line 1348
    iget-object v4, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v24

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 1351
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-nez v4, :cond_1be

    .line 1352
    iget-object v4, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0xb

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v8, v0

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1356
    const/16 v4, 0x9

    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v13, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1359
    :cond_1be
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 1361
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_1d2

    .line 1362
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1363
    const/4 v4, 0x0

    goto/16 :goto_3f

    .line 1344
    :cond_1d0
    const/4 v4, 0x0

    goto :goto_176

    .line 1366
    :cond_1d2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    .line 1370
    .local v16, innerDepth:I
    :cond_1d6
    :goto_1d6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, type:I
    const/4 v4, 0x1

    move/from16 v0, v26

    move v1, v4

    if-eq v0, v1, :cond_390

    const/4 v4, 0x3

    move/from16 v0, v26

    move v1, v4

    if-ne v0, v1, :cond_1ef

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v16

    if-le v0, v1, :cond_390

    .line 1371
    :cond_1ef
    const/4 v4, 0x3

    move/from16 v0, v26

    move v1, v4

    if-eq v0, v1, :cond_1d6

    const/4 v4, 0x4

    move/from16 v0, v26

    move v1, v4

    if-eq v0, v1, :cond_1d6

    .line 1375
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 1376
    .local v25, tagName:Ljava/lang/String;
    const-string v4, "activity"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_232

    .line 1377
    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;

    move-result-object v12

    .line 1378
    .local v12, a:Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_229

    .line 1379
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1380
    const/4 v4, 0x0

    goto/16 :goto_3f

    .line 1383
    :cond_229
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d6

    .line 1385
    .end local v12           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_232
    const-string v4, "receiver"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_266

    .line 1386
    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;

    move-result-object v12

    .line 1387
    .restart local v12       #a:Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_25c

    .line 1388
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1389
    const/4 v4, 0x0

    goto/16 :goto_3f

    .line 1392
    :cond_25c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d6

    .line 1394
    .end local v12           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_266
    const-string v4, "service"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28e

    .line 1395
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v22

    .line 1396
    .local v22, s:Landroid/content/pm/PackageParser$Service;
    if-nez v22, :cond_281

    .line 1397
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1398
    const/4 v4, 0x0

    goto/16 :goto_3f

    .line 1401
    :cond_281
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d6

    .line 1403
    .end local v22           #s:Landroid/content/pm/PackageParser$Service;
    :cond_28e
    const-string v4, "provider"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b6

    .line 1404
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v20

    .line 1405
    .local v20, p:Landroid/content/pm/PackageParser$Provider;
    if-nez v20, :cond_2a9

    .line 1406
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1407
    const/4 v4, 0x0

    goto/16 :goto_3f

    .line 1410
    :cond_2a9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d6

    .line 1412
    .end local v20           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_2b6
    const-string v4, "activity-alias"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2db

    .line 1413
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v12

    .line 1414
    .restart local v12       #a:Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_2d1

    .line 1415
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1416
    const/4 v4, 0x0

    goto/16 :goto_3f

    .line 1419
    :cond_2d1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d6

    .line 1421
    .end local v12           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_2db
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30b

    .line 1425
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_1d6

    .line 1427
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1428
    const/4 v4, 0x0

    goto/16 :goto_3f

    .line 1431
    :cond_30b
    const-string v4, "uses-library"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34d

    .line 1432
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v23

    .line 1435
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v17

    .line 1438
    .local v17, lname:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 1440
    if-eqz v17, :cond_348

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_348

    .line 1441
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    :cond_348
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1d6

    .line 1448
    .end local v17           #lname:Ljava/lang/String;
    :cond_34d
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <application>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1d6

    .line 1460
    .end local v25           #tagName:Ljava/lang/String;
    :cond_390
    const/4 v4, 0x1

    goto/16 :goto_3f
.end method

.method private parseComponentInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/ComponentInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;IIIII)Z
    .registers 24
    .parameter "owner"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "tag"
    .parameter "sa"
    .parameter "nameRes"
    .parameter "labelRes"
    .parameter "iconRes"
    .parameter "processRes"
    .parameter "enabledRes"

    .prologue
    .line 1498
    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;III)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1500
    const/4 v3, 0x0

    .line 1510
    :goto_16
    return v3

    .line 1503
    :cond_17
    if-eqz p10, :cond_34

    .line 1504
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p6

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move v6, p2

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 1508
    :cond_34
    const/4 v3, 0x1

    move-object/from16 v0, p6

    move/from16 v1, p11

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p3, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 1510
    const/4 v3, 0x0

    aget-object v3, p4, v3

    if-nez v3, :cond_47

    const/4 v3, 0x1

    goto :goto_16

    :cond_47
    const/4 v3, 0x0

    goto :goto_16
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .registers 15
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1197
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1200
    .local v7, sa:Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_1c

    .line 1201
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III)V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1205
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 1208
    :cond_1c
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v7, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 1210
    new-instance v5, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v5, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 1212
    .local v5, a:Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v0, p5, v0

    if-eqz v0, :cond_3a

    .line 1213
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1214
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1215
    const/4 v0, 0x0

    .line 1247
    :goto_39
    return-object v0

    .line 1219
    :cond_3a
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 1221
    .local v8, str:Ljava/lang/String;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v8, :cond_71

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    :goto_47
    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 1223
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 1227
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 1231
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1233
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_73

    .line 1234
    const/4 v0, 0x0

    const-string v1, "<instrumentation> does not specify targetPackage"

    aput-object v1, p5, v0

    .line 1235
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1236
    const/4 v0, 0x0

    goto :goto_39

    .line 1221
    :cond_71
    const/4 v1, 0x0

    goto :goto_47

    .line 1239
    :cond_73
    const-string v4, "<instrumentation>"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 1241
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1242
    const/4 v0, 0x0

    goto :goto_39

    .line 1245
    :cond_86
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 1247
    goto :goto_39
.end method

.method private parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z
    .registers 25
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "isActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2274
    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2277
    .local v9, sa:Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 2279
    .local v8, priority:I
    if-lez v8, :cond_36

    if-eqz p7, :cond_36

    and-int/lit8 v14, p4, 0x1

    if-nez v14, :cond_36

    .line 2280
    const-string v14, "PackageParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Activity with priority > 0, forcing to 0 at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const/4 v8, 0x0

    .line 2284
    :cond_36
    move-object/from16 v0, p5

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 2286
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 2288
    .local v12, v:Landroid/util/TypedValue;
    if-eqz v12, :cond_55

    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v14, :cond_55

    .line 2289
    invoke-virtual {v12}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p5

    iput-object v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2292
    :cond_55
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 2295
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2297
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2300
    .local v6, outerDepth:I
    :cond_67
    :goto_67
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, type:I
    const/4 v14, 0x1

    if-eq v11, v14, :cond_19f

    const/4 v14, 0x3

    if-ne v11, v14, :cond_77

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v6, :cond_19f

    .line 2301
    :cond_77
    const/4 v14, 0x3

    if-eq v11, v14, :cond_67

    const/4 v14, 0x4

    if-eq v11, v14, :cond_67

    .line 2305
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2306
    .local v5, nodeName:Ljava/lang/String;
    const-string v14, "action"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ac

    .line 2307
    const-string v14, "http://schemas.android.com/apk/res/android"

    const-string v15, "name"

    move-object/from16 v0, p3

    move-object v1, v14

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2309
    .local v13, value:Ljava/lang/String;
    if-eqz v13, :cond_9b

    const-string v14, ""

    if-ne v13, v14, :cond_a2

    .line 2310
    :cond_9b
    const/4 v14, 0x0

    const-string v15, "No value supplied for <android:name>"

    aput-object v15, p6, v14

    .line 2311
    const/4 v14, 0x0

    .line 2398
    .end local v5           #nodeName:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :goto_a1
    return v14

    .line 2313
    .restart local v5       #nodeName:Ljava/lang/String;
    .restart local v13       #value:Ljava/lang/String;
    :cond_a2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2315
    move-object/from16 v0, p5

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    goto :goto_67

    .line 2316
    .end local v13           #value:Ljava/lang/String;
    :cond_ac
    const-string v14, "category"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d7

    .line 2317
    const-string v14, "http://schemas.android.com/apk/res/android"

    const-string v15, "name"

    move-object/from16 v0, p3

    move-object v1, v14

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2319
    .restart local v13       #value:Ljava/lang/String;
    if-eqz v13, :cond_c6

    const-string v14, ""

    if-ne v13, v14, :cond_cd

    .line 2320
    :cond_c6
    const/4 v14, 0x0

    const-string v15, "No value supplied for <android:name>"

    aput-object v15, p6, v14

    .line 2321
    const/4 v14, 0x0

    goto :goto_a1

    .line 2323
    :cond_cd
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2325
    move-object/from16 v0, p5

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto :goto_67

    .line 2327
    .end local v13           #value:Ljava/lang/String;
    :cond_d7
    const-string v14, "data"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15a

    .line 2328
    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2331
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 2333
    .local v10, str:Ljava/lang/String;
    if-eqz v10, :cond_f7

    .line 2335
    :try_start_f1
    move-object/from16 v0, p5

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_f7
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_f1 .. :try_end_f7} :catch_14c

    .line 2343
    :cond_f7
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 2345
    if-eqz v10, :cond_104

    .line 2346
    move-object/from16 v0, p5

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 2349
    :cond_104
    const/4 v14, 0x2

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 2351
    .local v4, host:Ljava/lang/String;
    const/4 v14, 0x3

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v7

    .line 2353
    .local v7, port:Ljava/lang/String;
    if-eqz v4, :cond_117

    .line 2354
    move-object/from16 v0, p5

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    :cond_117
    const/4 v14, 0x4

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 2359
    if-eqz v10, :cond_126

    .line 2360
    const/4 v14, 0x0

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2363
    :cond_126
    const/4 v14, 0x5

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 2365
    if-eqz v10, :cond_135

    .line 2366
    const/4 v14, 0x1

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2369
    :cond_135
    const/4 v14, 0x6

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 2371
    if-eqz v10, :cond_144

    .line 2372
    const/4 v14, 0x2

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2375
    :cond_144
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2376
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_67

    .line 2336
    .end local v4           #host:Ljava/lang/String;
    .end local v7           #port:Ljava/lang/String;
    :catch_14c
    move-exception v3

    .line 2337
    .local v3, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const/4 v14, 0x0

    invoke-virtual {v3}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, p6, v14

    .line 2338
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2339
    const/4 v14, 0x0

    goto/16 :goto_a1

    .line 2378
    .end local v3           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v10           #str:Ljava/lang/String;
    :cond_15a
    const-string v14, "PackageParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Problem in package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    const-string v14, "PackageParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown element under <intent-filter>: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_67

    .line 2387
    .end local v5           #nodeName:Ljava/lang/String;
    :cond_19f
    const-string v14, "android.intent.category.DEFAULT"

    move-object/from16 v0, p5

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p5

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 2398
    const/4 v14, 0x1

    goto/16 :goto_a1
.end method

.method private parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 16
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "data"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "PackageParser"

    .line 2207
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2210
    .local v2, sa:Landroid/content/res/TypedArray;
    if-nez p4, :cond_12

    .line 2211
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 2214
    .restart local p4
    :cond_12
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 2216
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_21

    .line 2217
    const-string v4, "<meta-data> requires an android:name attribute"

    aput-object v4, p5, v6

    .line 2218
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v4, v8

    .line 2263
    :goto_20
    return-object v4

    .line 2222
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 2224
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2226
    .local v3, v:Landroid/util/TypedValue;
    if-eqz v3, :cond_3d

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3d

    .line 2228
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2259
    :goto_35
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2261
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, p4

    .line 2263
    goto :goto_20

    .line 2230
    :cond_3d
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2233
    if-eqz v3, :cond_b4

    .line 2234
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5c

    .line 2235
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2236
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_56
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_5a
    move-object v4, v8

    goto :goto_56

    .line 2237
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_5c
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_6d

    .line 2238
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_6b

    move v4, v7

    :goto_67
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_35

    :cond_6b
    move v4, v6

    goto :goto_67

    .line 2239
    :cond_6d
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7f

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7f

    .line 2241
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_35

    .line 2242
    :cond_7f
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8c

    .line 2243
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_35

    .line 2246
    :cond_8c
    const-string v4, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    const-string v4, "PackageParser"

    const-string v4, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types"

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 2254
    :cond_b4
    const-string v4, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v4, p5, v6

    .line 2255
    const/4 p4, 0x0

    goto/16 :goto_35
.end method

.method private parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 40
    .parameter "res"
    .parameter "parser"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    move-object/from16 v8, p2

    .line 633
    .local v8, attrs:Landroid/util/AttributeSet;
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 634
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 635
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 636
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 638
    move-object/from16 v0, p2

    move-object v1, v8

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 639
    .local v23, pkgName:Ljava/lang/String;
    if-nez v23, :cond_30

    .line 640
    const/16 v4, -0x6a

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 641
    const/4 v4, 0x0

    .line 976
    :goto_2f
    return-object v4

    .line 645
    :cond_30
    new-instance v5, Landroid/content/pm/PackageParser$Package;

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 646
    .local v5, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v14, 0x0

    .line 648
    .local v14, foundApp:Z
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 650
    .local v25, sa:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 652
    const/4 v4, 0x2

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 654
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v4, :cond_65

    .line 655
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 657
    :cond_65
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v26

    .line 659
    .local v26, str:Ljava/lang/String;
    if-eqz v26, :cond_c6

    .line 660
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move v1, v4

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    .line 661
    .local v20, nameError:Ljava/lang/String;
    if-eqz v20, :cond_b4

    const-string v4, "android"

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b4

    .line 662
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 664
    const/16 v4, -0x6b

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 665
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 667
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_b4
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 668
    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 671
    .end local v20           #nameError:Ljava/lang/String;
    :cond_c6
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    .line 674
    const/16 v29, 0x1

    .line 675
    .local v29, supportsSmallScreens:I
    const/16 v28, 0x1

    .line 676
    .local v28, supportsNormalScreens:I
    const/16 v27, 0x1

    .line 677
    .local v27, supportsLargeScreens:I
    const/16 v24, 0x1

    .line 678
    .local v24, resizeable:I
    const/4 v12, 0x1

    .line 680
    .local v12, anyDensity:I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    .line 682
    .local v22, outerDepth:I
    :cond_d6
    :goto_d6
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v33

    .local v33, type:I
    const/4 v4, 0x1

    move/from16 v0, v33

    move v1, v4

    if-eq v0, v1, :cond_544

    const/4 v4, 0x3

    move/from16 v0, v33

    move v1, v4

    if-ne v0, v1, :cond_ef

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v22

    if-le v0, v1, :cond_544

    .line 683
    :cond_ef
    const/4 v4, 0x3

    move/from16 v0, v33

    move v1, v4

    if-eq v0, v1, :cond_d6

    const/4 v4, 0x4

    move/from16 v0, v33

    move v1, v4

    if-eq v0, v1, :cond_d6

    .line 687
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v30

    .line 688
    .local v30, tagName:Ljava/lang/String;
    const-string v4, "application"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12b

    .line 689
    if-eqz v14, :cond_117

    .line 695
    const-string v4, "PackageParser"

    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_d6

    .line 701
    :cond_117
    const/4 v14, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 702
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d6

    .line 703
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 705
    :cond_12b
    const-string v4, "permission-group"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_147

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 706
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    move-result-object v4

    if-nez v4, :cond_d6

    .line 707
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 709
    :cond_147
    const-string v4, "permission"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_163

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 710
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v4

    if-nez v4, :cond_d6

    .line 711
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 713
    :cond_163
    const-string v4, "permission-tree"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17f

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 714
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v4

    if-nez v4, :cond_d6

    .line 715
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 717
    :cond_17f
    const-string v4, "uses-permission"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ba

    .line 718
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 721
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v19

    .line 724
    .local v19, name:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    .line 726
    if-eqz v19, :cond_1b5

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b5

    .line 727
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    :cond_1b5
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d6

    .line 732
    .end local v19           #name:Ljava/lang/String;
    :cond_1ba
    const-string v4, "uses-configuration"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_229

    .line 733
    new-instance v13, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v13}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 734
    .local v13, cPref:Landroid/content/pm/ConfigurationInfo;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 736
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 739
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 742
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1fe

    .line 745
    iget v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 747
    :cond_1fe
    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 750
    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_21c

    .line 753
    iget v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 755
    :cond_21c
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    .line 756
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d6

    .line 760
    .end local v13           #cPref:Landroid/content/pm/ConfigurationInfo;
    :cond_229
    const-string v4, "uses-feature"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25c

    .line 761
    new-instance v13, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v13}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 762
    .restart local v13       #cPref:Landroid/content/pm/ConfigurationInfo;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 764
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 767
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    .line 768
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d6

    .line 772
    .end local v13           #cPref:Landroid/content/pm/ConfigurationInfo;
    :cond_25c
    const-string v4, "uses-sdk"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45f

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser;->mSdkVersion:I

    move v4, v0

    if-lez v4, :cond_45a

    .line 774
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 777
    const/16 v18, 0x0

    .line 778
    .local v18, minVers:I
    const/16 v17, 0x0

    .line 779
    .local v17, minCode:Ljava/lang/String;
    const/16 v32, 0x0

    .line 780
    .local v32, targetVers:I
    const/16 v31, 0x0

    .line 782
    .local v31, targetCode:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v34

    .line 784
    .local v34, val:Landroid/util/TypedValue;
    if-eqz v34, :cond_2a4

    .line 785
    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_328

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    if-eqz v4, :cond_328

    .line 786
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v31, v17

    .line 793
    :cond_2a4
    :goto_2a4
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v34

    .line 795
    if-eqz v34, :cond_2c8

    .line 796
    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_332

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    if-eqz v4, :cond_332

    .line 797
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v31, v17

    .line 804
    :cond_2c8
    :goto_2c8
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser;->mSdkVersion:I

    move v6, v0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 808
    .local v16, maxVers:I
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    .line 810
    if-eqz v17, :cond_359

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSdkCodename:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39b

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSdkCodename:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_339

    .line 813
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current platform is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSdkCodename:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 819
    :goto_31e
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 820
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 789
    .end local v16           #maxVers:I
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_328
    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v18, v0

    move/from16 v32, v18

    goto/16 :goto_2a4

    .line 800
    :cond_332
    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v32, v0

    goto :goto_2c8

    .line 816
    .restart local v16       #maxVers:I
    :cond_339
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but this is a release platform."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    goto :goto_31e

    .line 822
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_359
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser;->mSdkVersion:I

    move v4, v0

    move/from16 v0, v18

    move v1, v4

    if-le v0, v1, :cond_39b

    .line 823
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires newer sdk version #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current version is #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser;->mSdkVersion:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 825
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 826
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 829
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_39b
    if-eqz v31, :cond_452

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSdkCodename:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40a

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSdkCodename:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_3ea

    .line 832
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current platform is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSdkCodename:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 838
    :goto_3e0
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 839
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 835
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_3ea
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but this is a release platform."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    goto :goto_3e0

    .line 842
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_40a
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v6, 0x2710

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 848
    :goto_410
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser;->mSdkVersion:I

    move v4, v0

    move/from16 v0, v16

    move v1, v4

    if-ge v0, v1, :cond_45a

    .line 849
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires older sdk version #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current version is #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser;->mSdkVersion:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 851
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 852
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 845
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_452
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v32

    move-object v1, v4

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_410

    .line 856
    .end local v16           #maxVers:I
    .end local v17           #minCode:Ljava/lang/String;
    .end local v18           #minVers:I
    .end local v31           #targetCode:Ljava/lang/String;
    .end local v32           #targetVers:I
    .end local v34           #val:Landroid/util/TypedValue;
    :cond_45a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d6

    .line 858
    :cond_45f
    const-string v4, "supports-screens"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4ad

    .line 859
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 864
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move v1, v4

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v29

    .line 867
    const/4 v4, 0x2

    move-object/from16 v0, v25

    move v1, v4

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v28

    .line 870
    const/4 v4, 0x3

    move-object/from16 v0, v25

    move v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v27

    .line 873
    const/4 v4, 0x4

    move-object/from16 v0, v25

    move v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v24

    .line 876
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 880
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    .line 882
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d6

    .line 884
    :cond_4ad
    const-string v4, "protected-broadcast"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f7

    .line 885
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v25

    .line 888
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v19

    .line 891
    .restart local v19       #name:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    .line 893
    if-eqz v19, :cond_4f2

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_4f2

    .line 894
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v4, :cond_4de

    .line 895
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 897
    :cond_4de
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f2

    .line 898
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    :cond_4f2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d6

    .line 904
    .end local v19           #name:Ljava/lang/String;
    :cond_4f7
    const-string v4, "instrumentation"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_513

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 905
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v4

    if-nez v4, :cond_d6

    .line 906
    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 909
    :cond_513
    const-string v4, "eat-comment"

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_523

    .line 911
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d6

    .line 921
    :cond_523
    const-string v4, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_d6

    .line 928
    .end local v30           #tagName:Ljava/lang/String;
    :cond_544
    if-nez v14, :cond_55a

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_55a

    .line 929
    const/4 v4, 0x0

    const-string v6, "<manifest> does not contain an <application> or <instrumentation>"

    aput-object v6, p4, v4

    .line 930
    const/16 v4, -0x6d

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 933
    :cond_55a
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v11, v4

    .line 934
    .local v11, NP:I
    const/4 v15, 0x0

    .local v15, ip:I
    :goto_55e
    if-ge v15, v11, :cond_56f

    .line 935
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v21, v4, v15

    .line 937
    .local v21, npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    move v6, v0

    if-lt v4, v6, :cond_5e1

    .line 947
    .end local v21           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_56f
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_588

    .line 948
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 949
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 952
    :cond_588
    if-ltz v29, :cond_593

    if-lez v29, :cond_59b

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_59b

    .line 955
    :cond_593
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 957
    :cond_59b
    if-eqz v28, :cond_5a5

    .line 958
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 960
    :cond_5a5
    if-ltz v27, :cond_5b0

    if-lez v27, :cond_5b8

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_5b8

    .line 963
    :cond_5b0
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 965
    :cond_5b8
    if-ltz v24, :cond_5c3

    if-lez v24, :cond_5cb

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_5cb

    .line 968
    :cond_5c3
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 970
    :cond_5cb
    if-ltz v12, :cond_5d6

    if-lez v12, :cond_5de

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_5de

    .line 973
    :cond_5d6
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_5de
    move-object v4, v5

    .line 976
    goto/16 :goto_2f

    .line 940
    .restart local v21       #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_5e1
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_621

    .line 941
    const-string v4, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Impliciting adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to old pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    :cond_621
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_55e
.end method

.method private parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;III)Z
    .registers 15
    .parameter "owner"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "tag"
    .parameter "sa"
    .parameter "nameRes"
    .parameter "labelRes"
    .parameter "iconRes"

    .prologue
    const/4 v5, 0x0

    .line 1466
    invoke-virtual {p5, p6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1e

    .line 1468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not specify android:name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v5

    move v3, v5

    .line 1491
    :goto_1d
    return v3

    .line 1472
    :cond_1e
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v1, p3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 1474
    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_2e

    move v3, v5

    .line 1475
    goto :goto_1d

    .line 1478
    :cond_2e
    invoke-virtual {p5, p8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1479
    .local v0, iconVal:I
    if-eqz v0, :cond_39

    .line 1480
    iput v0, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 1481
    const/4 v3, 0x0

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1484
    :cond_39
    invoke-virtual {p5, p7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1485
    .local v2, v:Landroid/util/TypedValue;
    if-eqz v2, :cond_4b

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    iput v3, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_4b

    .line 1486
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1489
    :cond_4b
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1491
    const/4 v3, 0x1

    goto :goto_1d
.end method

.method public static parsePackageName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .parameter "packageFilePath"
    .parameter "flags"

    .prologue
    const/4 v11, 0x0

    const-string v10, "PackageParser"

    .line 523
    const/4 v7, 0x0

    .line 524
    .local v7, parser:Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    .line 526
    .local v0, assmgr:Landroid/content/res/AssetManager;
    :try_start_5
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_47

    .line 527
    .end local v0           #assmgr:Landroid/content/res/AssetManager;
    .local v1, assmgr:Landroid/content/res/AssetManager;
    :try_start_a
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    .line 528
    .local v3, cookie:I
    const-string v8, "AndroidManifest.xml"

    invoke-virtual {v1, v3, v8}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_93

    move-result-object v7

    .line 535
    move-object v2, v7

    .line 536
    .local v2, attrs:Landroid/util/AttributeSet;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    .line 537
    .local v5, errors:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 539
    .local v6, packageName:Ljava/lang/String;
    :try_start_19
    invoke-static {v7, v2, p1, v5}, Landroid/content/pm/PackageParser;->parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_84
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_1c} :catch_76

    move-result-object v6

    .line 545
    if-eqz v7, :cond_22

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 546
    :cond_22
    if-eqz v1, :cond_27

    :goto_24
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 548
    :cond_27
    if-nez v6, :cond_90

    .line 549
    const-string v8, "PackageParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsePackageName error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1           #assmgr:Landroid/content/res/AssetManager;
    .restart local v0       #assmgr:Landroid/content/res/AssetManager;
    move-object v8, v11

    .line 552
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v3           #cookie:I
    .end local v5           #errors:[Ljava/lang/String;
    .end local v6           #packageName:Ljava/lang/String;
    :goto_46
    return-object v8

    .line 529
    :catch_47
    move-exception v8

    move-object v4, v8

    .line 530
    .local v4, e:Ljava/lang/Exception;
    :goto_49
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 531
    :cond_4e
    const-string v8, "PackageParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v11

    .line 533
    goto :goto_46

    .line 540
    .end local v0           #assmgr:Landroid/content/res/AssetManager;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #assmgr:Landroid/content/res/AssetManager;
    .restart local v2       #attrs:Landroid/util/AttributeSet;
    .restart local v3       #cookie:I
    .restart local v5       #errors:[Ljava/lang/String;
    .restart local v6       #packageName:Ljava/lang/String;
    :catch_68
    move-exception v4

    .line 541
    .local v4, e:Ljava/io/IOException;
    :try_start_69
    const-string v8, "PackageParser"

    invoke-static {v8, p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_84

    .line 545
    if-eqz v7, :cond_73

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 546
    :cond_73
    if-eqz v1, :cond_27

    goto :goto_24

    .line 542
    .end local v4           #e:Ljava/io/IOException;
    :catch_76
    move-exception v4

    .line 543
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_77
    const-string v8, "PackageParser"

    invoke-static {v8, p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_84

    .line 545
    if-eqz v7, :cond_81

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 546
    :cond_81
    if-eqz v1, :cond_27

    goto :goto_24

    .line 545
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_84
    move-exception v8

    if-eqz v7, :cond_8a

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 546
    :cond_8a
    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 545
    :cond_8f
    throw v8

    :cond_90
    move-object v0, v1

    .end local v1           #assmgr:Landroid/content/res/AssetManager;
    .restart local v0       #assmgr:Landroid/content/res/AssetManager;
    move-object v8, v6

    .line 552
    goto :goto_46

    .line 529
    .end local v0           #assmgr:Landroid/content/res/AssetManager;
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v3           #cookie:I
    .end local v5           #errors:[Ljava/lang/String;
    .end local v6           #packageName:Ljava/lang/String;
    .restart local v1       #assmgr:Landroid/content/res/AssetManager;
    :catch_93
    move-exception v8

    move-object v4, v8

    move-object v0, v1

    .end local v1           #assmgr:Landroid/content/res/AssetManager;
    .restart local v0       #assmgr:Landroid/content/res/AssetManager;
    goto :goto_49
.end method

.method private static parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 587
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    if-eq v2, v3, :cond_c

    if-ne v2, v7, :cond_4

    .line 591
    :cond_c
    if-eq v2, v3, :cond_14

    .line 592
    const-string v3, "No start tag found"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 613
    :goto_13
    return-object v3

    .line 595
    :cond_14
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_18

    .line 597
    :cond_18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "manifest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 598
    const-string v3, "No <manifest> tag"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 599
    goto :goto_13

    .line 601
    :cond_2a
    const-string v3, "package"

    invoke-interface {p1, v5, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, pkgName:Ljava/lang/String;
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3e

    .line 603
    :cond_38
    const-string v3, "<manifest> does not specify package"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 604
    goto :goto_13

    .line 606
    :cond_3e
    invoke-static {v1, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, nameError:Ljava/lang/String;
    if-eqz v0, :cond_6d

    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<manifest> specifies bad package name \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v6

    move-object v3, v5

    .line 610
    goto :goto_13

    .line 613
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_13
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .registers 22
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1100
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1102
    .local v14, perm:Landroid/content/pm/PackageParser$Permission;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1105
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v7, "<permission>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;III)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1110
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1111
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1112
    const/4 v3, 0x0

    .line 1145
    :goto_31
    return-object v3

    .line 1115
    :cond_32
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1117
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v3, :cond_4d

    .line 1118
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1121
    :cond_4d
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 1125
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1129
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1131
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_79

    .line 1132
    const/4 v3, 0x0

    const-string v4, "<permission> does not specify protectionLevel"

    aput-object v4, p5, v3

    .line 1133
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1134
    const/4 v3, 0x0

    goto :goto_31

    .line 1137
    :cond_79
    const-string v13, "<permission>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_94

    .line 1139
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1140
    const/4 v3, 0x0

    goto :goto_31

    .line 1143
    :cond_94
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1145
    goto :goto_31
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .registers 22
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1065
    new-instance v14, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1067
    .local v14, perm:Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1070
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string v7, "<permission-group>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;III)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1075
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1076
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1077
    const/4 v3, 0x0

    .line 1094
    :goto_31
    return-object v3

    .line 1080
    :cond_32
    iget-object v3, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 1084
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1086
    const-string v13, "<permission-group>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1088
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1089
    const/4 v3, 0x0

    goto :goto_31

    .line 1092
    :cond_5a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1094
    goto :goto_31
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .registers 23
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1151
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1153
    .local v14, perm:Landroid/content/pm/PackageParser$Permission;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1156
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v7, "<permission-tree>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;III)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1161
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1162
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1163
    const/4 v3, 0x0

    .line 1191
    :goto_31
    return-object v3

    .line 1166
    :cond_32
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1168
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 1169
    .local v16, index:I
    if-lez v16, :cond_4d

    .line 1170
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v4, 0x2e

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1172
    :cond_4d
    if-gez v16, :cond_72

    .line 1173
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<permission-tree> name has less than three segments: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p5, v3

    .line 1175
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1176
    const/4 v3, 0x0

    goto :goto_31

    .line 1179
    :cond_72
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 1180
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1181
    const/4 v3, 0x1

    iput-boolean v3, v14, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 1183
    const-string v13, "<permission-tree>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1185
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1186
    const/4 v3, 0x0

    goto :goto_31

    .line 1189
    :cond_9a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1191
    goto :goto_31
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .registers 23
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1827
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1830
    .local v14, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_34

    .line 1831
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v9, v0

    const/16 v10, 0x8

    const/4 v11, 0x6

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III[Ljava/lang/String;II)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<provider>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 1841
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    iput-object v14, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 1844
    new-instance v7, Landroid/content/pm/PackageParser$Provider;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    new-instance v4, Landroid/content/pm/ProviderInfo;

    invoke-direct {v4}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v7, v3, v4}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 1845
    .local v7, p:Landroid/content/pm/PackageParser$Provider;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_5e

    .line 1846
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1847
    const/4 v3, 0x0

    .line 1909
    :goto_5d
    return-object v3

    .line 1850
    :cond_5e
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v4, 0x7

    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 1853
    const/16 v3, 0xa

    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v12

    .line 1856
    .local v12, cpname:Ljava/lang/String;
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 1860
    const/4 v3, 0x3

    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    .line 1862
    .local v13, permission:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    .line 1864
    .local v15, str:Ljava/lang/String;
    if-nez v15, :cond_86

    .line 1865
    move-object v15, v13

    .line 1867
    :cond_86
    if-nez v15, :cond_d5

    .line 1868
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 1873
    :goto_93
    const/4 v3, 0x5

    invoke-virtual {v14, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    .line 1875
    if-nez v15, :cond_9b

    .line 1876
    move-object v15, v13

    .line 1878
    :cond_9b
    if-nez v15, :cond_ea

    .line 1879
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 1885
    :goto_a8
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 1889
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 1893
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v14, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 1897
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1899
    if-nez v12, :cond_ff

    .line 1900
    const/4 v3, 0x0

    const-string v4, "<provider> does not incude authorities attribute"

    aput-object v4, p6, v3

    .line 1901
    const/4 v3, 0x0

    goto :goto_5d

    .line 1870
    :cond_d5
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e8

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_e5
    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_93

    :cond_e8
    const/4 v4, 0x0

    goto :goto_e5

    .line 1881
    :cond_ea
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_fd

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_fa
    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_a8

    :cond_fd
    const/4 v4, 0x0

    goto :goto_fa

    .line 1903
    :cond_ff
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    .line 1905
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11a

    .line 1906
    const/4 v3, 0x0

    goto/16 :goto_5d

    :cond_11a
    move-object v3, v7

    .line 1909
    goto/16 :goto_5d
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .registers 29
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outInfo"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1916
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 1919
    .local v14, outerDepth:I
    :cond_4
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_29e

    const/4 v5, 0x3

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_1a

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v14, :cond_29e

    .line 1921
    :cond_1a
    const/4 v5, 0x3

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_4

    const/4 v5, 0x4

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_4

    .line 1925
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "meta-data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1926
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object v9, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    iput-object v0, v1, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_4

    .line 1928
    const/4 v5, 0x0

    .line 2080
    :goto_4d
    return v5

    .line 1931
    :cond_4e
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "grant-uri-permission"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_122

    .line 1932
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 1935
    .local v19, sa:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    .line 1937
    .local v15, pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1939
    .local v20, str:Ljava/lang/String;
    if-eqz v20, :cond_7a

    .line 1940
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 1943
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_7a
    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1945
    if-eqz v20, :cond_8e

    .line 1946
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 1949
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_8e
    const/4 v5, 0x2

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1951
    if-eqz v20, :cond_a2

    .line 1952
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x2

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 1955
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_a2
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 1957
    if-eqz v15, :cond_f3

    .line 1958
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v5, :cond_d1

    .line 1959
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/os/PatternMatcher;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 1960
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    .line 1968
    :goto_c4
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 1979
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 1962
    :cond_d1
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v11, v5

    .line 1963
    .local v11, N:I
    add-int/lit8 v5, v11, 0x1

    new-array v13, v5, [Landroid/os/PatternMatcher;

    .line 1964
    .local v13, newp:[Landroid/os/PatternMatcher;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1965
    aput-object v15, v13, v11

    .line 1966
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iput-object v13, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    goto :goto_c4

    .line 1971
    .end local v11           #N:I
    .end local v13           #newp:[Landroid/os/PatternMatcher;
    :cond_f3
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    const-string v5, "PackageParser"

    const-string v6, "No path, pathPrefix, or pathPattern for <path-permission>"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 1981
    .end local v15           #pa:Landroid/os/PatternMatcher;
    .end local v19           #sa:Landroid/content/res/TypedArray;
    .end local v20           #str:Ljava/lang/String;
    :cond_122
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "path-permission"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25a

    .line 1982
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 1985
    .restart local v19       #sa:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    .line 1987
    .local v15, pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v17

    .line 1989
    .local v17, permission:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v18

    .line 1991
    .local v18, readPermission:Ljava/lang/String;
    if-nez v18, :cond_14e

    .line 1992
    move-object/from16 v18, v17

    .line 1994
    :cond_14e
    const/4 v5, 0x2

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v22

    .line 1996
    .local v22, writePermission:Ljava/lang/String;
    if-nez v22, :cond_15a

    .line 1997
    move-object/from16 v22, v17

    .line 2000
    :cond_15a
    const/4 v12, 0x0

    .line 2001
    .local v12, havePerm:Z
    if-eqz v18, :cond_162

    .line 2002
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    .line 2003
    const/4 v12, 0x1

    .line 2005
    :cond_162
    if-eqz v22, :cond_169

    .line 2006
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v22

    .line 2007
    const/4 v12, 0x1

    .line 2010
    :cond_169
    if-nez v12, :cond_19a

    .line 2012
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    const-string v5, "PackageParser"

    const-string v6, "No readPermission or writePermssion for <path-permission>"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2021
    :cond_19a
    const/4 v5, 0x3

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v16

    .line 2023
    .local v16, path:Ljava/lang/String;
    if-eqz v16, :cond_1b2

    .line 2024
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2028
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_1b2
    const/4 v5, 0x4

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v16

    .line 2030
    if-eqz v16, :cond_1ca

    .line 2031
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2035
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_1ca
    const/4 v5, 0x5

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v16

    .line 2037
    if-eqz v16, :cond_1e2

    .line 2038
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x2

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2042
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_1e2
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2044
    if-eqz v15, :cond_22b

    .line 2045
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v5, :cond_209

    .line 2046
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/pm/PathPermission;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 2047
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    .line 2065
    :goto_204
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2049
    :cond_209
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v11, v5

    .line 2050
    .restart local v11       #N:I
    add-int/lit8 v5, v11, 0x1

    new-array v13, v5, [Landroid/content/pm/PathPermission;

    .line 2051
    .local v13, newp:[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2052
    aput-object v15, v13, v11

    .line 2053
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iput-object v13, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_204

    .line 2057
    .end local v11           #N:I
    .end local v13           #newp:[Landroid/content/pm/PathPermission;
    :cond_22b
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const-string v5, "PackageParser"

    const-string v6, "No path, pathPrefix, or pathPattern for <path-permission>"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2069
    .end local v12           #havePerm:Z
    .end local v15           #pa:Landroid/content/pm/PathPermission;
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #permission:Ljava/lang/String;
    .end local v18           #readPermission:Ljava/lang/String;
    .end local v19           #sa:Landroid/content/res/TypedArray;
    .end local v22           #writePermission:Ljava/lang/String;
    :cond_25a
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <provider>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 2080
    :cond_29e
    const/4 v5, 0x1

    goto/16 :goto_4d
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .registers 28
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2086
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 2089
    .local v17, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_33

    .line 2090
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x6

    const/4 v11, 0x4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III[Ljava/lang/String;II)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<service>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 2100
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2103
    new-instance v16, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    new-instance v4, Landroid/content/pm/ServiceInfo;

    invoke-direct {v4}, Landroid/content/pm/ServiceInfo;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 2104
    .local v16, s:Landroid/content/pm/PackageParser$Service;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_64

    .line 2105
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 2106
    const/4 v3, 0x0

    .line 2165
    :goto_63
    return-object v3

    .line 2109
    :cond_64
    const/4 v3, 0x5

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    .line 2111
    .local v18, setExported:Z
    if-eqz v18, :cond_7f

    .line 2112
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 2116
    :cond_7f
    const/4 v3, 0x3

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v19

    .line 2118
    .local v19, str:Ljava/lang/String;
    if-nez v19, :cond_ea

    .line 2119
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 2124
    :goto_97
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 2126
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 2129
    .local v15, outerDepth:I
    :cond_9e
    :goto_9e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v3, 0x1

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_178

    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_b4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_178

    .line 2131
    :cond_b4
    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_9e

    const/4 v3, 0x4

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_9e

    .line 2135
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent-filter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 2136
    new-instance v8, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 2137
    .local v8, intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_102

    .line 2138
    const/4 v3, 0x0

    goto/16 :goto_63

    .line 2121
    .end local v8           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .end local v15           #outerDepth:I
    .end local v20           #type:I
    :cond_ea
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_100

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_fd
    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_97

    :cond_100
    const/4 v4, 0x0

    goto :goto_fd

    .line 2141
    .restart local v8       #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .restart local v15       #outerDepth:I
    .restart local v20       #type:I
    :cond_102
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 2142
    .end local v8           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_10b
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 2143
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object v13, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_9e

    .line 2145
    const/4 v3, 0x0

    goto/16 :goto_63

    .line 2149
    :cond_134
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <service>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9e

    .line 2161
    :cond_178
    if-nez v18, :cond_18d

    .line 2162
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_191

    const/4 v4, 0x1

    :goto_18b
    iput-boolean v4, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    :cond_18d
    move-object/from16 v3, v16

    .line 2165
    goto/16 :goto_63

    .line 2162
    :cond_191
    const/4 v4, 0x0

    goto :goto_18b
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .registers 1
    .parameter "compatibilityModeEnabled"

    .prologue
    .line 2820
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 2821
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .registers 5
    .parameter "str"

    .prologue
    .line 620
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 621
    .local v0, N:I
    new-array v2, v0, [B

    .line 622
    .local v2, sig:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 623
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 625
    :cond_13
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v3
.end method

.method private static validateName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .parameter "name"
    .parameter "requiresSeparator"

    .prologue
    .line 556
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 557
    .local v0, N:I
    const/4 v3, 0x0

    .line 558
    .local v3, hasSep:Z
    const/4 v2, 0x1

    .line 559
    .local v2, front:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, v0, :cond_50

    .line 560
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 561
    .local v1, c:C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_15

    const/16 v5, 0x7a

    if-le v1, v5, :cond_1d

    :cond_15
    const/16 v5, 0x41

    if-lt v1, v5, :cond_21

    const/16 v5, 0x5a

    if-gt v1, v5, :cond_21

    .line 562
    :cond_1d
    const/4 v2, 0x0

    .line 559
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 565
    :cond_21
    if-nez v2, :cond_2f

    .line 566
    const/16 v5, 0x30

    if-lt v1, v5, :cond_2b

    const/16 v5, 0x39

    if-le v1, v5, :cond_1e

    :cond_2b
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_1e

    .line 570
    :cond_2f
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_36

    .line 571
    const/4 v3, 0x1

    .line 572
    const/4 v2, 0x1

    .line 573
    goto :goto_1e

    .line 575
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 577
    .end local v1           #c:C
    :goto_4f
    return-object v5

    :cond_50
    if-nez v3, :cond_54

    if-nez p1, :cond_56

    :cond_54
    const/4 v5, 0x0

    goto :goto_4f

    :cond_56
    const-string v5, "must have at least one \'.\' separator"

    goto :goto_4f
.end method


# virtual methods
.method public collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 23
    .parameter "pkg"
    .parameter "flags"

    .prologue
    .line 392
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 395
    const/4 v15, 0x0

    .line 396
    .local v15, readBuffer:[B
    sget-object v18, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v18

    .line 397
    :try_start_c
    sget-object v16, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 398
    .local v16, readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v16, :cond_1d

    .line 399
    const/16 v17, 0x0

    sput-object v17, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 400
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object v15, v0

    .line 402
    :cond_1d
    if-nez v15, :cond_2e

    .line 403
    const/16 v17, 0x2000

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v15, v0

    .line 404
    new-instance v16, Ljava/lang/ref/WeakReference;

    .end local v16           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 406
    .restart local v16       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_2e
    monitor-exit v18
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_96

    .line 409
    :try_start_2f
    new-instance v12, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 411
    .local v12, jarFile:Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 413
    .local v5, certs:[Ljava/security/cert/Certificate;
    and-int/lit8 v17, p2, 0x1

    if-eqz v17, :cond_99

    .line 418
    const-string v17, "AndroidManifest.xml"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v11

    .line 419
    .local v11, jarEntry:Ljava/util/jar/JarEntry;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 420
    if-nez v5, :cond_185

    .line 421
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 425
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_93
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2f .. :try_end_93} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_93} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_93} :catch_257

    .line 426
    const/16 v17, 0x0

    .line 519
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v11           #jarEntry:Ljava/util/jar/JarEntry;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :goto_95
    return v17

    .line 406
    .end local v16           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :catchall_96
    move-exception v17

    :try_start_97
    monitor-exit v18
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v17

    .line 442
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    .restart local v16       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_99
    :try_start_99
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 443
    .local v7, entries:Ljava/util/Enumeration;
    :cond_9d
    :goto_9d
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_185

    .line 444
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/jar/JarEntry;

    .line 445
    .local v13, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_9d

    .line 446
    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "META-INF/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9d

    .line 447
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v14

    .line 454
    .local v14, localCerts:[Ljava/security/cert/Certificate;
    if-nez v14, :cond_106

    .line 455
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 459
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 460
    const/16 v17, 0x0

    goto :goto_95

    .line 461
    :cond_106
    if-nez v5, :cond_10a

    .line 462
    move-object v5, v14

    goto :goto_9d

    .line 465
    :cond_10a
    const/4 v9, 0x0

    .local v9, i:I
    :goto_10b
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_9d

    .line 466
    const/4 v8, 0x0

    .line 467
    .local v8, found:Z
    const/4 v10, 0x0

    .local v10, j:I
    :goto_116
    move-object v0, v14

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_12e

    .line 468
    aget-object v17, v5, v9

    if-eqz v17, :cond_17f

    aget-object v17, v5, v9

    aget-object v18, v14, v10

    invoke-virtual/range {v17 .. v18}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17f

    .line 470
    const/4 v8, 0x1

    .line 474
    :cond_12e
    if-eqz v8, :cond_13e

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_182

    .line 475
    :cond_13e
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has mismatched certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 479
    const/16 v17, -0x68

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 480
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 467
    :cond_17f
    add-int/lit8 v10, v10, 0x1

    goto :goto_116

    .line 465
    :cond_182
    add-int/lit8 v9, v9, 0x1

    goto :goto_10b

    .line 486
    .end local v7           #entries:Ljava/util/Enumeration;
    .end local v8           #found:Z
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v13           #je:Ljava/util/jar/JarEntry;
    .end local v14           #localCerts:[Ljava/security/cert/Certificate;
    :cond_185
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 488
    sget-object v17, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v17
    :try_end_18b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_99 .. :try_end_18b} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_18b} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_99 .. :try_end_18b} :catch_257

    .line 489
    :try_start_18b
    sput-object v16, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 490
    monitor-exit v17
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_1c0

    .line 492
    if-eqz v5, :cond_1f5

    :try_start_190
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_1f5

    .line 493
    array-length v4, v5

    .line 494
    .local v4, N:I
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 495
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_1a8
    if-ge v9, v4, :cond_289

    .line 496
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/pm/Signature;

    aget-object v19, v5, v9

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v18, v17, v9
    :try_end_1bd
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_190 .. :try_end_1bd} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_1bd} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_190 .. :try_end_1bd} :catch_257

    .line 495
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a8

    .line 490
    .end local v4           #N:I
    .end local v9           #i:I
    :catchall_1c0
    move-exception v18

    :try_start_1c1
    monitor-exit v17
    :try_end_1c2
    .catchall {:try_start_1c1 .. :try_end_1c2} :catchall_1c0

    :try_start_1c2
    throw v18
    :try_end_1c3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1c2 .. :try_end_1c3} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1c3} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_1c2 .. :try_end_1c3} :catch_257

    .line 505
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :catch_1c3
    move-exception v17

    move-object/from16 v6, v17

    .line 506
    .local v6, e:Ljava/security/cert/CertificateEncodingException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/16 v17, -0x69

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 508
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 500
    .end local v6           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    :cond_1f5
    :try_start_1f5
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_221
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1f5 .. :try_end_221} :catch_1c3
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_221} :catch_225
    .catch Ljava/lang/RuntimeException; {:try_start_1f5 .. :try_end_221} :catch_257

    .line 503
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 509
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :catch_225
    move-exception v17

    move-object/from16 v6, v17

    .line 510
    .local v6, e:Ljava/io/IOException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    const/16 v17, -0x69

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 512
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 513
    .end local v6           #e:Ljava/io/IOException;
    :catch_257
    move-exception v17

    move-object/from16 v6, v17

    .line 514
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    const/16 v17, -0x66

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 516
    const/16 v17, 0x0

    goto/16 :goto_95

    .line 519
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v4       #N:I
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v9       #i:I
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    :cond_289
    const/16 v17, 0x1

    goto/16 :goto_95
.end method

.method public getParseError()I
    .registers 2

    .prologue
    .line 304
    iget v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    return v0
.end method

.method public parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;
    .registers 23
    .parameter "sourceFile"
    .parameter "destFileName"
    .parameter "metrics"
    .parameter "flags"

    .prologue
    .line 309
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 311
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 312
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_3c

    .line 313
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping dir: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/16 v15, -0x64

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 315
    const/4 v15, 0x0

    .line 388
    :goto_3b
    return-object v15

    .line 317
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/content/pm/PackageParser;->isPackageFilename(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_75

    and-int/lit8 v15, p4, 0x4

    if-eqz v15, :cond_75

    .line 319
    and-int/lit8 v15, p4, 0x1

    if-nez v15, :cond_6c

    .line 322
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping non-package file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_6c
    const/16 v15, -0x64

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 325
    const/4 v15, 0x0

    goto :goto_3b

    .line 328
    :cond_75
    and-int/lit8 v15, p4, 0x2

    if-eqz v15, :cond_97

    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Scanning package: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_97
    const/4 v12, 0x0

    .line 332
    .local v12, parser:Landroid/content/res/XmlResourceParser;
    const/4 v6, 0x0

    .line 333
    .local v6, assmgr:Landroid/content/res/AssetManager;
    const/4 v5, 0x1

    .line 335
    .local v5, assetError:Z
    :try_start_9a
    new-instance v7, Landroid/content/res/AssetManager;

    invoke-direct {v7}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9f} :catch_1ac

    .line 336
    .end local v6           #assmgr:Landroid/content/res/AssetManager;
    .local v7, assmgr:Landroid/content/res/AssetManager;
    :try_start_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v7, v15}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v8

    .line 337
    .local v8, cookie:I
    if-eqz v8, :cond_c3

    .line 338
    const-string v15, "AndroidManifest.xml"

    invoke-virtual {v7, v8, v15}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_af} :catch_e2

    move-result-object v12

    .line 339
    const/4 v5, 0x0

    :goto_b1
    move-object v6, v7

    .line 347
    .end local v7           #assmgr:Landroid/content/res/AssetManager;
    .end local v8           #cookie:I
    .restart local v6       #assmgr:Landroid/content/res/AssetManager;
    :goto_b2
    if-eqz v5, :cond_108

    .line 348
    if-eqz v6, :cond_b9

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 349
    :cond_b9
    const/16 v15, -0x65

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 350
    const/4 v15, 0x0

    goto/16 :goto_3b

    .line 341
    .end local v6           #assmgr:Landroid/content/res/AssetManager;
    .restart local v7       #assmgr:Landroid/content/res/AssetManager;
    .restart local v8       #cookie:I
    :cond_c3
    :try_start_c3
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed adding asset path:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_e1} :catch_e2

    goto :goto_b1

    .line 343
    .end local v8           #cookie:I
    :catch_e2
    move-exception v15

    move-object v9, v15

    move-object v6, v7

    .line 344
    .end local v7           #assmgr:Landroid/content/res/AssetManager;
    .restart local v6       #assmgr:Landroid/content/res/AssetManager;
    .local v9, e:Ljava/lang/Exception;
    :goto_e5
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to read AndroidManifest.xml of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b2

    .line 352
    .end local v9           #e:Ljava/lang/Exception;
    :cond_108
    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/String;

    .line 353
    .local v11, errorText:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 354
    .local v13, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v10, 0x0

    .line 357
    .local v10, errorException:Ljava/lang/Exception;
    :try_start_10d
    new-instance v14, Landroid/content/res/Resources;

    const/4 v15, 0x0

    move-object v0, v14

    move-object v1, v6

    move-object/from16 v2, p3

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 358
    .local v14, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v12

    move/from16 v3, p4

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_122} :catch_152

    move-result-object v13

    .line 365
    .end local v14           #res:Landroid/content/res/Resources;
    :goto_123
    if-nez v13, :cond_192

    .line 366
    if-eqz v10, :cond_15d

    .line 367
    const-string v15, "PackageParser"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    :goto_136
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 374
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser;->mParseError:I

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_14f

    .line 376
    const/16 v15, -0x6c

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 378
    :cond_14f
    const/4 v15, 0x0

    goto/16 :goto_3b

    .line 359
    :catch_152
    move-exception v15

    move-object v9, v15

    .line 360
    .restart local v9       #e:Ljava/lang/Exception;
    move-object v10, v9

    .line 361
    const/16 v15, -0x66

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_123

    .line 369
    .end local v9           #e:Ljava/lang/Exception;
    :cond_15d
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    .line 381
    :cond_192
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 382
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 384
    iget-object v15, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p2

    move-object v1, v15

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 385
    iget-object v15, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p2

    move-object v1, v15

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 386
    const/4 v15, 0x0

    iput-object v15, v13, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v15, v13

    .line 388
    goto/16 :goto_3b

    .line 343
    .end local v10           #errorException:Ljava/lang/Exception;
    .end local v11           #errorText:[Ljava/lang/String;
    .end local v13           #pkg:Landroid/content/pm/PackageParser$Package;
    :catch_1ac
    move-exception v15

    move-object v9, v15

    goto/16 :goto_e5
.end method

.method public setSdkVersion(ILjava/lang/String;)V
    .registers 3
    .parameter "sdkVersion"
    .parameter "codename"

    .prologue
    .line 156
    iput p1, p0, Landroid/content/pm/PackageParser;->mSdkVersion:I

    .line 157
    iput-object p2, p0, Landroid/content/pm/PackageParser;->mSdkCodename:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .registers 2
    .parameter "procs"

    .prologue
    .line 152
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 153
    return-void
.end method
