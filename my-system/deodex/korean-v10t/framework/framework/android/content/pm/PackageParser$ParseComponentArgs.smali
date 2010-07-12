.class Landroid/content/pm/PackageParser$ParseComponentArgs;
.super Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParseComponentArgs"
.end annotation


# instance fields
.field final enabledRes:I

.field flags:I

.field final processRes:I

.field final sepProcesses:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III[Ljava/lang/String;II)V
    .registers 9
    .parameter "_owner"
    .parameter "_outError"
    .parameter "_nameRes"
    .parameter "_labelRes"
    .parameter "_iconRes"
    .parameter "_sepProcesses"
    .parameter "_processRes"
    .parameter "_enabledRes"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III)V

    .line 127
    iput-object p6, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    .line 128
    iput p7, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    .line 129
    iput p8, p0, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    .line 130
    return-void
.end method
